
import * as crudService from '../services/crudService'

const model = {modelName :'comment',what: 'bình luận'}
const modelPd = { modelName: 'product', what: 'sản phẩm' }
const modelUser = { modelName: 'user', what: 'tài khoản' }
//create | update | getOne | getAll | delete

export const addComment = async (req, res) =>{
    const dataForm = {...req.body}
    console.log(dataForm);
    try {
        const pd = await crudService.getOne({slug:dataForm.slug},modelPd)
        const id_pd = pd.response?.id_pd
        if ( !dataForm.content) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const creater = {id_user: dataForm.id_user,id_pd:id_pd,content:dataForm.content}
        const response = await crudService.addRaw(creater,model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const removeComment = async (req, res) =>{
    const finder = {id_cmt:req.params.id}
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
export const getAllCmtByIdPd = async (req, res) =>{
    const page = req.query.page || 1 // Trang thứ 2
    const size = req.query.size || 7 // Số bản ghi trên mỗi trang
    const id_pd = req.params.slug
    //const id_user = req.params.id_user
    const offset = (page - 1) * size // Tính offset
    const limit = size*1
    const order = [
        ['createdAt', 'DESC'] // Sắp xếp theo role giảm dần
      ]
    try {
        const response = await crudService.getLimit({where:{id_pd}, offset,limit,order},model)
        const dataCmts = response.response
        const listIdUser = dataCmts.map(cmt=>cmt.id_user)
        const users = await crudService.getAllWhere({id_user:listIdUser},modelUser)
        const dataUsers = users.response
        const mergedComments = dataCmts.map(comment => {
            const user = dataUsers.find(user => user.id_user == comment.id_user);
            return {
                ...comment, name:user?.name,email:user?.email
            };
        });
        console.log('listIdUser',mergedComments);
        return res.status(200).json(mergedComments)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const getAllCmt = async (req, res) =>{
    const page = req.query.page || 1 // Trang thứ 2
    const size = req.query.size || 20 // Số bản ghi trên mỗi trang
    const offset = (page - 1) * size // Tính offset
    const limit = size*1
    const order = [
        ['createdAt', 'DESC'] // Sắp xếp theo role giảm dần
      ]
    try {
        const response = await crudService.getLimit({ offset,limit,order},model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}