import express from 'express'
import * as cateController from '../controllers/product'
import uploadCloud from '../config/cloudinary.config';

const router = express.Router();

router.get('/',cateController.getPdLimit)

router.get('/all',cateController.getPd)

router.get('/imgs/:id',cateController.getPdImgs)

router.get('/:slug',cateController.getOnePd)

router.post('/',cateController.addPd)

router.put('/:id',cateController.updatePd)

router.delete('/:id',cateController.deletePd)


export default router