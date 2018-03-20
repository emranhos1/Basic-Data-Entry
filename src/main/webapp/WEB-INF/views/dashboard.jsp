<%-- 
    Document   : dashboard
    Created on : Mar 20, 2018, 12:01:48 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="ADhead.jsp" %>
    </head>

    <body>
        <div class="wrapper">
            <!--side bar-->
            <%@include file="ADsideBar.jsp" %>

            <div class="main-panel">
                <!--navbar-->
                <%@include file="ADnavbar.jsp" %>

                <!--body part-->
                <div class="content">
                    <div class="container-fluid">
                        <table class="table table-striped table-dark">
                            <thead>
                            <h4 class="text-center">Rent E Car</h4>
                            <tr>
                                <th scope="col">SL</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Mobile No</th>
                                <th scope="col">NID No</th>
                                <th scope="col">Business Name</th>
                                <th scope="col">Tin No</th>
                                <th scope="col">Trad Licence</th>
                            </tr>
                            </thead>
                            <tbody id="allRentECar">

                            </tbody>
                        </table>
                    </div>
                </div>
                <!--footer-->
                <%@include file="ADfooter.jsp" %>
            </div>
        </div>
    </body>
<!--    <script>

        $(window).on("load", function () {
            $.ajax({
                type: "POST",
                url: "../AllShopingMallServlet",
                success: function (data) {
                    $("#allRentECar").show();
                    $("#allRentECar").append(data);
                }
            });
        });
    </script>-->

    <!--    <script type="text/javascript">
            $(document).ready(function () {
                // Javascript method's body can be found in assets/js/demos.js
                demo.initDashboardPageCharts();
    
                demo.showNotification();
    
                demo.initVectorMap();
    
            });
        </script>-->

</html>
