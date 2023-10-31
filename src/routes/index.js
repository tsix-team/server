import authRouter from './auth'
import categoryRouter from './category'
import subcategoryRouter from './subcategory'
import userRouter from './user'
import productRouter from './product'
require('dotenv').config()

const initRoutes = (app) => {
    app.use(`${process.env.API}/auth`, authRouter)
    app.use(`${process.env.API}/cate`, categoryRouter)
    app.use(`${process.env.API}/subcate`, subcategoryRouter)
    app.use(`${process.env.API}/user`, userRouter)
    app.use(`${process.env.API}/product`, productRouter)

    return app.use('/', (req, res) => {
        res.send('server on...')
    })
}

export default initRoutes