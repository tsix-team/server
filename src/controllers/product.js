

import cloudinary from 'cloudinary/cloudinary'

import * as crudService from '../services/crudService'
import { slugger } from '../services/lib'

const model = { modelName: 'product', what: 'sản phẩm' }
const modelImg = { modelName: 'image', what: 'hình ảnh' }

/** What to do now
 * bây giờ thêm sản phẩm với form có 1 ảnh chính và nhiều ảnh phụ, đã làm xong nhiều ảnh phụ còn ảnh chính thôi
 */

export const addPd = async (req, res) => {
    const formData = { ...req.body }
    const uploadedImage = req.files?.image
    const uploadedImages = req.files?.images
    console.log(formData); //undefined
    //obj finder, obj create, model = "pd", what = "Danh mục"
    let isValidate = true
    try {
        if (!formData.name_pd) {
            //clear imgs
            if (uploadedImage) {
                cloudinary.uploader.destroy(uploadedImage[0]?.filename)
            }
            if (uploadedImages) {
                uploadedImages.forEach(image => {
                    cloudinary.uploader.destroy(image.filename)
                });
            }
            return res.status(400).json({
                err: 1,
                msg: 'Nhập thiếu gì đó rồi!'
            })
        }

        console.log("img here: ", uploadedImage, uploadedImages);
        const finder = { name_pd: formData.name_pd }
        const creater = { ...formData, slug: slugger(formData.name_pd), image: uploadedImage[0]?.path }
        const response = await crudService.add(finder, creater, model)
        if (response && response.err == 0) {
            // uploadedImages là 1 mảng chứa các đối tượng image, tromg image có path url
            const arrUrls = uploadedImages.map(img => img.path);
            const arrImgs = []
            for (let i = 0; i < arrUrls.length; i++) {
                const imgObj = {
                    id_pd: response.response.id_pd,
                    url: arrUrls[i],
                    alt: response.response.slug + `_img_${i}`,
                };
                arrImgs.push(imgObj);
            }
            await crudService.addImages(arrImgs, modelImg)
        } else if (response && response.err == 2) {
            isValidate = false
        }
        if (isValidate == false && uploadedImage) {
            cloudinary.uploader.destroy(uploadedImage[0]?.filename)
        }
        if (isValidate == false && uploadedImages) {
            uploadedImages.forEach(image => {
                cloudinary.uploader.destroy(image.filename)
            });
        }
        return res.status(200).json(response)

    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
export const deletePd = async (req, res) => {
    const { id } = req.params
    console.log(id);
    try {
        if (!id) return res.status(400).json({
            err: 1,
            msg: 'thiếu gì đó rồi!'
        })
        const finder = { id_pd: id }
        const response = await crudService.deleteOne(finder, model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
export const getPd = async (req, res) => {
    try {
        const response = await crudService.getAll(model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
export const getPdLimit = async (req, res) => {

    const page = req.query.page || 1 // Trang thứ 2
    const size = req.query.size || 8 // Số bản ghi trên mỗi trang

    const offset = (page - 1) * size // Tính offset
    const limit = size*1
    try {
        const response = await crudService.getLimit({offset,limit},model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
export const getPdImgs = async (req, res) => {
    //const queries = {...req.query}
    try {
        const finder = { id_pd: req.query.id }
        const response = await crudService.getAllWhere(finder, modelImg)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
export const getOnePd = async (req, res) => {
    try {
        const finder = { slug: req.params.slug }
        const response = await crudService.getOne(finder, model)
        console.log('res from controller: ', response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
export const updatePd = async (req, res) => {
    const dataForm = { ...req.body }
    try {
        if (!dataForm.name_pd) return res.status(400).json({
            err: 1,
            msg: 'thiếu gì đó rồi!'
        })
        const finder = { id_pd: req.params.id }
        const response = await crudService.update(finder, dataForm, model)
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg: 'Fail at auth controller: ' + error
        })
    }
}
