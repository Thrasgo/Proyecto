var express = require('express');
var router = express.Router();
var nodemailer = require("nodemailer");

/* GET contactos page. */
router.get('/', function(req, res, next) {
  res.render('contacto');
});

router.post('/', async(req, res, next) => {
  var nombre = req.body.nombre;
  var email = req.body.email;
  var apellido = req.body.apellido;
  var asunto = req.body.asunto;
  var mensaje = req.body.mensaje;

  var obj = {
    to : 'driveparcosas@gmail.com',
    subject: 'ASTROFORO COM',
    html: nombre + " " + apellido + " se contacto a traves del formulario del ASTROFORO, y con asunto: "  + asunto +
    " expide el siguiente mensaje: " + mensaje +
    ". <br> Su email es: " + email 
  }
  var transporter = nodemailer.createTransport({
    host : process.env.SMTP_HOST,
    port : process.env.SMTP_PORT,
    auth: {
      user : process.env.SMTP_USER,
      pass : process.env.SMTP_PASS
    }
  })

  var info = await transporter.sendMail(obj);

  res.render('contacto', {message : 'Mensaje enviado correctamente'});

});
module.exports = router;
