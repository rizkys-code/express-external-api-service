import { createExternalMahasiswa } from '../models/externalMahasiswaModels.js'
import axios from 'axios'

export const createExternalMahasiswaController = async (req,res) =>{
    try{
        const response = await axios.get('http://localhost:5000/mahasiswa')
        const payload = response.data.payload;

        for(const item of payload){
            const user = {
                external_id: item.id,
                nim: item.nim,
                nama_lengkap: item.nama_lengkap,
                kelas: item.kelas,
                alamat: item.alamat
            }
            await createExternalMahasiswa(user)
        }
        res.status(200).json({message:'success',
            data: payload
        })
    }catch(error){
        console.log(error)
        res.status(500).json({
            message: 'Internal server error',error:error.message});
    }
}
