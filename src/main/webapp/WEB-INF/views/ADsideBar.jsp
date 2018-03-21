<%-- 
    Document   : ADhead
    Created on : Mar 20, 2018, 11:47:10 AM
    Author     : Istiaque && Emran
--%>
<!--side bar-->
<div class="sidebar" data-color="orange" data-image="http://demos.creative-tim.com/light-bootstrap-dashboard-pro/assets/img/sidebar-5.jpg">
    <!--
Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

Tip 2: you can also add an image using data-image tag
    -->
    <div class="sidebar-wrapper">
        <div class="logo">
            <a href="#" class="simple-text logo-mini">
                BDE
            </a>
            <a href="#" class="simple-text logo-normal">
                Basic Data Entry
            </a>
        </div>
        <div class="user">
            <div class="photo">
                <!--    <img src="http://demos.creative-tim.com/light-bootstrap-dashboard-pro/assets/img/default-avatar.png" />-->
            </div>
            <div class="info ">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>Admin
                        <b class="caret"></b>
                    </span>
                </a>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li>
                            <a class="profile-dropdown" href="#pablo">
                                <span class="sidebar-mini">AP</span>
                                <span class="sidebar-normal">Admin Profile</span>
                            </a>
                        </li>
                        <li>
                            <a class="profile-dropdown" href="#pablo">
                                <span class="sidebar-mini">EP</span>
                                <span class="sidebar-normal">Edit Profile</span>
                            </a>
                        </li>
                        <li>
                            <a class="profile-dropdown" href="#pablo">
                                <span class="sidebar-mini">S</span>
                                <span class="sidebar-normal">Settings</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li class="nav-item ">
                <a class="nav-link" href="<%=request.getContextPath()%>/dashboard/dashboard">
                    <i class="nc-icon nc-chart-pie-35"></i>
                    <p>Dashboard</p>
<!--                    <form method="post" action="<%=request.getContextPath()%>/AdminLoginForm">
                        <input type="submit" value="Dashboard" class="link"/>
                    </form>-->
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/rentecar/rentecar">
                    <i class="nc-icon nc-app"></i>
                    <p>
                        Rent-e-Car
                        <!--<b class="caret"></b>-->
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/outlet/outlet">
                    <i class="nc-icon nc-app"></i>
                    <p>
                        Outleet
                        <!--<b class="caret"></b>-->
                    </p>
                </a>
            </li>
        </ul>
    </div>
</div>