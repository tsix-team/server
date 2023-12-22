import express from 'express'
import * as cmtController from '../controllers/comment'
const router = express.Router();

router.post('/',cmtController.addComment)

router.get('/',cmtController.getAllCmt)

router.get('/:slug',cmtController.getAllCmtByIdPd)

// router.get('/:id',cmtController.getOneUser)

// router.put('/:id',cmtController.updateUser) 

// router.put('/ban/:id',cmtController.banUser)

router.delete('/:id',cmtController.removeComment)


export default router