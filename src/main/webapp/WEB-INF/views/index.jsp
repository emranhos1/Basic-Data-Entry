<%-- 
    Document   : index
    Created on : Mar 17, 2018, 1:34:17 PM
    Author     : Dell
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>${title}</title>

        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link href="<%=request.getContextPath()%>/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/light-bootstrap-dashboard.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/demo.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/w3.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="wrapper wrapper-full-page">
            <!--             Navbar 
                        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute">
                            <div class="container">
                                <div class="navbar-wrapper">
                                    <a class="navbar-brand" href="#pablo">Light Bootstrap Dashboard Pro</a>
                                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-bar burger-lines"></span>
                                        <span class="navbar-toggler-bar burger-lines"></span>
                                        <span class="navbar-toggler-bar burger-lines"></span>
                                    </button>
                                </div>
                                <div class="collapse navbar-collapse justify-content-end" id="navbar">
                                    <ul class="navbar-nav">
                                        <li class="nav-item">
                                            <a href="../dashboard.html" class="nav-link">
                                                <i class="nc-icon nc-chart-pie-35"></i> Dashboard
                                            </a>
                                        </li>
                                        <li class="nav-item ">
                                            <a href="register.html" class="nav-link">
                                                <i class="nc-icon nc-badge"></i> Register
                                            </a>
                                        </li>
                                        <li class="nav-item  active ">
                                            <a href="login.html" class="nav-link">
                                                <i class="nc-icon nc-mobile"></i> Login
                                            </a>
                                        </li>
                                        <li class="nav-item ">
                                            <a href="lock.html" class="nav-link">
                                                <i class="nc-icon nc-key-25"></i> Lock
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                         End Navbar -->
            <div class="full-page  section-image" data-color="black" data-image="<%=request.getContextPath()%>/static/image/full-screen-image-2.jpg">
                <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
                <div class="content">
                    <div class="container">
                        <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                            <div class="card card-login card-hidden">
                                <div class="card-header ">
                                    <h3 class="header text-center">${headar}</h3>
                                </div>
                                <div class="card-body ">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <form method="post" action="<%=request.getContextPath()%>/rentCarReg">
                                                <button type="submit" class="btn btn-warning btn-wd w-100 btn-lg border-0 rounded-0">Rent-e-car</button>
                                            </form>

                                        </div>
                                        <div class="form-group">
                                            <form method="post" action="<%=request.getContextPath()%>/outletReg">
                                                <button  class="btn btn-google btn-wd w-100 btn-lg border-0 rounded-0">Outlet</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div><!--
                        </form>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="<%=request.getContextPath()%>/static/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/static/js/demo.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            demo.checkFullPageBackgroundImage();

            setTimeout(function () {
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script>
</html>
