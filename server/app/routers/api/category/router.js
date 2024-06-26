const express = require("express");

const router = express.Router();

const { browse } = require("../../../controllers/categoryActions");

router.get("/", browse);

/* ************************************************************************* */

module.exports = router;
