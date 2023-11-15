import express from 'express'
import * as authController from '../controllers/auth'
const router = express.Router();

router.post('/register',authController.register)
router.post('/login',authController.login)
router.post('/clientLogin',authController.clientLogin)
router.get('/login',(req,res)=>{
    res.json('login page')
})
export default router