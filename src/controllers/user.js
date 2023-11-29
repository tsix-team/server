
import * as crudService from '../services/crudService'
import bcrypt from 'bcryptjs'
import uniqid from 'uniqid'

const hashPassword = password => bcrypt.hashSync(password, bcrypt.genSaltSync(10))
const model = {modelName :'user',what: 'tài khoản'}

//create | update | getOne | getAll | delete

export const addUser = async (req, res) =>{
    const dataForm = {...req.body}
    console.log(dataForm);
    try {
        if ( !dataForm.email || !dataForm.password) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const finder = {email:dataForm.email}
        const creater = {id_user: uniqid.time(),...dataForm, password: hashPassword(dataForm.password)}
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
    const size = req.query.size || 10 // Số bản ghi trên mỗi trang

    const offset = (page - 1) * size // Tính offset
    const limit = size*1
    const order = [
        ['role', 'DESC'] // Sắp xếp theo role giảm dần
      ]
    try {
        const response = await crudService.getLimit({offset,limit,order},model)
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
    // const dataForm = {
    //     email:req.body.email,
    //     password:req.body.password,
    //     role:req.body.role || 0,
    //     status:req.body.status || 0
    // }
    const {password,...dataForm} = req.body
    console.log(dataForm);
    try {
        if (!dataForm.email) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const finder = {id_user:req.params.id}
        
        const objUpdate = password ? {...dataForm, password: hashPassword(password)} : dataForm
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
    try {
        const finder = {id_user:id}
        const user = await crudService.getOne(finder,model)
        const dataUser = user.response
        if (dataUser?.role == 2) {
            return res.status(300).json({
                err: -3,
                msg: 'Không thể vô hiệu hóa admin!'
            })
        }
        const objUpdate = (dataUser?.status == -1)? {status:0} : {status:-1}
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