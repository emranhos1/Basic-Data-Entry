<%-- 
    Document   : sucess
    Created on : Mar 17, 2018, 5:16:28 PM
    Author     : Istiaque && Emran
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
        <script src="<%=request.getContextPath()%>/static/js/sweetalert.min.js" type="text/javascript"></script>
    </head>

    <body>
        <div class="wrapper wrapper-full-page">

            <div class="full-page  section-image" data-color="black" data-image="<%=request.getContextPath()%>/static/image/full-screen-image-2.jpg">
                <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
                <div class="content">
                    <div class="container">
                        <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                            <div class="card card-login card-hidden">
                                <div class="card-header ">
                                    <!--<h3 class="header text-center"></h3>-->
                                </div>
                                <div class="card-body ">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <form method="post" action="<%=request.getContextPath()%>/rentCarReg">
                                                <button type="submit" class="btn btn-warning btn-wd w-100 btn-lg border-0 rounded-0">Rent-e-car</button>
                                            </form>

                                        </div>
                                        <div class="form-group">
                                            <form id="from1" method="post" action="<%=request.getContextPath()%>/outlet/outletReg">
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
                $('.card').removeClass('card-hidden');
            }, 3000)
        });</script>
    <script>

        swal({
            title: 'Registration Complate',
            type: 'success',
            icon: "success",
            showCancelButton: true,
            dangerMode: true,
            timer: 3000
        }).then(function () {
//            $('.card').removeClass('card-hidden');
            window.location = "<%=request.getContextPath()%>/home";
        });
    </script>
</html>

