const express= require('express');
const router= express.Router();
const memberModel=require('../models/member.model');

router.get('/',async (req,res)=>{
    let users = false;
    try {
        const rows= await memberModel.all();
        users=rows;
        res.render('admin',{
            users
        })
    } catch (error) {
        console.log(error +" ");
        res.end('View error log in console');
    }
})



module.exports=router;