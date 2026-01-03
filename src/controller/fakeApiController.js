import { createFakeApi } from '../models/fakeApiModels.js'
import axios from 'axios'

export const fakeApiController = async (req,res) =>{
    try{
        const respoonse = await axios.get('https://dummyjson.com/users')
        const users = respoonse.data.users[0];

        const user = {
            first_name: users.firstName,
            last_name: users.lastName,
            email: users.email,
            address: users.address
        }
        await createFakeApi(user)
        res.status(200).json({message:'success',
            data: user
        })
    }catch(error){
        console.log(error)
        res.status(500).json({
            message: 'Internal server error',error:error.message});
    }
}