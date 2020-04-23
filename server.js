const express = require("express");
require('express-async-errors');//module help recevie error common
const morgan =require('morgan');
const moment = require('moment');

const userModel= require('./models/member.model');
const messModel= require('./models/message.model');
const fileUpload = require('express-fileupload');
const app=express();
var bodyParser = require('body-parser');
app.use(morgan('dev'));

app.use(express.static("public"));
app.set("view engine","ejs");
app.set("views","./views");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
//app.use(bodyParser.raw());
app.use(fileUpload({
    useTempFiles : true,
    tempFileDir : '/img/upload/'
}));

//Server
var server =require("http").Server(app);
var io=require("socket.io")(server);

io.on("connection",(socket)=>{

    //recevie username
    socket.on("send-username",async (username)=>{
        //thêm dữ liệu socketID
        const result = await userModel.patch({username:username ,socketID:socket.id })
        socket.username=username;
    })

    //private message
    socket.on("send-message-private",async (data)=>{

        //Kiểm tra user
        const user =  await userModel.SelectUser(data.to);
        if(user.length == 0){
            throw new Error('Invalid username or password');
        }

        var datetime = moment().format('YYYY-MM-DD hh:mm:ss');
        console.log(datetime);

        // Lưu  vào csdl
        const row = await messModel.addMessPrivate({
            fromUser: socket.username,
            toUser:data.to,
            mess: data.msg,
            time: datetime
        })

        //gửi đi 
        io.to(user[0].socketID).emit("receive-message-private",{from: socket.username, msg: data.msg})
    })

    //load mess
    socket.on("load-mess-private",async (friend)=>{
        try {
            const rows= await messModel.selectMessPrivate(socket.username,friend);
            io.to(socket.id).emit("list-message-private",rows);
        } catch (error) {
            console.log(error+ " ");
        }

    })
})


app.use("/admin",require('./routes/admin'))
app.use("/user",require('./routes/user'))

app.get("/",(req,res)=>{
    res.redirect('/user/login')
})

app.use((err,req,res,next)=>{
    console.error(err.stack);
    res.status(500).send('View error on console');
})

const PORT = 3000;
server.listen(process.env.PORT || PORT,()=>{
    console.log("Server is running at https://mychatonline.herokuapp.com/");
});