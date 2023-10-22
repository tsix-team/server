import db from '../models'
//require('dotenv').config()
import { slugger } from './lib';
const models = {
    cate: db.Categorie,
    subcate: db.Subcategorie,
    user: db.User,
    product: db.Product
  };
export const add = (objFinder,objCreate,modelName,what) => new Promise( async (resolve,reject) =>{
    // cần truyền vào: obj {name_cate:name},obj {name_cate:name,slug:slugger(name)}, string what
    try {
        const exist = await models[modelName].findOne({ where: objFinder, raw: true });
        const response = exist ? false : await models[modelName].create(objCreate);
        console.log('processing exist....',exist);
        console.log('processing response....',response);

        resolve({
            err:response? 0 : 2,
            msg: response? `Thêm ${what} thành công!`: `${what} đã tồn tại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getAll = (modelName,what) => new Promise( async (resolve,reject) =>{
    try {
        
        const response = await models[modelName].findAll({ raw:true })
        resolve({
            err:response? 0 : 2,
            msg: response? `Lấy tất cả ${what} thành công!`: `Trống trơn!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getOne = (finder,modelName,what) => new Promise( async (resolve,reject) =>{
    try {
        
        const response = await models[modelName].findOne({ where: finder, raw:true })
        resolve({
            err:response? 0 : 2,
            msg: response? `Lấy ${what} thành công!`: `${what} không tồn tại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})