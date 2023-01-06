<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VTV</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="frontend/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="frontend/css/style.css" type="text/css">
</head>

<body>

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
        <a href="/motorbike_shop/"><img src="images/setting/logo/${SITE_LOGO}" alt=""></a>
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
                            <c:forEach var="parent" items="${parents}">
                                <a href="search?keyword=${parent.name}">${parent.name}</a>
                            </c:forEach>

                            <ul class="dropdown">
                                <c:forEach items="${childs}" var="child">
                                    <li>
                                        <a href="search?keyword=${child.name}">${child.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <!--<li><a href="./blog.html">Tin tức</a></li>
                        <li><a href="./contact.html">Liên hệ</a></li>-->
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
                            <li><a href="frontend/cart.jsp"><span class="icon_bag_alt"></span>
                                <div class="tip">2</div>
                            </a></li>
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
                                    <a href="frontend/cart.jsp">
                                        <span class="icon_bag_alt"></span>
                                        <div class="tip">2</div>
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

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 p-0">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <c:forEach items="${banners}" var="banner" varStatus="status">
                            <div class="carousel-item ${status.first ? 'active' : ''}">
                                <img class="d-block w-100" src="images/banner/${banner.id}/${banner.imagePath}"
                                     alt="slide">
                            </div>
                        </c:forEach>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Gợi ý hôm nay</h4>
                </div>
            </div>
        </div>
        <div class="row property__gallery">
            <div class="col-lg-4 col-md-6 col-sm-6 mix xeso">
                <div class="product__item sale">
                    <div class="product__item__pic set-bg"
                         data-setbg="images/yamaha/xeso/1/jupiter-pearl-white-004.png">
                        <div class="label sale">giảm giá</div>
                        <ul class="product__hover">
                            <li><a href="images/yamaha/xeso/1/jupiter-pearl-white-004.png"
                                   class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Jupiter</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">17.440.000 VNĐ <span> 18.840.000 VNĐ</span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 mix xecontay">
                <div class="product__item">
                    <div class="product__item__pic set-bg"
                         data-setbg="images/yamaha/xecontay/1/born-to-ride-004.png">
                        <div class="label new">mới</div>
                        <ul class="product__hover">
                            <li><a href="images/honda/xecontay/1/winner-x-tieuchuan-2022.jpg"
                                   class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">EXCITER 155 VVA PHIÊN BẢN GIỚI HẠN</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">51.990.000 VNĐ</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 mix xephankhoilon">
                <div class="product__item">
                    <div class="product__item__pic set-bg"
                         data-setbg="images/yamaha/xephankhoilon/1/2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1.png">
                        <div class="label new">mới</div>
                        <ul class="product__hover">
                            <li>
                                <a href="images/yamaha/xephankhoilon/1/2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1.png"
                                   class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Rebel 1100</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">449.000.000 VNĐ</div>
                    </div>
                </div>

            </div>
        </div>
        <div class="row justify-content-center">
            <div class="btn btn-light text-black">
                <a href="frontend/shop.jsp" class="border-btn">Xem thêm</a>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

<%@ page contentType="text/html;charset=UTF-8" %>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div>
                        <p class="font-weight-bold">${SITE_NAME}.</p>
                        <p>Cơ quan cấp: Phòng Đăng ký kinh doanh – Sở Kế hoạch và Đầu tư TP Hồ Chí Minh
                        <p>Địa chỉ: ${SITE_ADDRESS}</p>
                    </div>
                    <div class="footer__payment">
                        <a><img src="images/general/logoSaleNoti.png" alt="" style="width: 150px;"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <a href="#">
                        <h6>Liên hệ</h6>
                    </a>
                    <ul>
                        <li><a>Hotline (miễn phí): ${SITE_PHONE}</a></li>
                        <li><a>Email: ${SITE_EMAIL}</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <a href="#">
                        <h6>Chính sách bảo mật</h6>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright__text">
                    <p>Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script>
                        Copyright by VTV VietNam
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Tìm kiếm">
        </form>
    </div>
</div>

<script src="frontend/js/jquery-3.3.1.min.js"></script>
<script src="frontend/js/bootstrap.min.js"></script>
<script src="frontend/js/jquery.magnific-popup.min.js"></script>
<script src="frontend/js/jquery-ui.min.js"></script>
<script src="frontend/js/mixitup.min.js"></script>
<script src="frontend/js/jquery.countdown.min.js"></script>
<script src="frontend/js/jquery.slicknav.js"></script>
<script src="frontend/js/owl.carousel.min.js"></script>
<script src="frontend/js/jquery.nicescroll.min.js"></script>
<script src="frontend/js/main.js"></script>
</body>

</html>
