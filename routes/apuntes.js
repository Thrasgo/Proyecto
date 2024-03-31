var express = require('express');
var router = express.Router();

/* GET apuntes page. */
router.get('/', function(req, res, next) {
  res.render('apuntes');
});

module.exports = router;
