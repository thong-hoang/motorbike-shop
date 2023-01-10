<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VTV | ${product.name}</title>

    <jsp:include page="css.jsp"/>
</head>

<style>
    .product__details__button .buy-btn {
        display: inline-block;
        font-size: 14px;
        color: #ca1515;
        border-style: solid;
        border-color: #ca1515;
        background: #ffffff;
        font-weight: 600;
        text-transform: uppercase;
        padding: 14px 30px 15px;
        margin-right: 10px;
        margin-bottom: 10px;
    }

    .product__details__button .cart-btn {
        border-radius: 0;
        border-style: solid;
        border-color: #ca1515;
    }
</style>

<body>
<jsp:include page="header1.jsp"/>

<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white">
                    <li class="breadcrumb-item"><a href="/motorbike_shop/">Trang chủ</a></li>
                    <li class="breadcrumb-item" aria-current="page"><a href="search">Sản phẩm</a></li>
                    <li class="breadcrumb-item active" aria-current="page">${product.name}</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__left product__thumb nice-scroll">
                        <a class="pt active">
                            <img src="images/product/${product.id}/${product.mainImagePath}" alt="">
                        </a>
                    </div>
                    <div class="product__details__slider__content">
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-hash="product-1" class="product__big__img"
                                 src="images/product/${product.id}/${product.mainImagePath}" alt="">
                        </div>
                    </div>

                    <%--                    <div class="product__details__pic__left product__thumb nice-scroll">--%>
                    <%--                        <a class="pt active" href="#product-1">--%>
                    <%--                            <img src="../images/yamaha/xeso/7/sirius-dark-blue-007.png" alt="">--%>
                    <%--                        </a>--%>
                    <%--                        <a class="pt" href="#product-2">--%>
                    <%--                            <img src="../images/test/2.jpg" alt="">--%>
                    <%--                        </a>--%>
                    <%--                        <a class="pt" href="#product-3">--%>
                    <%--                            <img src="../images/test/3.jpg" alt="">--%>
                    <%--                        </a>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="product__details__slider__content">--%>
                    <%--                        <div class="product__details__pic__slider owl-carousel">--%>
                    <%--                            <img data-hash="product-1" class="product__big__img"--%>
                    <%--                                 src="../images/yamaha/xeso/7/sirius-dark-blue-007.png" alt="">--%>
                    <%--                            <img data-hash="product-2" class="product__big__img" src="../images/test/2.jpg" alt="">--%>
                    <%--                            <img data-hash="product-3" class="product__big__img" src="../images/test/3.jpg" alt="">--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="product__details__text">
                    <h3>${product.name} <span>Xe chất lượng cao</span></h3>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <span>( 138 lượt xem )</span>
                    </div>
                    <div class="product__details__price">
                        <fmt:setLocale value="vi_VN"/>
                        <fmt:formatNumber value="${product.price}" type="currency"/>
                    </div>
                    <p></p>
                    <div class="product__details__button">
                        <div class="quantity">
                            <span>Số lượng</span>
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>

                        </div>
                        <br><br><br>
                        <a href="add_to_cart?productId=${product.id}" class="buy-btn"> Mua ngay</a>
                        <a href="add_to_cart?productId=${product.id}" class="cart-btn">
                            <span class="icon_bag_alt"></span> Thêm vào giỏ hàng
                        </a>
                        <!--    <ul>
                              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                               <li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
                           </ul> -->
                    </div>
                    <div class="product__details__widget">
                        <ul>
                            <!--      <li>
                                    <span>Khả dụng:</span>
                                     <div class="stock__checkbox">
                                         <label for="stockin">
                                             Có trong kho
                                             <input type="checkbox" id="stockin">
                                             <span class="checkmark"></span>
                                         </label>
                                     </div>
                                 </li>   -->
                            <li>
                                <span>Thương hiệu:</span>
                                <p>${product.brand.name}</p>
                            </li>
                            <li>
                                <span>Loại xe:</span>
                                <p>Xe số</p>
                            </li>
                            <li>
                                <span>Màu sắc:</span>
                                <p>Xanh đen</p>
                            </li>
                            <li>
                                <span>Bảo hành:</span>
                                <p>12 tháng</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Mô tả chi
                                tiết</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">Thông số kỹ thuật</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">Kết quả đánh giá</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <h6>Mô tả</h6>
                            <p>${product.description}.</p>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <h6>Thông số kỹ thuât</h6>
                            <p>Khối lượng bản thân
                                97 kg
                                <br>
                                Dài x Rộng x Cao
                                1.914 mm x 688 mm x 1.075 mm
                                <br>
                                Khoảng cách trục bánh xe
                                1.224 mm
                                <br>
                                Độ cao yên
                                769 mm
                                <br>
                                Khoảng sáng gầm xe
                                138 mm
                                <br>
                                Dung tích bình xăng
                                3,7 L
                                <br>
                                Kích cỡ lớp trước/ sau
                                Lốp trước 70/90-17M/C 38P
                                Lốp sau 80/90-17M/C 50P
                                <br>
                                Phuộc trước
                                Ống lồng, giảm chấn thủy lực
                                <br>
                                Phuộc sau
                                Lò xo trụ, giảm chấn thủy lực
                                <br>
                                Loại động cơ
                                4 kỳ, 1 xilanh, làm mát bằng không khí
                                <br>
                                Công suất tối đa
                                6,12kW/7.500rpm
                                <br>
                                Dung tích nhớt máy
                                Sau khi xả 0,8 L
                                Sau khi rã máy 1,0 L
                                <br>
                                Mức tiêu thụ nhiên liệu
                                1,90 l/100km
                                <br>
                                Hệ thống khởi động
                                Điện
                                <br>
                                Moment cực đại
                                8,44 N・m (5.500rmp)
                                <br>
                                Dung tích xy-lanh
                                109,1 cm3
                                <br>
                                Đường kính x Hành trình pít tông
                                50,0 x 55,6 mm
                                <br>
                                Tỷ số nén
                                9,0 : 1
                            </p>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <h6>Đánh giá</h6>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--        <div class="row">--%>
        <%--            <div class="col-lg-12 text-center">--%>
        <%--                <div class="related__title">--%>
        <%--                    <h5>Sản phẩm liên quan</h5>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--            <div class="col-lg-3 col-md-4 col-sm-6">--%>
        <%--                <div class="product__item">--%>
        <%--                    <div class="product__item__pic set-bg"--%>
        <%--                         data-setbg="../images/yamaha/xeso/11/sirius-black-drum-004-1.png">--%>
        <%--                        <ul class="product__hover">--%>
        <%--                            <li><a href="../images/yamaha/xeso/11/sirius-black-drum-004-1.png"--%>
        <%--                                   class="image-popup"><span class="arrow_expand"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
        <%--                        </ul>--%>
        <%--                    </div>--%>
        <%--                    <div class="product__item__text">--%>
        <%--                        <h6><a href="#">Sirius Drum</a></h6>--%>
        <%--                        <div class="rating">--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                        </div>--%>
        <%--                        <div class="product__price">30.000.000 VNĐ</div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--            <div class="col-lg-3 col-md-4 col-sm-6">--%>
        <%--                <div class="product__item">--%>
        <%--                    <div class="product__item__pic set-bg"--%>
        <%--                         data-setbg="../images/yamaha/xecontay/7/ex155-yellow-grey-004.png">--%>
        <%--                        <ul class="product__hover">--%>
        <%--                            <li><a href="../images/yamaha/xecontay/7/ex155-yellow-grey-004.png"--%>
        <%--                                   class="image-popup"><span class="arrow_expand"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
        <%--                        </ul>--%>
        <%--                    </div>--%>
        <%--                    <div class="product__item__text">--%>
        <%--                        <h6><a href="#">Exciter 155</a></h6>--%>
        <%--                        <div class="rating">--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                        </div>--%>
        <%--                        <div class="product__price">47.000.000 VNĐ</div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--            <div class="col-lg-3 col-md-4 col-sm-6">--%>
        <%--                <div class="product__item">--%>
        <%--                    <div class="product__item__pic set-bg"--%>
        <%--                         data-setbg="../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png">--%>
        <%--                        <ul class="product__hover">--%>
        <%--                            <li><a href="../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png"--%>
        <%--                                   class="image-popup"><span class="arrow_expand"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
        <%--                        </ul>--%>
        <%--                    </div>--%>
        <%--                    <div class="product__item__text">--%>
        <%--                        <h6><a href="#">Exciter 150 pearl</a></h6>--%>
        <%--                        <div class="rating">--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                        </div>--%>
        <%--                        <div class="product__price">49.000.000 VNĐ</div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--            <div class="col-lg-3 col-md-4 col-sm-6">--%>
        <%--                <div class="product__item">--%>
        <%--                    <div class="product__item__pic set-bg"--%>
        <%--                         data-setbg="../images/yamaha/xetayga/7/latte-dark-grey-004.png">--%>
        <%--                        <ul class="product__hover">--%>
        <%--                            <li><a href="../images/yamaha/xetayga/7/latte-dark-grey-004.png"--%>
        <%--                                   class="image-popup"><span class="arrow_expand"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
        <%--                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
        <%--                        </ul>--%>
        <%--                    </div>--%>
        <%--                    <div class="product__item__text">--%>
        <%--                        <h6><a href="#">Latte xám đen</a></h6>--%>
        <%--                        <div class="rating">--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                            <i class="fa fa-star"></i>--%>
        <%--                        </div>--%>
        <%--                        <div class="product__price">39.000.000 VNĐ</div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
    </div>
</section>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>
</body>

</html>
