/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mx.piarquitectos.piarquitectos.is.controller;

import com.mx.piarquitectos.piarquitectos.is.mapeo.Herramientas;
import com.mx.piarquitectos.piarquitectos.is.model.HerramientasDAO;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author 52558
 */
@Controller
public class Controlador {

    @Autowired
    private HerramientasDAO herramienta_bd;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String usuario(ModelMap model) {
         System.out.println("--------------->PASO 1");
        return "inicio";

    }

    @RequestMapping(value = "/guardarHerramienta", method = RequestMethod.POST)
    public ModelAndView guardarHerramienta(HttpServletRequest request, ModelMap model) throws ParseException {
        System.out.println("--------------->PASO 2");
        SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");
        String no_serie = request.getParameter("modelo");
        String modelo = request.getParameter("modelo");
        String marca = request.getParameter("marca");        
        String fecha_alta = request.getParameter("fecha_alta"); 
        Date date1=formatter1.parse(fecha_alta);
        String fecha_baja = request.getParameter("fecha_baja");
        Date date2=formatter1.parse(fecha_baja);
        String tipo = request.getParameter("tipo");
        String subtipo = request.getParameter("subtipo");
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        Herramientas herramientas = new Herramientas();
        herramientas.setNo_serie(no_serie);
        herramientas.setModelo(modelo);
        herramientas.setMarca(marca);
        herramientas.setFecha_alta(date1);
        herramientas.setFecha_baja(date2    );
        herramientas.setTipo(tipo);
        herramientas.setSubtipo(subtipo);
        herramientas.setCodigo_barra(codigo);
        herramienta_bd.guardar(herramientas);
        return new ModelAndView("confirmacion", model);
    }
}
