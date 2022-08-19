const express = require('express');
const { Passport } = require('passport');
const router = express.Router();

const passport=require('passport');
const helpers = require('../lib/helpers');

const pool = require("../database");

router.get('/api/prueba',async (req,res)=>{
    //PARA GESTIONAR UNA API
    res.redirect(json);
});

module.exports = router;