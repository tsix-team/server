import express from 'express'
import * as cateController from '../controllers/category'
const router = express.Router();

router.get('/get',cateController.getCate)
router.get('/get/:id',cateController.getByIdCate)
router.post('/add',cateController.addCate)

router.delete('/delete',cateController.deleteCate)

router.put('/update/:id',cateController.updateCate)



router.get('/',(req,res)=>{
    res.json('Category page')
})
export default router