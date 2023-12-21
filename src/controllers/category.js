

import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

const model = {modelName :'cate',what: 'danh mục'}
const modelSubcate = {modelName :'subcate',what: 'danh mục con'}

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
            msg: 'Fail at controller: '+ error
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
            msg: 'Fail at controller: '+ error
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
            msg: 'Fail at controller: '+ error
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
            msg: 'Fail at controller: '+ error
        })
    }
}
export const updateCate = async (req, res) =>{
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

//subcate
export const addSubcate = async (req, res) =>{
    const dataForm = {...req.body}
    console.log(dataForm);
    
    try {
        if (!dataForm.name_subcate||!dataForm.id_cate) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const finder = {name_subcate:dataForm.name_subcate}
        const creater = {...dataForm,slug:slugger(dataForm.name_subcate)}
        const response = await crudService.add(finder, creater, modelSubcate)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const deleteSubcate = async (req, res) =>{
    const {id} = req.params
    console.log(id);
    try {
        const finder = {id_subcate:id}
        const response = await crudService.deleteOne(finder,modelSubcate)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const getSubcate = async (req, res) =>{
    try {
        const response = await crudService.getAll(modelSubcate)
        console.log('res from controller: ',response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const getSubcateByIdCate = async (req, res) =>{
    //find all subcate where id_cate = id_cate
    try {
        const isId = /^\d+(\.\d+)?$/.test(req.params.id) ? true : false
        const finder = isId? {id_cate:req.params.id} : {slug:req.params.id}
        const response = await crudService.getAllWhere(finder, modelSubcate)
        console.log('res from controller: ',response,req.params.id);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const getSubcateByIdSubcate = async (req, res) =>{
    try {
        const isId = /^\d+(\.\d+)?$/.test(req.params.id) ? true : false
        const finder = isId? {id_cate:req.params.id} : {slug:req.params.id}
        const response = await crudService.getOne(finder, modelSubcate)
        console.log('res from controller: ',response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
export const updateSubcate = async (req, res) =>{
    const {id} = req.params
    const dataForm = {...req.body}
    console.log('Dataform subcate: ',dataForm);
    try {
        if (!dataForm.name_subcate||!dataForm.id_cate) return res.status(400).json({
            err:1,
            msg:'thiếu gì đó rồi!'
        })
        const finder = {id_subcate:id}
        const objUpdate = {...dataForm,slug:slugger(dataForm.name_subcate)}
        const response = await crudService.update(finder,objUpdate,modelSubcate)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at controller: '+ error
        })
    }
}
