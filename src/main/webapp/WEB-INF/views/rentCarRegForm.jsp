<%-- 
    Document   : rentCarReg
    Created on : Mar 17, 2018, 2:49:24 PM
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
                <div class="content" id="kjjh">
                    <!--<div class="container">-->
                        <div class="row">
                            <div class="col-md-auto col-sm-auto"id="cont" >
                                <!--<div class="card card-login card-hidden">-->
                                <form:form class="form" method="POST" modelAttribute="rentEcar" action="${pathAction}" role="form" >
                                    <div class="card">
                                        <div class="card-header ">
                                            <div class="card-header text-center">
                                                <h4 class="card-title">Insert Your Information</h4>
                                            </div>
                                        </div>
                                        <div class="card-body ">
                                            <form:hidden path="rent_e_car_id" />
                                            <div class="row">
                                                <div class="col-md-6 pr-1">
                                                    <div class="form-group">
                                                        <label>First Name</label>
                                                        <form:input type="text" path="first_name" class="form-control" placeholder="First Name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6 pl-1">
                                                    <div class="form-group">
                                                        <label>Last Name</label>
                                                        <form:input type="text"  path="last_name" class="form-control" placeholder="Last Name" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 pr-1">
                                                    <div class="form-group">
                                                        <label>Email address</label>
                                                        <form:input type="email" path="email" class="form-control" placeholder="Email address"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 pl-1">
                                                    <div class="form-group">
                                                        <label>Password</label>
                                                        <form:input type="text" path="Password" class="form-control" placeholder="Password" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 pr-1">
                                                    <div class="form-group">
                                                        <label>Business name</label>
                                                        <form:input type="text" path="business_name" class="form-control" placeholder="Business name"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 pl-1">
                                                    <div class="form-group">
                                                        <label>Mobile no</label>
                                                        <form:input type="text" path="mobile_no" class="form-control" placeholder="Mobile no"/>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Trad licence</label>
                                                        <form:input type="text" path="trad_licence" class="form-control" placeholder="Trad licence"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>TIN no</label>
                                                        <form:input type="text" path="tin_no" class="form-control" placeholder="TIN no" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>NID no</label>
                                                        <form:input rows="4" path="nid_no" cols="80" class="form-control" placeholder="NID no" />
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-info btn-fill pull-right text-center">Save</button>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </form:form>
                                <!--</div>-->
                            </div>
                        </div>
                    <!--</div>-->
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
            $(".content").hide();
            setTimeout(function () {
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
                $(".content").show();
            }, 700)
        });
    </script>
</html>
