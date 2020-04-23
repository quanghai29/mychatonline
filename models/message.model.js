const db = require('../utils/db');
module.exports={
    selectMessPrivate: async (me,friend)=>{
        try {
            const rows = await db.load(`select * from message where (fromUser = '${me}' and toUser = '${friend}') or (fromUser = '${friend}' and toUser = '${me}')`);
            return rows;
        } catch (error) {
            throw new Error(error);
        }
       
    },
    addMessPrivate: (enitity)=>db.add('message',enitity)
}