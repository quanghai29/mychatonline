const config = require('../config/db');
const util =require('util')
const mysql= require('mysql');
const pool = mysql.createPool(config);

//promisify hàm xử lý promise có sẵn đỡ phải viết lại nhiều lần
const mysql_query = util.promisify(pool.query).bind(pool);

module.exports={
    
    // Một câu truy vấn hoàn chỉnh trả về promise
    // load:(sql)=>{
    //     return new Promise((resolve, reject)=>{
    //         connection.query(sql,(err,results)=>{
    //             //Nếu thất bại 
    //             if(err) return reject(err);
    //             //Nếu thành công
    //             return resolve(results);
    //         })
    //     })
    // }
    // thay vào đó ta sử dụng gọn hơn như cách viêt sau:
    //set up cho 4 câu truy vấn select insert update delete
    
    load:sql => mysql_query(sql),
    selectCondition: (tableName,condition)=>mysql_query(`select * from ${tableName} where ?`,condition),
    selectTwoCondition:(tableName,condition1,condition2) =>mysql_query(`select * from ${tableName} where (?) or (?)`,[condition1,condition2]),
    add: (tableName, entity)=> mysql_query(`insert into ${tableName} set ?`, entity),
    del: (tableName, condition)=> mysql_query(`delete from ${tableName} where ?`, condition),
    patch:(tableName,entity,condition)=>mysql_query(`update ${tableName} set ? where ?`,[entity,condition]),
};

