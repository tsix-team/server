import express from 'express'
import * as userController from '../controllers/user'
const router = express.Router();

router.post('/',userController.addUser)

router.get('/',userController.getAllUser)

router.get('/:id',userController.getOneUser)

router.put('/:id',userController.updateUser) 

router.delete('/:id',userController.removeUser)


export default router