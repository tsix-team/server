import express from 'express'
import * as cateController from '../controllers/category'
const router = express.Router();

router.get('/',cateController.getSubcate)

router.get('/:id',cateController.getSubcateByIdSubcate)

router.get('/cate/:id',cateController.getSubcateByIdCate)

router.post('/',cateController.addSubcate)

router.put('/:id',cateController.updateSubcate)

router.delete('/:id',cateController.deleteSubcate)



export default router