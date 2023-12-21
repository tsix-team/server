// 
import cloudinary from 'cloudinary/cloudinary'

import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

const model = { modelName: 'post', what: 'bài viết' }

// xử lí thêm môt bài viết
export const addPost = async (req, res) => {
    const { uploadedImage, ...formData } = req.body
    console.log('Img postt:',uploadedImage);
    console.log("req formData: ", formData); //
    //obj finder, obj create, model = "Post", what = "Danh mục"
    let isValidate = true
    try {
        if (!formData.title) {
            
            if (uploadedImage) {
                cloudinary.uploader.destroy(uploadedImage?.filename)
            }
            return res.status(400).json({
                err: 1,
                msg: 'Nhập thiếu gì đó rồi!'
            })
        }
        console.log("img here: ", uploadedImage);
        const finder = { title: formData.title }
        
        const creater = uploadedImage ?  
            { ...formData, slug: slugger(formData.title), image: uploadedImage?.path }
            :{ ...formData, slug: slugger(formData.title), image: 'none' }
        const response = await crudService.add(finder, creater, model)
        if (response && response.err == 2) {
            isValidate = false
        }
        if (isValidate == false && uploadedImage) {
            cloudinary.uploader.destroy(uploadedImage?.filename)
        }
        return res.status(200).json(response)

    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
// Xử lí xóa một bài viết
export const deletePost = async (req, res) => {
    const { id } = req.params
    try {
        const finder = { id_post: id }
        const findPost = await crudService.getOne(finder, model)
        
        if (findPost.response == [] ||findPost.response == null) {
            const img = findPost?.response
            const urlImg = img.addImages
            const parts = urlImg.split('/')
            const fileParts = parts.slice(-2).join('/')
            const filenameImg = fileParts.split('.').slice(0, -1).join('.')
            await cloudinary.uploader.destroy(filenameImg)
        }
        const response = await crudService.deleteOne(finder, model)
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}

// Lấy tất cả các bài viết
export const getPost = async (req, res) => {
    try {
        const response = await crudService.getAll(model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}

// Lấy giới hạn số bài viết
export const getPostLimit = async (req, res) => {

    const page = req.query.page || 1 // Trang hiện tại
    const size = req.query.size || 8 // Số bản ghi trên mỗi trang

    const offset = (page - 1) * size // Tính offset
    const limit = size * 1
    try {
        const response = await crudService.getLimit({ offset, limit }, model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
// Lấy danh sách hình ảnh liên quan đến một bài viết cụ thể.
export const getPostImgs = async (req, res) => {
    //const queries = {...req.query}
    try {
        const finder = { id_Post: req.params.id }
        const response = await crudService.getAllWhere(finder, modelImg)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
// Lấy thông tin của một bài viết dựa trên ID hoặc slug của nó.
export const getOnePost = async (req, res) => {
    
    try {
        let isId
        if (/^\d+$/.test(req.params.id)) {
            isId = true 
          } else {
            isId = false
          }
        const finder = isId ? { id_post: req.params.id } : {slug:req.params.id}
        const response = await crudService.getOne(finder, model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
// Xử lý việc cập nhật một bài viết.
export const updatePost = async (req, res) => {
    const { id } = req.params
    const { uploadedImage, ...formData } = req.body
    let isValidate = true
    try {
        if (!formData.title) {
            //clear imgs
            if (uploadedImage) {
                cloudinary.uploader.destroy(uploadedImage?.filename)
            }
            return res.status(400).json({
                err: 1,
                msg: 'Nhập thiếu gì đó rồi!'
            })
        }

        console.log("img here: ", uploadedImage);
        const finder = { id_post: id }
        const findPost = await crudService.getOne(finder, model)
        const creater = uploadedImage ? { ...formData, slug: slugger(formData.title), image: uploadedImage?.path }
            : { ...formData, slug: slugger(formData.title) }
        const response = await crudService.update(finder, creater, model)
        
        if (response && response.err == 0 && uploadedImage) {
            const img = findPost.response
            console.log(img)
            const urlImg = img.image
            const parts = urlImg.split('/')
            const fileParts = parts.slice(-2).join('/')
            const filenameImg = fileParts.split('.').slice(0, -1).join('.')
            await cloudinary.uploader.destroy(filenameImg)
        } else if (response && response.err == 2) {
            isValidate = false
        }
        if (isValidate == false && uploadedImage) {
            cloudinary.uploader.destroy(uploadedImage?.filename)
        }
        return res.status(200).json(response)

    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at controller: ' + error
        })
    }
}
