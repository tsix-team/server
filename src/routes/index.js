import authRouter from './auth'
import categoryRouter from './category'
import userRouter from './user'
require('dotenv').config()

const initRoutes = (app) => {
    app.use(`${process.env.API}/auth`, authRouter)
    app.use(`${process.env.API}/cate`, categoryRouter)
    app.use(`${process.env.API}/user`, userRouter)

    return app.use('/', (req, res) => {
        res.send('server on...')
    })
}

export default initRoutes