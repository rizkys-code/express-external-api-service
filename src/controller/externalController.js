import { createExternalUser } from '../models/externalModels.js';
import axios from 'axios'

export const syncExternalUser = async (req, res) => {
    try{
        const response = await axios.get('https://randomuser.me/api/');
        const user = response.data.results[0];

        const User = {
          external_id: user.login.uuid,
          gender: user.gender,
          first_name: user.name.first,
          last_name: user.name.last,
          email: user.email,
          city: user.location.city,
          country: user.location.country
        };

        await createExternalUser(User);
        res.status(201).json({
            message: 'success' ,
            data: User
            });

    }catch(error){
        console.log(error)
        res.status(500).json({
            message: 'Internal server error'
        });
    }

};
