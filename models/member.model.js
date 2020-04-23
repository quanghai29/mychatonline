const db=require('../utils/db');

module.exports={
    all:()=>db.load('select username,socketID from member'),
    add: entity => db.add('member',entity),
    SelectUser: (username)=>db.selectCondition('member',{username: username}),
    SelectId:(id)=> db.selectCondition('member',{id:id}),
    patch : (entity,condition) => db.patch('member',entity,condition)
};