
import * as addService from '../services/crudService'
import bcrypt from 'bcryptjs'
import uniqid from 'uniqid'

const hashPassword = password => bcrypt.hashSync(password, bcrypt.genSaltSync(10))

export const addUser = async (req, res) =>{
    const { email, password} = req.body
    console.log(email, password);
    try {
        if ( !email || !password) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const finder = {email:email}
        const creater = {id_user: uniqid(), email:email, password: hashPassword(password)}
        const response = await addService.add(finder,creater,'user','tài khoản')
        console.log(response);
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json({
            err:-1,
            msg: 'Fail at auth controller: '+ error
        })
    }
}
// export const testing = () =>{
//     console.log("OK con de")
//     testService.logger()
// }