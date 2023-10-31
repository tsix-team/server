
import * as crudService from '../services/crudService'
import bcrypt from 'bcryptjs'
import uniqid from 'uniqid'

const hashPassword = password => bcrypt.hashSync(password, bcrypt.genSaltSync(10))
const model = {modelName :'user',what: 'tài khoản'}

//create | update | getOne | getAll | delete

export const addUser = async (req, res) =>{
    const { email, password} = req.body
    console.log(email, password);
    try {
        if ( !email || !password) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const finder = {email:email}
        const creater = {id_user: uniqid.time(), email:email, password: hashPassword(password)}
        const response = await crudService.add(finder,creater,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const removeUser = async (req, res) =>{
    const finder = {id_user:req.params.id}
    console.log(finder);
    try {
        if (!finder) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const response = await crudService.deleteOne(finder,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const getAllUser = async (req, res) =>{
    const page = req.query.page || 1 // Trang thứ 2
    const size = req.query.size || 5 // Số bản ghi trên mỗi trang

    const offset = (page - 1) * size // Tính offset
    const limit = size*1
    try {
        const response = await crudService.getLimit({offset,limit},model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const getOneUser = async (req, res) =>{
    try {
        const finder = {id_user:req.params.id}
        const response = await crudService.getOne(finder,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const updateUser = async (req, res) =>{
    const dataForm = {
        email:req.body.email,
        password:req.body.password,
        role:req.body.role || 0,
        status:req.body.status || 0
    }
    console.log(dataForm);
    try {
        if (!dataForm.email||!dataForm.password) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const finder = {id_user:req.params.id}
        
        const objUpdate = {email:dataForm.email, password: hashPassword(dataForm.password),role:dataForm.role,status:dataForm.status}
        const response = await crudService.update(finder,objUpdate,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const banUser = async (req, res) =>{
    const {id} = req.params
    console.log(dataForm);
    try {
        const finder = {id_user:id}
        const objUpdate = {status:-1}
        const response = await crudService.update(finder,objUpdate,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
// export const testing = () =>{
//     console.log("OK con de")
//     testService.logger()
// }