import * as authService from '../services/auth'
export const register = async (req, res) =>{
    const { email, password} = req.body
    console.log(email, password);
    try {
        if ( !email || !password) return res.status(400).json({
            err:1,
            msg:'Nhập thiếu gì đó rồi!'
        })
        const response = await authService.registerService(req.body)
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