
import { db } from '../config/db.js'

export const createFakeApi = async (user) =>{
    const sql = 'INSERT INTO reqres_api (email,first_name,last_name) VALUES (?,?,?)'

    const values = [user.email,user.first_name,user.last_name]
    const [result] = await db.execute(sql,values)
    return result
}
