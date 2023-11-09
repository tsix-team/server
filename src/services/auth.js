import db from '../models'
import bcrypt from 'bcryptjs'
import jwt from 'jsonwebtoken'
import uniqid from 'uniqid'
//require('dotenv').config()
const hashPassword = password => bcrypt.hashSync(password, bcrypt.genSaltSync(10))

export const registerService = ({email,password}) => new Promise( async (resolve,reject) =>{
    try {
        
        const data_user = {
            id_user: uniqid.time(),
            email: email,
            password: hashPassword(password),
            //role:1
        }
        
        const userExist = await db.User.findOne({ where: { email: data_user.email }, raw:true })
        console.log('processing userExist....',userExist);
        const response = userExist? false : await db.User.create(data_user)  
        console.log('processing response....',response);
        const token = response?  jwt.sign(
            {
                id_user:data_user.id_user,
                email:data_user.email
            },
            process.env.SECRET_KEY,
            {expiresIn:'30d'}
        ) : null 
        console.log('processing token....',token);

        resolve({
            err:token? 0 : 2,
            msg: token? 'Đăng ký thành công!': 'Email đã tồn tại!',
            token: token || null
        })
    } catch (error) {
        reject(error)
    }
})
export const loginService = ({email,password}) => new Promise( async (resolve,reject) =>{
    try {
        const user = await db.User.findOne({ where: { email }, raw:true })
        console.log('processing response....',user);
        const isCorrect = user? bcrypt.compareSync(password,user.password) : false
        const isActive = isCorrect? user.status : null
        if (isActive!=null && isActive == -1) {
            resolve({
                err:-2,
                msg: 'Tài khoản đang bị vô hiệu hóa!',
                success: false
            })
        } else if(user.role == 0){
            resolve({
                err:-2,
                msg: 'Bạn không phải là quản trị viên!',
                success: false
            })
        } else{
            const token = isCorrect? jwt.sign(
                {
                    id_user:user.id_user,
                    email:user.email,
                    name:user.name,
                    role:user.role
                },
                process.env.SECRET_KEY,
                {expiresIn:'30d'}
            ) : null
            console.log('processing token....',token);
    
            resolve({
                err:token? 0 : 2,
                msg: token? 'Đăng nhập thành công!': 'Sai email hoặc mật khẩu!',
                token: token || null
            })
        }
        
    } catch (error) {
        reject(error)
    }
})
// export const loginAdminService = ({email,password}) => new Promise( async (resolve,reject) =>{
//     try {
//         const user = await db.User.findOne({ where: { email }, raw:true })
//         console.log('processing response....',user);
//         const isCorrect = user? bcrypt.compareSync(password,user.password) : false
//         const isActive = isCorrect? user.status : null
//         if (isActive!=null && isActive == -1) {
//             resolve({
//                 err:-2,
//                 msg: 'Tài khoản đang bị vô hiệu hóa!',
//                 success: false
//             })
//         } else if(user.role == 0){
//             resolve({
//                 err:-2,
//                 msg: 'Bạn không phải là quản trị viên!',
//                 success: false
//             })
//         } else{
//             const token = isCorrect?  jwt.sign(
//                 {
//                     id_user:user.id_user,
//                     email:user.email
//                 },
//                 process.env.SECRET_KEY,
//                 {expiresIn:'30d'}
//             ) : null
//             console.log('processing token....',token);
    
//             resolve({
//                 err:token? 0 : 2,
//                 msg: token? 'Đăng nhập thành công!': 'Sai email hoặc mật khẩu!',
//                 token: token || null
//             })
//         }
        
//     } catch (error) {
//         reject(error)
//     }
// })