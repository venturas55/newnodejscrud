const express = require('express');
const { Passport } = require('passport');
const router = express.Router();
const passport=require('passport');

const helpers = require('../lib/helpers');

router.get('/signup',helpers.isNotAuthenticated,(req,res)=>{
    res.render('auth/signup')
});

router.post('/signup', passport.authenticate('local.signup',{
        successRedirect: '/profile',
        failureRedirect: '/signup',
        passReqToCallback: true,
        failureFlash: true
    })
);

router.get('/signin',helpers.isNotAuthenticated,(req,res)=>{
    res.render('auth/signin');
});

router.post('/signin',(req,res,next)=>{
   passport.authenticate('local.signin',{
       successRedirect: '/profile',
       failureRedirect: '/signin',
       failureFlash:true

   })(req,res,next);
});

router.get('/profile',helpers.isAuthenticated ,(req,res)=>{
    res.render('profile');
});

router.get('/profile/edit',helpers.isAuthenticated ,(req,res)=>{
    res.render('profileEdit');
});
router.post('/profile/edit/',helpers.isAuthenticated ,async (req,res)=>{
     const newUser = {
        usuario:    req.body.usuario,
        contrasena: req.body.contrasena,
        email:      req.body.email,
        full_name:  req.body.fullname,
        privilegio: "san",
    }; 
    //newUser.contrasena = await helpers.encryptPass(password);
    console.log("guardando en la BBDD");
    //console.log(user);
    res.render('profile');
});

router.get('/logout',helpers.isAuthenticated ,(req,res)=>{
    req.logOut();
    res.redirect('/');
})

//TODO: Añadir posibilidad de cambio de contraseña del usuario

module.exports = router;