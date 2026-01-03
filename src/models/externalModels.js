import { db } from '../config/db.js';

export const createExternalUser = async (user) => {
  const sql = `
    INSERT INTO external_users
    (external_id, gender, first_name, last_name, email, city, country)
    VALUES (?, ?, ?, ?, ?, ?, ?)
  `;

  const values = [
    user.external_id,
    user.gender,
    user.first_name,
    user.last_name,
    user.email,
    user.city,
    user.country
  ];

  const [result] = await db.execute(sql, values);
  return result;
};
