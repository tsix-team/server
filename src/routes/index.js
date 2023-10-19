import authRouter from './auth'
require('dotenv').config()

const initRoutes = (app) => {
    app.use(`${process.env.API}/auth`, authRouter)

    return app.use('/', (req, res) => {
        res.send('server on...')
    })
}

export default initRoutes