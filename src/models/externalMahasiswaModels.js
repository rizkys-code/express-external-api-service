import { db } from '../config/db.js'

export const createExternalMahasiswa = async (user) =>{
    const sql = 'INSERT INTO external_mahasiswa (external_id,nim,nama_lengkap,kelas,alamat) VALUES (?,?,?,?,?)'

    const values = [
        user.external_id,
        user.nim,
        user.nama_lengkap,
        user.kelas,
        user.alamat
    ]
    const [result] = await db.execute(sql,values)
    return result
}