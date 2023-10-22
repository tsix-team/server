import db from '../models'
//require('dotenv').config()
import { slugger } from './lib';
export const addCategory = ({name}) => new Promise( async (resolve,reject) =>{
    try {
        
        const cate = await db.Categorie.findOne({ where: { name_cate: name }, raw:true })
        console.log('processing cate....',cate);
        
        const response = cate? false : await db.Categorie.create({name_cate:name,slug:slugger(name)})  
        console.log('processing response....',response);

        resolve({
            err:response? 0 : 2,
            msg: response? 'Thêm danh mục thành công!': 'Danh mục đã tồn tại!',
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getCategory = () => new Promise( async (resolve,reject) =>{
    try {
        
        const cate = await db.Categorie.findAll({ raw:true })
        console.log('processing cate....',cate)
        resolve({
            err:cate? 0 : 2,
            msg: cate? 'Get danh mục thành công!': 'k co gi!',
            cate: cate
        })
    } catch (error) {
        reject(error)
    }
})
export const getByIdCategory = (id) => new Promise( async (resolve,reject) =>{
    try {
        
        const cate = await db.Categorie.findOne({ where: { id_cate:id }, raw:true })
        console.log('processing cate....',cate)
        resolve({
            err:cate? 0 : 2,
            msg: cate? 'Get danh mục thành công!': 'Danh mục k ton tai!',
            cate: cate
        })
    } catch (error) {
        reject(error)
    }
})
export const deleteCategory = ({id}) => new Promise( async (resolve,reject) =>{
    try {
        
        const cate = await db.Categorie.findOne({ where: {id_cate:id}, raw:true })
        console.log('processing cate....',cate);
        const response = cate?  await db.Categorie.destroy({ where: {id_cate:id}}):false 
        console.log('processing response....',response);

        resolve({
            err:response? 0 : 2,
            msg: response? 'Xóa danh mục thành công!': 'Danh mục không tồn tại!',
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const updateCategory = (id,name) => new Promise( async (resolve,reject) =>{
    try {
        
        const cate = await db.Categorie.findOne({ where: {id_cate:id}, raw:true })
        console.log('processing cate....',cate);
        const response = cate?  await db.Categorie.update({name_cate:name,slug:slugger(name)},{ where: {id_cate:id} }) :false 
        console.log('processing response....',response);

        resolve({
            err:response? 0 : 2,
            msg: response? 'Sửa danh mục thành công!': 'Danh mục không tồn tại!',
            response: cate
        })
    } catch (error) {
        reject(error)
    }
})