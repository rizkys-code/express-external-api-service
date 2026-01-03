import express from 'express'
import bodyParser from 'body-parser'
const app = express()
const port = 3000
import externalRouter from './src/routes/external.js'
import fakeApiRouter from './src/routes/fakeApi.js'



app.use(bodyParser.json())
app.use('/external',externalRouter)
app.use('/fakeApi',fakeApiRouter)


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})