<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__close">+</div>
    <ul class="offcanvas__widget">
        <li><span class="icon_search search-switch"></span></li>
        <li><a href="#"><span class="icon_heart_alt"></span>
            <div class="tip">2</div>
        </a></li>
        <li>
            <a href="cart">
                <span class="icon_bag_alt"></span>
                <c:set var="cart" value="${sessionScope['cart']}"/>
                <div class="tip">${cart.totalItems}</div>
            </a>
        </li>
    </ul>
    <div class="offcanvas__logo">
        <a href="/motorbike_shop/"><img src="images/setting/logo/${SITE_LOGO}" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <a href="login">Đăng nhập</a>
    </div>
</div>

<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-2">
                <div class="header__logo">
                    <a href="/motorbike_shop/"><img src="images/setting/logo/${SITE_LOGO}" alt=""></a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <nav class="header__menu">
                    <ul>
                        <li class="active">
                            <a href="/motorbike_shop/">Trang chủ</a>
                        </li>
                        <li>
                            <a href="search">Xe Máy</a>
                            <ul class="dropdown">
                                <li>
                                    <a href="search">Xe số</a>
                                </li>
                                <li>
                                    <a href="search">Xe tay ga</a>
                                </li>
                                <li>
                                    <a href="search">Xe côn tay</a>
                                </li>
                                <li>
                                    <a href="search">Xe phân khối lớn</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__right">
                    <c:if test="${loggedCustomer == null}">
                        <div class="header__right__auth">
                            <a href="login">Đăng nhập</a>
                        </div>
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            <li>
                                <a href="cart">
                                    <span class="icon_bag_alt"></span>
                                    <c:set var="cart" value="${sessionScope['cart']}"/>
                                    <div class="tip">${cart.totalItems}</div>
                                </a>
                            </li>
                        </ul>
                    </c:if>
                    <c:if test="${loggedCustomer != null}">
                        <ul class="header__right__widget">
                        <span class="header__menu">
                            <ul>
                                <li><a href="account-info"><i class="fa fa-user"></i> ${loggedCustomer.firstName}</a>
                                    <ul class="dropdown">
                                        <li><a href="account-info">Tài khoản</a></li>
                                        <li><a href="frontend/order.jsp">Đơn mua</a></li>
                                        <li><a href="logout">Đăng xuất</a></li>
                                    </ul>
                                </li>
                                <li><span class="icon_search search-switch"></span></li>
                                <li>
                                    <a href="cart">
                                        <span class="icon_bag_alt"></span>
                                        <c:set var="cart" value="${sessionScope['cart']}"/>
                                        <div class="tip">${cart.totalItems}</div>
                                    </a>
                                </li>
                            </ul>
                        </span>
                        </ul>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
