/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mx.piarquitectos.piarquitectos.is.controller;

import com.mx.piarquitectos.piarquitectos.is.mapeo.Herramientas;
import com.mx.piarquitectos.piarquitectos.is.model.HerramientasDAO;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author hectorsama
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

    @RequestMapping(value = "/asignar", method = RequestMethod.GET)
    public String asignar(ModelMap model) {
        System.out.println("--------------->PASO 1");
        return "asignacion";

    }

    @RequestMapping(value = "/guardarHerramienta", method = RequestMethod.POST)
    public ModelAndView guardarHerramienta(HttpServletRequest request, ModelMap model, @RequestParam("file") MultipartFile file) throws ParseException, IOException {
        System.out.println("--------------->PASO 2");
        SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
        String no_serie = request.getParameter("no_serie");
        String modelo = request.getParameter("modelo");
        String marca = request.getParameter("marca");
        String fecha_alta = request.getParameter("fecha_alta");

        String fecha_baja = request.getParameter("fecha_baja");

        String tipo = request.getParameter("tipo");
        String subtipo = request.getParameter("subtipo");
        Herramientas herramientas = new Herramientas();
        herramientas.setNo_serie(no_serie);
        herramientas.setModelo(modelo);
        herramientas.setMarca(marca);
        herramientas.setTipo(tipo);
        herramientas.setSubtipo(subtipo);
        if (!file.isEmpty()) {
            herramientas.setFoto1(file.getBytes());
        }
        if (fecha_alta != null) {
            Date date1 = formatter1.parse(fecha_alta);
            herramientas.setFecha_alta(date1);
        }
        if (fecha_baja != null) {
            Date date2 = formatter1.parse(fecha_baja);
            herramientas.setFecha_baja(date2);
        }

        herramienta_bd.guardar(herramientas);

        return new ModelAndView("confirmacion", model);
    }

    @RequestMapping(value = "/asignarHerramienta", method = RequestMethod.GET)
    public ModelAndView asignarHerramienta(ModelMap model) {
        List<Herramientas> herramientas = herramienta_bd.getHerramientas();
        int n = 0;
        String s = "";
        Herramientas h1 = new Herramientas();
        h1.setUsers(herramientas);
 
        //System.out.println("--------< "+n);
          model.addAttribute("lista", h1);
        //ñmodel.addAttribute("marca", s);

        return new ModelAndView("asignacion", model);

    }
}
