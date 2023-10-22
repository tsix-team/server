import authRouter from './auth'
import categoryRouter from './category'
require('dotenv').config()

const initRoutes = (app) => {
    app.use(`${process.env.API}/auth`, authRouter)
    app.use(`${process.env.API}/cate`, categoryRouter)

    return app.use('/', (req, res) => {
        res.send('server on...')
    })
}

export default initRoutes