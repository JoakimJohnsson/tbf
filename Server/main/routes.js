var express = require('express');
var router = express.Router();

router.get('/hello', function (req, res) {
    res.json('Blessed fuckup at the mansion')
});

module.exports = router;
