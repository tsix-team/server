

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
    const { id_user, note, payment, orderList, name, phone, address } = req.body
    //id_pd = [1,3,4,...]
    //orderList = [{id_pd:1, qt:2},{},{}]
    try {
        const user = await crudService.getOne({ id_user }, modelUser)
        const dataUser = user.response
        if (dataUser.phone) {

        }
        const listIdPd = orderList.map(pd => pd.id_pd)
        const products = await crudService.getAllWhere(listIdPd, modelPd)
        const dataPd = products.response
        const pdInfo = {};

        dataPd.forEach(pd => {
            const { id_pd, price } = pd;
            pdInfo[id_pd] = { id_pd, price };
        });

        const totalAmountByQuantity = orderList.reduce((total, pdOder) => {
            const { id_pd, quantity } = pdOder;
            if (pdInfo[id_pd]) {
                const totalByOnePd = pdInfo[id_pd].price * quantity;
                return total + totalByOnePd;
            }
            return total;
        }, 0);

        const createOrder = { id_user, note, payment, status: 0, total_amount: totalAmountByQuantity }
        const responseOrder = await crudService.addRaw(createOrder, model)
        const id_order = responseOrder.response.id_order
        const createOrderDetail = orderList.map(order => {
           return {id_order,id_pd:order.id_pd,quantity:order.qt}
        })
        const responseOrderDetail = await crudService.addMulti(createOrderDetail,modelDetail)
        const updateInfoUser = await crudService.update({id_user},{name,phone,address},modelUser)
        console.log('totalAmountByQuantity createOrder responseOrder createOrderDetail responseOrderDetail updateInfoUser',totalAmountByQuantity,createOrder,responseOrder,createOrderDetail, responseOrderDetail,updateInfoUser);
        return res.status(200).json(createOrder)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
export const deleteOrder = async (req, res) => {
    const { id } = req.params
    console.log(id);
    try {
        if (!id) return res.status(400).json({
            err: 1,
            msg: 'thiếu gì đó rồi!'
        })
        const finder = { id_cate: id }
        const response = await crudService.deleteOne(finder, model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
export const getOrder = async (req, res) => {
    try {
        const response = await crudService.getAll(model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
export const getByIdOrder = async (req, res) => {
    try {
        const finder = { id_cate: req.params.id }
        const response = await crudService.getOne(finder, model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
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

    try {
        if (!formData.name_cate || !id) return res.status(400).json({
            err: 1,
            msg: 'thiếu gì đó rồi!'
        })
        const finder = { id_cate: id }
        const objUpdate = { name_cate: formData.name_cate, slug: slugger(formData.name_cate) }
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
