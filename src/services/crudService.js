import db from '../models'
//require('dotenv').config()
import { slugger } from './lib';
import { Op } from 'sequelize'
const models = {
    cate: db.Categorie,
    subcate: db.Subcategorie,
    user: db.User,
    product: db.Product,
    image: db.Image,
    post:db.Post
  };
export const add = (objFinder,objCreate,model) => new Promise( async (resolve,reject) =>{
    // cần truyền vào: obj {name_cate:name},obj {name_cate:name,slug:slugger(name)}, model name
    const {modelName,what} = model
    try {
        const exist = await models[modelName].findOne({ where: objFinder, raw: true })
        console.log('processing exist....',exist)

        const response = exist ? false : await models[modelName].create(objCreate)
        console.log('processing response....',response)

        resolve({
            err:response? 0 : 2,
            msg: response? `Thêm ${what} thành công!`: `${what} đã tồn tại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const addRaw = (objCreate,model) => new Promise( async (resolve,reject) =>{
    // cần truyền vào: obj {name_cate:name},obj {name_cate:name,slug:slugger(name)}, model name
    const {modelName,what} = model
    try {

        const response = await models[modelName].create(objCreate)
        console.log('processing response....',response)

        resolve({
            err:response? 0 : 2,
            msg: response? `Thêm ${what} thành công!`: `thất bại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getAll = (model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model

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
export const getLimit = (options, model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    console.log(options);
    //page = 1, results_per_page = 10; page_first_result = (page-1) * results_per_page;
    try {
        
        const response = await models[modelName].findAll({...options, raw:true })
        resolve({
            err:response? 0 : 2,
            msg: response? `Lấy tất cả ${what} thành công!`: `Trống trơn!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getOne = (finder,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
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
export const update = (finder,objUpdate,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    try {
        console.log('what wrong..',model,finder,objUpdate);
        const exist = await models[modelName].findOne({ where: finder, raw:true })
        console.log('processing exist....',exist);
        const response = exist?  await models[modelName].update(objUpdate,{ where: finder }) :false 
        console.log('processing response....',response);

        resolve({
            err:response? 0 : 2,
            msg: response? `Cập nhật ${what} thành công!`: `${what} không tồn tại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const deleteOne = (finder,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    try {
        
        const response = await models[modelName].destroy({ where: finder, raw:true })
        resolve({
            err:response? 0 : 2,
            msg: response? `Xóa ${what} thành công!`: `${what} không tồn tại!`,
            response: response
        })
    } catch (error) {
        console.log('FAIL AT SERVICE ERR');
        reject(error)
    }
})
export const addImages = (arrImg,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    try {
        const response = await models[modelName].bulkCreate(arrImg)
        console.log('processing response....',response)

        resolve({
            err:response? 0 : 2,
            msg: response? `Thêm các ${what} thành công!`: `Thất bại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getAllWhere = (finder,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    try {
        
        const response = await models[modelName].findAll({ where: finder, raw:true })
        resolve({
            err:response? 0 : 2,
            msg: response? `Lấy ${what} thành công!`: `${what} không tồn tại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getOptional = (options,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    try {
        const response = await models[modelName].findAll({...options, raw:true })
        resolve({
            err:response? 0 : 2,
            msg: response? `Lấy ${what} thành công!`: `${what} không tồn tại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})
export const getOneDetail = (finder) => new Promise( async (resolve,reject) =>{
    try {
        const response = await models['cate'].findAll({where:finder,include: [
            {
              model: models['subcate'],
              include: [{
                model: models['product'] // Kết hợp Type với Product
              }]
            }
          ], raw:true })
          const productsData = response.map(item => ({
            id_pd: item['Subcategories.Products.id_pd'],
            id_cate:item.id_cate, name_cate:item.name_cate,
            id_subcate: item['Subcategories.id_subcate'],
            name_subcate: item['Subcategories.name_subcate'],
            name_pd: item['Subcategories.Products.name_pd'],
            image: item['Subcategories.Products.image'],
            price: item['Subcategories.Products.price'],
            material: item['Subcategories.Products.material'],
            size: item['Subcategories.Products.size'],
            brand: item['Subcategories.Products.brand'],
            description: item['Subcategories.Products.description'],
            inventory: item['Subcategories.Products.inventory'],
            slug: item['Subcategories.Products.slug'],
            createdAt: item['Subcategories.Products.createdAt'],
            updatedAt: item['Subcategories.Products.updatedAt'],
          }));
        resolve({
            err:productsData? 0 : 2,
            msg: productsData? `Lấy thành công!`: ` không tồn tại!`,
            response: productsData
        })
    } catch (error) {
        reject(error)
    }
})

export const addMulti = (arr,model) => new Promise( async (resolve,reject) =>{
    const {modelName,what} = model
    try {
        const response = await models[modelName].bulkCreate(arr)
        console.log('processing response....',response)

        resolve({
            err:response? 0 : 2,
            msg: response? `Thêm các ${what} thành công!`: `Thất bại!`,
            response: response
        })
    } catch (error) {
        reject(error)
    }
})