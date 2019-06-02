<%-- 
    Document   : inicio
    Created on : 7/05/2019, 10:02:11 AM
    Author     : 52558
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>PiArquitectos</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/freelancer.min.css" rel="stylesheet">

    </head>

    <body id="page-top" class="masthead bg-primary text-white text-center">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}/">Pi Arquitectos</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </nav>
        <div class="container">
            HOLA

        </div>

        <section class="portfolio" id="asignar">
            <div class="container">
                <h4 class="text-center  text-secondary " >Herramientas Almacenadas</h4>
                <hr class="star-light mb-5">
                <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet"/>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="bootstrap-data-table-panel">
                                <div class="table-responsive">
                                    <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Codigo Barras</th>
                                                <th>Marca</th>
                                                <th>RFC</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${lista.herramientas}" var="herramientas" varStatus="tagStatus">
                                                <tr >
                                                    <td>${herramientas.codigo_barra}</td>
                                                    <td><input type="text"/>  </td>
                                                    <td>    <button id="button" class="btn btn-primary">Asignar</button> </td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <tr >
                                <td data-th-text="${codigo_barra}"></td>
                                <td data-th-text="${marca}"></td>
                                <td    <button id="button" class="btn btn-primary">Asignar</button> </td>

                            </tr>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div> 
            </div>
        </section>

    </body>

</html>
