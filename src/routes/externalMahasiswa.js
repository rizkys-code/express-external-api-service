import { createExternalMahasiswaController } from '../controller/externalMahasiswaController.js'
import express from 'express'
const router = express.Router()

router.post('/',createExternalMahasiswaController)

export default router
