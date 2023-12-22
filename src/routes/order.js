import express from 'express'
import * as orderController from '../controllers/order'
const router = express.Router();

router.get('/',orderController.getOrder)

router.get('/count',orderController.countOrder)

router.get('/:id',orderController.getByIdOrder)

router.post('/',orderController.addOrder)

router.put('/:id',orderController.updateOrder)

//router.delete('/:id',orderController.deleteOrder)



export default router