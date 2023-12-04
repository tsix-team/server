

import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

const model = { modelName: 'order', what: 'đơn hàng' }
const modelDetail = { modelName: 'order_detail', what: 'đơn hàng chi tiết' }
const modelPd = { modelName: 'product', what: 'sản phẩm' }
const modelUser = { modelName: 'user', what: 'tài khoản' }

/**
 * - lấy thông tin user, tên, số đt, địa chỉ và cập nhật
 * - tạo đơn hàng: có id_order auto, id_user nhập vào hoặc lấy từ client, 
 *      ghi chú đơn hàng từ form, trạng thái mặt định 0:chưa sử lý\ 1:đang giao\ 2:hoàn thành\ 3: bị hủy
 *      tổng tiền: tổng tiền chi tiết 
 * - sau đó tạo đơn hàng chi tiết:  id_order như trên, có mã sp, số lượng
 */

export const addOrder = async (req, res) => {
    const { id_user, note, payment, name, phone, address } = req.body
    //id_pd = [1,3,4,...]
    //orderList = [{id_pd:1, qt:2},{},{}]
    try {
        //const orderList = JSON.parse(orderList1.replace(/(['"])?([a-zA-Z0-9_]+)(['"])?:/g, '"$2":'))
        const orderList = [{ id_pd: 10, qt: 5 }, { id_pd: 12, qt: 2 }]
        // const user = await crudService.getOne({ id_user }, modelUser)
        // const dataUser = user.response
        // if (dataUser && phone || dataUser && address) {
        //     await crudService.update({ id_user }, { phone, name, address }, modelUser)
        // console.log('debugggggg00000000:');
        // }
        const listIdPd = orderList.map(item => item.id_pd)
        console.log('debugggggg12 listIdPd:', listIdPd);
        const products = await crudService.getAllWhere({ id_pd: listIdPd }, modelPd)
        console.log('debugggggg0000000001111:');
        const dataPd = products.response
        const pdInfo = {};
        console.log('debugggggg11111 dataPd:', dataPd);
        dataPd.forEach(pd => {
            const { id_pd, price } = pd;
            pdInfo[id_pd] = { id_pd, price };
        });
        console.log('debugggggg222');

        const totalAmountByQuantity = orderList.reduce((total, pdOder) => {
            const { id_pd, qt } = pdOder;
            if (pdInfo[id_pd]) {
                const totalByOnePd = pdInfo[id_pd].price * qt;
                return total + totalByOnePd;
            }
            return total;
        }, 0);
        console.log('debugggggg1113333 totalAmountByQuantity:', totalAmountByQuantity);

        const createOrder = { id_user, note, payment, status: 0, total_amount: totalAmountByQuantity }
        const responseOrder = await crudService.addRaw(createOrder, model)
        console.log('debugggggg444444444:');

        const id_order = responseOrder.response.id_order
        const createOrderDetail = orderList.map(order => {
            return { id_order, id_pd: order.id_pd, quantity: order.qt }
        })
        console.log('debugggggg4445 createOrderDetail:', createOrderDetail);
        const responseOrderDetail = await crudService.addMulti(createOrderDetail, modelDetail)
        console.log('debugggggg155555555:');
        const updateInfoUser = await crudService.update({ id_user }, { name, phone, address }, modelUser)
        console.log('totalAmountByQuantity createOrder responseOrder createOrderDetail responseOrderDetail updateInfoUser', totalAmountByQuantity, createOrder, responseOrder, createOrderDetail, responseOrderDetail, updateInfoUser);
        return res.status(200).json(createOrder)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}

export const getOrder = async (req, res) => {
    const status = req.query.status || 0
    const payment = req.query.payment || undefined
    const page = req.query.page || 1 // Trang thứ 2
    const size = req.query.size || 20 // Số bản ghi trên mỗi trang
    const offset = (page - 1) * size // Tính offset
    const limit = size * 1
    try {
        const order = await crudService.getLimit({ where: { status }, offset, limit }, model)
        const orders = order.response
        if (orders) {
            const detail = await crudService.getAll(modelDetail)
            const details = detail.response

            const listIdPd = details?.map(detail => detail.id_pd)
            const products = await crudService.getAllWhere({ id_pd: listIdPd }, modelPd)
            const dataProducts = products.response
            console.log('listIdPd, dataProducts:', listIdPd, dataProducts);

            const listIdUser = orders?.map(order => order.id_user)
            const users = await crudService.getAllWhere({ id_user: listIdUser }, modelUser)
            const dataUsers = users.response

            console.log('dataUsers, listIdUser:', dataUsers, listIdUser);
            //listIdPd =[1,5,3,7,2,1]

            //const listIdPdOrder = details.map(detail => pd.id_pd == order.id_pd)
            const orders_details = orders.map(order => {

                //listIdPdOrder =[3,2]
                const userOrder = dataUsers?.filter(user => user.id_user == order.id_user)
                const orderDetails = details?.filter(detail => detail.id_order === order.id_order);
                const order_list = orderDetails?.map(({ id_order, createdAt, updatedAt, ...rest }) => rest); // Loại bỏ id_order trong chi tiết đơn hàng
                const namePds = []
                const listPdOrder = []
                console.log('orderDetails ,order_list,, listDataPdOrder: ', orderDetails, order_list);
                order_list?.forEach((pdOrder) => {
                    const dataPdOrder = dataProducts?.filter(pd => pd.id_pd == pdOrder.id_pd)
                    listPdOrder.push({
                        id_pd: dataPdOrder[0].id_pd,
                        name_pd: dataPdOrder[0]?.name_pd,
                        image: dataPdOrder[0]?.image,
                        price: dataPdOrder[0]?.price,
                        quantity: pdOrder.quantity,
                        totalThisPd: dataPdOrder[0]?.price * pdOrder.quantity
                    })
                    namePds.push(dataPdOrder[0]?.name_pd)
                })
                return {
                    ...order, phone: userOrder[0]?.phone, address: userOrder[0]?.address, name: userOrder[0]?.name, namePds: namePds.join(', '),
                    listPdOrder
                };
            });
            //console.log('orders_details', orders_details)
            return res.status(200).json({
                err: orders_details ? 0 : 2,
                msg: orders_details ? 'Lấy tất cả order thành công: ' : 'Có lỗi xảy ra',
                response: orders_details
            })
        } else {
            return res.status(200).json('undefined order')

        }
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
export const getByIdOrder = async (req, res) => {
    const finder = { id_order: req.params.id }
    try {
        const order = await crudService.getOne(finder, model)
        const orders = order.response
        if (orders) {
            const detail = await crudService.getAllWhere(finder, modelDetail)
            const details = detail.response

            const listIdPd = details?.map(detail => detail.id_pd)
            const products = await crudService.getAllWhere({ id_pd: listIdPd }, modelPd)
            const dataProducts = products.response
            console.log('orders, listIdPd, dataProducts:', orders, listIdPd, dataProducts);

            const id_user = orders.id_user
            const users = await crudService.getOne({ id_user }, modelUser)
            const dataUsers = users.response

            console.log('dataUsers, i:', dataUsers, id_user);
            //listIdPd =[1,5,3,7,2,1]

            //const listIdPdOrder = details.map(detail => pd.id_pd == order.id_pd)

            //const orderDetails = details?.filter(detail => detail.id_order === order.id_order);
            const order_list = details?.map(({ id_order, createdAt, updatedAt, ...rest }) => rest); // Loại bỏ id_order trong chi tiết đơn hàng
            const namePds = []
            const listPdOrder = []
            console.log('details ,order_list,, listDataPdOrder: ', details, order_list);
            order_list?.forEach((pdOrder) => {
                const dataPdOrder = dataProducts?.filter(pd => pd.id_pd == pdOrder.id_pd)
                listPdOrder.push({
                    id_pd: dataPdOrder[0].id_pd,
                    name_pd: dataPdOrder[0]?.name_pd,
                    image: dataPdOrder[0]?.image,
                    price: dataPdOrder[0]?.price,
                    quantity: pdOrder.quantity,
                    totalThisPd: dataPdOrder[0]?.price * pdOrder.quantity
                })
                namePds.push(dataPdOrder[0]?.name_pd)
            })
            const dataOrder = {
                ...orders, phone: dataUsers?.phone, address: dataUsers?.address, name: dataUsers?.name, namePds: namePds.join(', '),
                listPdOrder
            };
            //console.log('orders_details', orders_details)
            return res.status(200).json({
                err: dataOrder ? 0 : 2,
                msg: dataOrder ? 'Lấy tất cả order thành công: ' : 'Có lỗi xảy ra',
                response: dataOrder
            })
        } else {
            return res.status(200).json('undefined order')

        }
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
export const updateOrder = async (req, res) => {
    const { id } = req.params
    const formData = { ...req.body }
    const status = req.query.status || formData.status
    try {
        // if (!formData.status || !id) return res.status(400).json({
        //     err: 1,
        //     msg: 'thiếu gì đó rồi!'
        // })
        const finder = { id_order: id }
        const objUpdate = { payment: formData.payment, status: status, note: formData.note }
        const response = await crudService.update(finder, objUpdate, model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
export const deleteOrder = async (req, res) => {
    const { id } = req.params
    try {
        const finder = { id_order: id }
        const response = await crudService.deleteOne(finder, model)
        const response2 = await crudService.deleteOne(finder, modelDetail)
        console.log(response);
        return res.status(200).json({
            response, response2
        })
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}