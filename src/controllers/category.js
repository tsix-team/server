

import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

const model = {modelName :'cate',what: 'danh mục'}

export const addCate = async (req, res) =>{
    const {name_cate} = req.body
    console.log(name_cate);
    //obj finder, obj create, model = "cate", what = "Danh mục"
    
    try {
        if (!name_cate) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const finder = {name_cate}
        const creater = {name_cate,slug:slugger(name_cate)}
        const response = await crudService.add(finder,creater, model)
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
            msg: 'Fail at auth controller: '+ error
        })
    }
}
export const getCate = async (req, res) =>{
    try {
        const response = await crudService.getAll(model)
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
        const response = await crudService.getOne(finder,model)
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

    try {
        if (!name||!id) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const finder = {id_cate:id}
        const objUpdate = {name_cate:name}
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