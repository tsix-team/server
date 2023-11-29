

import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

const model = {modelName :'order',what: 'đơn hàng'}
const modelDetail = {modelName :'order_detail',what: 'đơn hàng chi tiết'}
const modelPd = { modelName: 'product', what: 'sản phẩm' }
const modelUser = {modelName :'user',what: 'tài khoản'}

/**
 * - lấy thông tin user, tên, số đt, địa chỉ và cập nhật
 * - tạo đơn hàng: có id_order auto, id_user nhập vào hoặc lấy từ client, 
 *      ghi chú đơn hàng từ form, trạng thái mặt định 0:chưa sử lý\ 1:đang giao\ 2:hoàn thành\ 3: bị hủy
 *      tổng tiền: tổng tiền chi tiết 
 * - sau đó tạo đơn hàng chi tiết:  id_order như trên, có mã sp, số lượng, tổng tiền: truy vấn với id_pd lấy price nhân với số lượng
 */

export const addOrder = async (req, res) =>{
    const {id_user,note,  id_pd,qt,  name,phone,address} = req.body
    //id_pd = [1,3,4,...]
    try {
        const user = await crudService.getOne({id_user},modelUser)
        const dataUser = user.response

        const products = await crudService.getAllWhere(id_pd,modelPd)
        const dataPd = products.response
        const totalAmount = dataPd.reduce((total,pd)=>{total+(pd.price*qt)},0)
        const createOrder = {id_user,note,status:0,total_amount:totalAmount}
        const responseOrder = await crudService.addRaw(createOrder, model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const deleteOrder = async (req, res) =>{
    const {id} = req.params
    console.log(id);
    try {
        if (!id) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const finder = {id_cate:id}
        const response = await crudService.deleteOne(finder,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const getOrder = async (req, res) =>{
    try {
        const response = await crudService.getAll(model)
        console.log('res from controller: ',response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const getByIdOrder = async (req, res) =>{
    try {
        const finder = {id_cate:req.params.id}
        const response = await crudService.getOne(finder,model)
        console.log('res from controller: ',response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const updateOrder = async (req, res) =>{
    const {id} = req.params
    const formData = {...req.body}

    try {
        if (!formData.name_cate||!id) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const finder = {id_cate:id}
        const objUpdate = {name_cate:formData.name_cate, slug:slugger(formData.name_cate)}
        const response = await crudService.update(finder,objUpdate,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
