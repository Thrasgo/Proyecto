var express = require('express');
var router = express.Router();
var novedadesModel = require('./../../models/novedadesModel');

router.get('/', async function(req,res,next) {
    var novedades = await novedadesModel.getNovedades();
    res.render('admin/novedades',{
        layout: 'admin/layout',
        usuario : req.session.nombre,
        novedades
    });
})

router.get('/eliminar/:id', async(req, res, nex) => {
    const id = req.params.id;
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades')
})

router.get('/agregar', async(req, res, nex) => {
    res.render('admin/agregar', {
        layout : 'admin/layout'
    })
})

router.post('/agregar', async (req,res,next) => {
    try{
        if(req.body.titulo != "" && req.cuerpo != "" && req.fecha != "" && req.dir != "" ) {
            await novedadesModel.insertNovedad(req.body);
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout : 'admin/layout',
                error : true,
                message : 'Todos los campos son requeridos'
            })

        }
    } catch(error) {
        console.log(error)
        res.render('admin/agregar', {
            layout : 'admin/layout',
            error : true,
            message : 'No se cargo la novedad'
        })
    }
})

router.get('/modificar/:id', async(req,res,next)=> {
    var id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(id);
    res.render('admin/modificar' ,{
        layout : 'admin/layout',
        novedad
    })
})

router.post('/modificar', async (req, res,next) => {
    try{
        var obj = {
            titulo: req.body.titulo,
            fecha: req.body.fecha,
            cuerpo: req.body.cuerpo,
            dir:req.body.dir,
            num:req.body.num
        }
        console.log(obj)
        await novedadesModel.modificarNovedadById(obj,req.body.id);
        res.redirect('/admin/novedades');
       } catch (error) {
        console.log(error)
        res.render('admin/modificar' , {
            layout : 'admin/modificar',
            error : true,
            message : 'No se modifico la novedad'
        })
       }       
})

module.exports = router ;