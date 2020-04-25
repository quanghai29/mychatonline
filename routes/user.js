const express= require('express');
const router= express.Router();
const md5 =require('md5');
const userModel= require('../models/member.model');
const uploadMulter = require('../config/multer');
const cloudinary = require('../config/cloudinary');

router.get('/register',(req,res)=>{
    res.render('register');
})

router.post('/register',async (req,res)=>{
    const hash_password=  md5(req.body.fPassword);
    const enity =
    {
        username: req.body.fname,
        password: hash_password,
        avartar: `https://res.cloudinary.com/dw1daewzm/image/upload/v1587690581/avartar_onn4uh.png`
    }
    try {
        const row= await userModel.add(enity);
        console.log(row);
        res.redirect('/user/login');
    } catch (error) {
        res.end('thêm thành viên thất bại');
        console.log(error + '');
    }    
})

router.get('/login',(req,res)=>{
    res.render('login');
})

router.post('/login',async (req,res)=>{
    const user =  await userModel.SelectUser(req.body.fname);
    if(user.length == 0){
        throw new Error('Invalid username or password');
    }
    const hash_password = md5(req.body.fPassword);

    if(hash_password !== user[0].password){
        return res.end('Invalid username or password');
    }
    console.log(user[0].id);
    res.redirect(`/user/${user[0].id}`);
})

router.get('/:id',async (req,res)=>{
    const row = await userModel.SelectId(req.params.id);
    if(row.length == 0 ){
        throw new Error('Not Find This user');
    }
    delete row[0].password;
    
    const listuser = await userModel.all();
    res.render('index',{
        idUser:req.params.id,
        data:JSON.stringify(row[0]),
        listuser: listuser
    });
})

router.post('/:id/uploadimage',uploadMulter.single('avatar'),(req,res)=>{
    console.log(req.files);
    cloudinary.uploader.upload(req.files.newAvartar.tempFilePath,async function(error, result) {
        if(error){
            return new Error(error);
        }
        else{
            console.log(result);
            //cập nhật ảnh vào db
            const rows = await userModel.patch({avartar: result.url},{id: req.params.id});
            console.log(rows);
            res.end('ok');
        }
    });
})
module.exports=router;