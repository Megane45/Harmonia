const express = require("express");

const router = express.Router();

/* ************************************************************************* */
// Import And Use Routers Here
/* ************************************************************************* */

const itemsRouter = require("./items/router");
const programsRouter = require("./programs/router");
const categoryRouter = require("./category/router");

router.use("/items", itemsRouter);
router.use("/programs", programsRouter);
router.use("/categories", categoryRouter);

/* ************************************************************************* */

module.exports = router;
