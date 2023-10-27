import express from 'express'
import * as cateController from '../controllers/product'
import uploadCloud from '../config/cloudinary.config';

const router = express.Router();

router.get('/',cateController.getPd)

router.get('/imgs',cateController.getPdImgs)

router.get('/:slug',cateController.getOnePd)

router.post('/',uploadCloud.fields([{ name: 'image' }, { name: 'images' }]),cateController.addPd)

router.put('/:id',cateController.updatePd)

router.delete('/:id',cateController.deletePd)


export default router