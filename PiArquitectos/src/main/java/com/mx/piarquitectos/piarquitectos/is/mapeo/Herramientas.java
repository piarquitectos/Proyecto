/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mx.piarquitectos.piarquitectos.is.mapeo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author 52558
 */
@Entity
@Table(name = "Herramientas")
public class Herramientas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "precio")
    private int precio;
    @Column(name = "no_serie")
    private String no_serie;
    @Column(name = "modelo")
    private String modelo;
    @Column(name = "marca")
    private String marca;
    @Column(name = "fecha_alta")
    private Date fecha_alta;
    @Column(name = "fecha_baja")
    private Date fecha_baja;
    @Column(name = "fecha_reparacion")
    private Date fecha_reparacion;
    @Column(name = "motivo_baja")
    private String motivo_baja;
    @Column(name = "tipo")
    private String tipo;
    @Column(name = "subtipo")
    private String subtipo;
    @Column(name = "codigo_barra")
    private int codigo_barra;

    public int getId() {
        return id;
    }

    public String getNo_serie() {
        return no_serie;
    }

    public void setNo_serie(String no_serie) {
        this.no_serie = no_serie;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public Date getFecha_alta() {
        return fecha_alta;
    }

    public void setFecha_alta(Date fecha_alta) {
        this.fecha_alta = fecha_alta;
    }

    public Date getFecha_baja() {
        return fecha_baja;
    }

    public void setFecha_baja(Date fecha_baja) {
        this.fecha_baja = fecha_baja;
    }

    public Date getFecha_reparacion() {
        return fecha_reparacion;
    }

    public void setFecha_reparacion(Date fecha_reparacion) {
        this.fecha_reparacion = fecha_reparacion;
    }

    public String getMotivo_baja() {
        return motivo_baja;
    }

    public void setMotivo_baja(String motivo_baja) {
        this.motivo_baja = motivo_baja;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getSubtipo() {
        return subtipo;
    }

    public void setSubtipo(String subtipo) {
        this.subtipo = subtipo;
    }

    public int getCodigo_barra() {
        return codigo_barra;
    }

    public void setCodigo_barra(int codigo_barra) {
        this.codigo_barra = codigo_barra;
    }

}
