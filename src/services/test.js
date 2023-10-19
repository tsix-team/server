import bcrypt from 'bcryptjs'
import jwt from 'jsonwebtoken'
import db from '../models'
import uniqid from 'uniqid'


export const logger = ()=>{
    const na = uniqid.time() 
    console.log(na);
}