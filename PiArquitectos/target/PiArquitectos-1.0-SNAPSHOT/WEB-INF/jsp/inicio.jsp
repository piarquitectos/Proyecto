<%-- 
    Document   : inicio
    Created on : 7/05/2019, 10:02:11 AM
    Author     : 52558
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Pi Arquitectos</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Herramientas</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#asignar">Asignar Herramientas</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Header -->
        <header class="masthead bg-primary text-white text-center">
            <div class="container">
                <img class="img-fluid mb-5 d-block mx-auto" src="img/profile.png" alt="">
                <h1 class="text-uppercase mb-0">Pi Arquitectos</h1>
                <hr class="star-light">

            </div>
        </header>

        <!-- Portfolio Grid Section -->

        <section class="portfolio" id="portfolio">
            <div class="container">
                <h2 class="text-center text-uppercase text-secondary mb-0" onclick="https://www.youtube.com/?hl=es-419&gl=MX">Herramientas</h2>
                <hr class="star-dark mb-5">
                <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet"/>
                <form  enctype="multipart/form-data" action="${pageContext.request.contextPath}/guardarHerramienta" method="POST" >
                    <div class="col-md-3 mb-3">
                        <label for="validationTooltip04">No. Serie</label>
                        <input type="number" class="form-control" name="no_serie" id="no_serie" >
                        <div class="invalid-tooltip">
                            Please provide a valid state.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="validationTooltip04">Modelo</label>
                        <input type="text" class="form-control" name="modelo" id="modelo" >
                        <div class="invalid-tooltip">
                            Please provide a valid state.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="validationTooltip04">Marca</label>
                        <input type="text" class="form-control" name="marca" id="marca" >
                        <div class="invalid-tooltip">
                            Please provide a valid state.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="validationTooltip04">Fecha de Alta</label>
                        <input type="date" class="form-control" name="fecha_alta" id="fecha_alta" >
                        <div class="invalid-tooltip">
                            Please provide a valid state.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="validationTooltip04">Fecha de Baja</label>
                        <input type="date" class="form-control"  name="fecha_baja" id="fecha_baja" >
                        <div class="invalid-tooltip">
                            Please provide a valid state.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="validationTooltip04">Tipo</label>

                        <select class="form-control" name="tipo" id="tipo">
                            <option value="mano">Herramienta de Mano</option>
                            <option value="electrica">Herramienta Electrica</option>
                        </select>
                    </div>

                    <div class="col-md-3 mb-3">
                        <div class="form-group">
                            <label for="comment">Subtipo</label>
                            <textarea class="form-control" rows="5"   name="subtipo" id="subtipo"></textarea>
                        </div>
                    </div>

                    <div class="col-md-3 mb-3">
                        <div class="form-group">
                            Foto: <input type="file" name="file" id="file">
                        </div>
                    </div>
                    
                    
                    <div class="col-md-3 mb-3">
                        <div class="form-group">
                            Photo: <input type="file" name="file2" id="file2">
                        </div>
                    </div>
                    
                    <div class="col-md-3 mb-3">
                        <div class="form-group">
                            Foto: <input type="file" name="file3" id="file3">
                        </div>
                    </div>

                    <button id="button" class="btn btn-primary">Agregar</button>
                </form>
            </div>

        </section>


        <section class="portfolio" id="asignar">
            <div class="container">
                <h2 class="text-center text-uppercase text-secondary mb-0" onclick="https://www.youtube.com/?hl=es-419&gl=MX">Asignación</h2>
                <hr class="star-dark mb-5">
                <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet"/>
                <form action="${pageContext.request.contextPath}/asignarHerramienta" method="GET">
                    <button id="button" class="btn btn-primary btn-lg btn-block login-button">Agregar</button>
                </form>
            </div>
        </section>
        <!-- Footer -->
        <footer class="footer text-center">
            <div class="container">
                <div class="row">


                    <div class="col-md-4 justify-content-center">
                        <h4 class="text-uppercase mb-4 text-center">Prototipo</h4>
                    </div>
                </div>
            </div>
        </footer>

        <div class="copyright py-4 text-center text-white">
            <div class="container">
                <small>Copyright &copy; Your Website 2019</small>
            </div>
        </div>

        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
        <div class="scroll-to-top d-lg-none position-fixed ">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>

        <!-- Portfolio Modals -->

        <!-- Portfolio Modal 1 -->
        <div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
            <div class="portfolio-modal-dialog bg-white">
                <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                    <i class="fa fa-3x fa-times"></i>
                </a>
                <div class="container text-center">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                            <hr class="star-dark mb-5">
                            <img class="img-fluid mb-5" src="img/portfolio/cabin.png" alt="">
                            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                                <i class="fa fa-close"></i>
                                Close Project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 2 -->
        <div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
            <div class="portfolio-modal-dialog bg-white">
                <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                    <i class="fa fa-3x fa-times"></i>
                </a>
                <div class="container text-center">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                            <hr class="star-dark mb-5">
                            <img class="img-fluid mb-5" src="img/portfolio/cake.png" alt="">
                            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                                <i class="fa fa-close"></i>
                                Close Project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 3 -->
        <div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
            <div class="portfolio-modal-dialog bg-white">
                <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                    <i class="fa fa-3x fa-times"></i>
                </a>
                <div class="container text-center">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                            <hr class="star-dark mb-5">
                            <img class="img-fluid mb-5" src="img/portfolio/circus.png" alt="">
                            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                                <i class="fa fa-close"></i>
                                Close Project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 4 -->
        <div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
            <div class="portfolio-modal-dialog bg-white">
                <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                    <i class="fa fa-3x fa-times"></i>
                </a>
                <div class="container text-center">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                            <hr class="star-dark mb-5">
                            <img class="img-fluid mb-5" src="img/portfolio/game.png" alt="">
                            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                                <i class="fa fa-close"></i>
                                Close Project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 5 -->
        <div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
            <div class="portfolio-modal-dialog bg-white">
                <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                    <i class="fa fa-3x fa-times"></i>
                </a>
                <div class="container text-center">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                            <hr class="star-dark mb-5">
                            <img class="img-fluid mb-5" src="img/portfolio/safe.png" alt="">
                            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                                <i class="fa fa-close"></i>
                                Close Project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modal 6 -->
        <div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
            <div class="portfolio-modal-dialog bg-white">
                <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
                    <i class="fa fa-3x fa-times"></i>
                </a>
                <div class="container text-center">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                            <hr class="star-dark mb-5">
                            <img class="img-fluid mb-5" src="img/portfolio/submarine.png" alt="">
                            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                                <i class="fa fa-close"></i>
                                Close Project</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Contact Form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/freelancer.min.js"></script>

    </body>

</html>
