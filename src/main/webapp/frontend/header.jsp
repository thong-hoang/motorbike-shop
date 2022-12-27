<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="preloder">
    <div class="loader"></div>
</div>

<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__close">+</div>
    <ul class="offcanvas__widget">
        <li><span class="icon_search search-switch"></span></li>
        <li><a href="#"><span class="icon_heart_alt"></span>
            <div class="tip">2</div>
        </a></li>
        <li><a href="#"><span class="icon_bag_alt"></span>
            <div class="tip">2</div>
        </a></li>
    </ul>
    <div class="offcanvas__logo">
        <a href="/motorbike_shop/"><img src="images/logo/logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <a href="frontend/login.jsp">Đăng nhập</a>
    </div>
</div>

<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-2">
                <div class="header__logo">
                    <a href="/motorbike_shop/"><img src="images/logo/logo.png" alt=""></a>
<%--                    <a href="/motorbike_shop/"><img src="${logo}" alt=""></a>--%>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./index.html">Trang chủ</a></li>
                        <li><a href="./shop2.html">Xe Máy</a>
                            <ul class="dropdown">
                                <li><a href="./shop2.html">Xe số</a></li>
                                <li><a href="./shop2.html">Xe tay ga</a></li>
                                <li><a href="./shop2.html">Xe côn tay</a></li>
                                <li><a href="./shop2.html">Xe phân khối lớn</a></li>
                            </ul>
                        </li>
                        <!--<li><a href="./blog.html">Tin tức</a></li>
                        <li><a href="./contact.html">Liên hệ</a></li>-->
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__right">

                    <div class="header__right__auth">
                        <a href="frontend/login.jsp">Đăng nhập</a>
                    </div>
                    <ul class="header__right__widget">
                        <li><span class="icon_search search-switch"></span></li>
                        <li><a href="./shop-cart.html"><span class="icon_bag_alt"></span>
                            <div class="tip">2</div>
                        </a></li>
                    </ul>

                    <!-- đăng nhập thành công -->
                    <!-- <ul class="header__right__widget">
                        <span class="header__menu">
                            <ul>
                                <li><a href="#">hoàng phạm thông</a>
                                    <ul class="dropdown">
                                        <li><a href="./account.html">Tài khoản</a></li>
                                        <li><a href="./order.html">Đơn mua</a></li>
                                        <li><a href="#">Đăng xuất</a></li>
                                    </ul>
                                </li>
                                <li><span class="icon_search search-switch"></span></li>
                                <li>
                                    <a href="./shop-cart.html">
                                        <span class="icon_bag_alt"></span>
                                        <div class="tip">2</div>
                                    </a>
                                </li>
                            </ul>
                        </span>
                    </ul> -->

                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
