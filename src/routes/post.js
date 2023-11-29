import express from 'express'
import * as cateController from '../controllers/post'
import uploadCloud from '../config/cloudinary.config';

const router = express.Router();

router.get('/',cateController.getPostLimit)

router.get('/all',cateController.getPost)

router.get('/:id',cateController.getOnePost)

router.post('/',uploadCloud.none(),cateController.addPost)

router.put('/:id',uploadCloud.none(),cateController.updatePost)

router.delete('/:id',cateController.deletePost)


export default router