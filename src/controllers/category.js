import * as categoryService from '../services/category'
import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

export const addCate = async (req, res) =>{
    const {name} = req.body
    console.log(name);
    //obj finder, obj create, model = "cate", what = "Danh mục"
    
    try {
        if (!name) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const finder = {name_cate:name}
        const creater = {name_cate:name,slug:slugger(name)}
        const response = await crudService.add(finder,creater,'cate','danh mục')
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
        const response = await crudService.getAll('cate','danh mục')
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
    try {
        const finder = {id_cate:req.params.id}
        const response = await crudService.getOne(finder,'cate','danh mục')
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