const multer = require('multer');

//storage
const storage = multer.diskStorage({
    destination: function(req, file, cb) {
      cb(null, '/img/upload/')
    },
    filename: function(req, file, cb) {
      console.log(file)
      cb(null, file.originalname)
    }
})
const upload = multer({storage});

module.exports= upload;
