import * as categoryService from '../services/category'
export const addCate = async (req, res) =>{
    const {name} = req.body
    console.log(name);
    try {
        if (!name) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const response = await categoryService.addCategory(req.body)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const deleteCate = async (req, res) =>{
    const {id} = req.query
    console.log(id);
    try {
        if (!id) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const response = await categoryService.deleteCategory(req.query)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const getCate = async (req, res) =>{
    try {
        const response = await categoryService.getCategory()
        console.log('res from controller: ',response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const getByIdCate = async (req, res) =>{
    const {id} = req.params
    try {
        const response = await categoryService.getByIdCategory(id)
        console.log('res from controller: ',response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const updateCate = async (req, res) =>{
    const {id} = req.params
    const {name} = req.body
    console.log(id,name);
    try {
        if (!name||!id) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const response = await categoryService.updateCategory(id,name)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}