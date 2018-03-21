<%-- 
    Document   : adminLogin
    Created on : Mar 19, 2018, 1:02:06 PM
    Author     : Istiaque && Emran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>${title}</title>

        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link href="<%=request.getContextPath()%>/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/demo.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/light-bootstrap-dashboard.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/static/css/w3.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <!--<div class="wrapper wrapper-full-page">-->

        <div class="full-page  section-image" data-color="black" data-image="<%=request.getContextPath()%>/static/image/full-screen-image-2.jpg">
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
            <div class="content">
                <div class="container">
                    <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                        <form:form class="form" method="POST" modelAttribute="admin" action="${pathAction}" role="form">
                            <div class="card card-login card-hidden">
                                <div class="card-header ">
                                    <h3 class="header text-center">Login</h3>
                                </div>
                                <div class="card-body ">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <!--<label>Email address</label>-->
                                            <form:input type="text" path="admin_username" class="form-control" placeholder="Email address" />
                                        </div>
                                        <div class="form-group">
                                            <!--<label>Password</label>-->
                                            <form:input type="text"  path="admin_password" class="form-control" placeholder="Password" />
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer ml-auto mr-auto">
                                    <button type="submit" class="btn btn-warning btn-wd">Login</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
        <!--</div>-->
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
