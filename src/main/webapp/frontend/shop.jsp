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
    <title>VTV | ${title}</title>

    <jsp:include page="css.jsp"/>
    <link rel="stylesheet" href="css/frontend/css/shop.css" type="text/css">
</head>

<body>
<jsp:include page="header1.jsp"/>

<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white">
                    <li class="breadcrumb-item"><a href="/motorbike_shop/">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="shop__sidebar">
                    <div class="sidebar__brand">
                        <div class="section-title">
                            <h4>Thương hiệu</h4>
                        </div>
                        <div class="size__list brand__list">
                            <c:forEach items="${brands}" var="brand">
                                <label for="${brand.name}">
                                        ${brand.name}
                                    <input type="checkbox" id="${brand.name}" value="${brand.id}">
                                    <span class="checkmark"></span>
                                </label>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="sidebar__categories">
                        <div class="section-title">
                            <h4>Phân loại</h4>
                        </div>
                        <div class="size__list categories__list">
                            <label for="xeso">
                                Xe số
                                <input type="checkbox" id="xeso">
                                <span class="checkmark"></span>
                            </label>
                            <label for="xetayga">
                                Xe tay ga
                                <input type="checkbox" id="xetayga">
                                <span class="checkmark"></span>
                            </label>
                            <label for="xecontay">
                                Xe côn tay
                                <input type="checkbox" id="xecontay">
                                <span class="checkmark"></span>
                            </label>
                            <label for="xephankhoilon">
                                Xe phân khối lớn
                                <input type="checkbox" id="xephankhoilon">
                                <span class="checkmark"></span>
                            </label>
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
                    <c:forEach items="${listProducts}" var="product">
                        <div class="col-lg-4 col-md-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg"
                                     data-setbg="images/product/${product.id}/${product.mainImagePath}">
                                    <div class="label new">Mới</div>
                                    <ul class="product__hover">
                                        <li>
                                            <a href="images/product/${product.id}/${product.mainImagePath}"
                                               class="image-popup">
                                                <span class="arrow_expand" style="padding-top: 15px"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="icon_heart_alt" style="padding-top: 15px"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="add_to_cart?productId=${product.id}">
                                                <span class="icon_bag_alt" style="padding-top: 15px"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="product?id=${product.id}">${product.name}</a></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price">
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value = "${product.price}" type = "currency"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xeso/11/sirius-black-drum-004-1.png">--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xeso/11/sirius-black-drum-004-1.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Sirius Drum</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price">30.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xecontay/7/ex155-yellow-grey-004.png">--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xecontay/7/ex155-yellow-grey-004.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Exciter 155</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price">47.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png">--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Exciter 150 pearl</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price">49.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item sale">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xeso/3/jupiter-finn-urban-blue-004.png">--%>
                    <%--                                <div class="label">Giảm giá</div>--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xeso/3/jupiter-finn-urban-blue-004.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Jupiter finn urban</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price"><span>31.000.000</span> 29.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xetayga/7/latte-dark-grey-004.png">--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xetayga/7/latte-dark-grey-004.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Latte xám đen</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price">39.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xephankhoilon/7/r15m-anni-60th-004.png">--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xephankhoilon/7/r15m-anni-60th-004.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">R15m Anni 60th</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price">399.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xephankhoilon/15/yamaha-mt-15-22.png">--%>
                    <%--                                <div class="label stockout stockblue">Hết hàng</div>--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xephankhoilon/15/yamaha-mt-15-22.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Yamaha MT 1522</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price">479.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-4 col-md-6">--%>
                    <%--                        <div class="product__item sale">--%>
                    <%--                            <div class="product__item__pic set-bg"--%>
                    <%--                                 data-setbg="../images/yamaha/xetayga/14/yamaha-smax-2020.png">--%>
                    <%--                                <div class="label">Giảm giá</div>--%>
                    <%--                                <ul class="product__hover">--%>
                    <%--                                    <li><a href="../images/yamaha/xetayga/14/yamaha-smax-2020.png"--%>
                    <%--                                           class="image-popup"><span class="arrow_expand"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>--%>
                    <%--                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>--%>
                    <%--                                </ul>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="product__item__text">--%>
                    <%--                                <h6><a href="#">Yamaha Smax 2020</a></h6>--%>
                    <%--                                <div class="rating">--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                    <i class="fa fa-star"></i>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="product__price"><span>435.000.000</span> 429.000.000 VNĐ</div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>

                    <div class="col-lg-12 text-center">
                        <c:if test="${totalPages > 0}">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination float-right">
                                    <li class="${currentPage > 1 ? 'page-item' : 'page-item disabled'}">
                                        <a class="page-link"
                                           href="search?pageNumber=${currentPage - 1}&keyword=${keyword}">Trước</a>
                                    </li>
                                    <c:forEach var="i" begin="1" end="${totalPages}">
                                        <li style="${currentPage - 5 > i ||currentPage + 5 < i ? 'display:none ' : ' '}" class="${currentPage != i ? 'page-item ' : 'page-item active'}">
                                            <a class="page-link"
                                               href="search?pageNumber=${i}&keyword=${keyword}">${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="${currentPage < totalPages ? 'page-item' : 'page-item disabled'}">
                                        <a class="page-link"
                                           href="search?pageNumber=${currentPage + 1}&keyword=${keyword}">Sau</a>
                                    </li>
                                </ul>
                            </nav>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>
</body>

</html>
