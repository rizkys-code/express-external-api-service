import express from 'express'
const router = express.Router()
import {syncExternalUser} from '../controller/externalController.js'

router.post('/',syncExternalUser)


export default router
