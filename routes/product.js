var express = require('express');
var router = express.Router();
var db = require('./../db');
const responseHelper = require('./../helper/responseHelper')

/* GET Product Listing. */
router.get('/', function (req, res) {
  db.query("SELECT * FROM product", function (err, result, fields) {
    if (err) return responseHelper.sendJsonResponse(res, 422, {}, err.message, 'error')
    return responseHelper.sendJsonResponse(res, 200, result, 'success', 'success')
  });
});

module.exports = router;
