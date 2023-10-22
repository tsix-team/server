import express from 'express'
import * as userController from '../controllers/user'
const router = express.Router();

router.post('/add',userController.addUser)

router.get('/add',(req,res)=>{
    res.json('addin user page')
})
export default router