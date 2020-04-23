const cloudinary = require('cloudinary').v2;
// SEND FILE TO CLOUDINARY
cloudinary.config({
    cloud_name: 'dw1daewzm',
    api_key: '595693629587386',
    api_secret: 'mdCtUtFpgifBPITivnU4FIJ1zZc'
})

module.exports = cloudinary;