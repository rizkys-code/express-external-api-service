import express from 'express'
const router = express.Router()
import { fakeApiController } from '../controller/fakeApiController.js'

router.post('/',fakeApiController)

export default router
