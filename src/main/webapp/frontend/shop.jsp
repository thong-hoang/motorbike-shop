<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VTV | Xe máy</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/shop.css" type="text/css">
</head>

<body>
<jsp:include page="header.jsp"/>

<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="/motorbike_shop/"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Sản phẩm</span>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="shop__sidebar">
                    <div class="sidebar__categories">
                        <div class="section-title">
                            <h4>Phân loại</h4>
                        </div>
                        <div class="categories__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading active">
                                        <a data-toggle="collapse" data-target="#collapseOne">Xe số</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Honda</a></li>
                                                <li><a href="#">Yamaha</a></li>
                                                <li><a href="#">Future</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Xe tay ga</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Honda</a></li>
                                                <li><a href="#">Yamaha</a></li>
                                                <li><a href="#">Future</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Xe côn tay</a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Honda</a></li>
                                                <li><a href="#">Yamaha</a></li>
                                                <li><a href="#">Future</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">Xe phân khối lớn</a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Honda</a></li>
                                                <li><a href="#">Yamaha</a></li>
                                                <li><a href="#">Future</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="sidebar__filter">
                        <div class="section-title">
                            <h4>Lọc theo giá</h4>
                            <label>(VNĐ)</label>
                        </div>
                        <div class="filter-range-wrap">
                            <div class="price-range  ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="15000000" data-max="999000000"></div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <p>Từ:</p>
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <a class="btn-filter" href="#">Lọc</a>
                    </div>

                    <div class="sidebar__color">
                        <div class="section-title">
                            <h4>Lọc theo màu</h4>
                        </div>
                        <div class="size__list color__list">
                            <label for="black">
                                Đen
                                <input type="checkbox" id="black">
                                <span class="checkmark"></span>
                            </label>
                            <label for="whites">
                                Trắng
                                <input type="checkbox" id="whites">
                                <span class="checkmark"></span>
                            </label>
                            <label for="reds">
                                Đỏ
                                <input type="checkbox" id="reds">
                                <span class="checkmark"></span>
                            </label>
                            <label for="greys">
                                Xám
                                <input type="checkbox" id="greys">
                                <span class="checkmark"></span>
                            </label>
                            <label for="blues">
                                Xanh dương
                                <input type="checkbox" id="blues">
                                <span class="checkmark"></span>
                            </label>
                            <label for="beige">
                                Nâu
                                <input type="checkbox" id="beige">
                                <span class="checkmark"></span>
                            </label>
                            <label for="greens">
                                Xanh lá
                                <input type="checkbox" id="greens">
                                <span class="checkmark"></span>
                            </label>
                            <label for="yellows">
                                Vàng
                                <input type="checkbox" id="yellows">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xeso/7/sirius-dark-blue-007.png">
                                <div class="label new">Mới</div>
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xeso/7/sirius-dark-blue-007.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="product-details.html">Sirius xanh đen</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">27.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xeso/11/sirius-black-drum-004-1.png">
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xeso/11/sirius-black-drum-004-1.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Sirius Drum</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">30.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xecontay/7/ex155-yellow-grey-004.png">
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xecontay/7/ex155-yellow-grey-004.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Exciter 155</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">47.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png">
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Exciter 150 pearl</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">49.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item sale">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xeso/3/jupiter-finn-urban-blue-004.png">
                                <div class="label">Giảm giá</div>
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xeso/3/jupiter-finn-urban-blue-004.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Jupiter finn urban</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price"><span>31.000.000</span> 29.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xetayga/7/latte-dark-grey-004.png">
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xetayga/7/latte-dark-grey-004.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Latte xám đen</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">39.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xephankhoilon/7/r15m-anni-60th-004.png">
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xephankhoilon/7/r15m-anni-60th-004.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">R15m Anni 60th</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">399.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xephankhoilon/15/yamaha-mt-15-22.png">
                                <div class="label stockout stockblue">Hết hàng</div>
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xephankhoilon/15/yamaha-mt-15-22.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Yamaha MT 1522</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">479.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item sale">
                            <div class="product__item__pic set-bg"
                                 data-setbg="../images/yamaha/xetayga/14/yamaha-smax-2020.png">
                                <div class="label">Giảm giá</div>
                                <ul class="product__hover">
                                    <li><a href="../images/yamaha/xetayga/14/yamaha-smax-2020.png"
                                           class="image-popup"><span class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Yamaha Smax 2020</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price"><span>435.000.000</span> 429.000.000 VNĐ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center">
                        <div class="pagination__option">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>

<jsp:include page="js.jsp"/>
</body>

</html>