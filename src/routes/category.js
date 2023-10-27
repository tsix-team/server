import express from 'express'
import * as cateController from '../controllers/category'
const router = express.Router();

router.get('/',cateController.getCate)

router.get('/:id',cateController.getByIdCate)

router.post('/',cateController.addCate)

router.put('/:id',cateController.updateCate)

router.delete('/:id',cateController.deleteCate)



export default router