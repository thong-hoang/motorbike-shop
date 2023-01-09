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
</head>

<body>
<style>
    .shop__cart__table .cart__product__item img {
        max-width: 20%;
    }
</style>

<jsp:include page="header1.jsp"/>

<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white">
                    <li class="breadcrumb-item"><a href="/motorbike_shop/">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a href="search">Sản phẩm</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<section class="shop-cart spad">
    <div class="container">
        <form action="update_cart" method="post" id="cardForm">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Giá tổng</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:set var="cart" value="${sessionScope['cart']}"/>
                            <c:if test="${cart.totalItems == 0}">
                                <tr>
                                    <td colspan="5" class="text-center">Không có sản phẩm nào trong giỏ hàng</td>
                                </tr>
                            </c:if>

                            <c:if test="${cart.totalItems > 0}">
                                <c:forEach items="${cart.items}" var="item" varStatus="status">
                                    <tr>
                                        <td class="cart__product__item">
                                            <img src="images/product/${item.key.id}/${item.key.mainImagePath}" alt="">
                                            <div class="cart__product__item__title">
                                                <h6>${item.key.name}</h6>
                                                <div class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="cart__price">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${item.key.price}" type="currency"/>
                                        </td>
                                        <td class="cart__quantity">
                                            <input type="hidden" name="productId" value="${item.key.id}">
                                            <input type="text" value="${item.value}"
                                                   name="quantity${status.index + 1}"
                                                   size="5"/>
                                                <%--                                            <div class="pro-qty">--%>
                                                <%--                                            </div>--%>
                                        </td>
                                        <td class="cart__total">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${item.value * item.key.price}" type="currency"/>
                                        </td>
                                        <td class="cart__close"><a href="remove_from_cart?product_id=${item.key.id}"
                                                                   class="icon_close"></a></td>
                                    </tr>
                                </c:forEach>
                            </c:if>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="cart__btn">
                        <a href="search">Tiếp tục mua hàng</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="cart__btn">
                        <a href="clear_cart">Xoá giỏ hàng</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="cart__btn update__btn">
                        <button type="submit"><span class="icon_loading"></span> Cập nhập giỏ hàng</button>
                    </div>
                </div>
            </div>
        </form>
        <div class="row">
            <div class="col-lg-6">
                <div class="discount__content">
                    <h6>Mã giảm giá</h6>
                    <br><br>
                    <form action="#">
                        <input type="text" placeholder="Nhập mã giảm giá">
                        <button type="submit" class="site-btn">Xác nhận</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-2">
                <div class="cart__total__procced">
                    <h6>Giỏ hàng</h6>
                    <ul>
                        <%--                        <li>Tổng tiền hàng--%>
                        <%--                            <span>--%>
                        <%--                                <fmt:setLocale value="vi_VN"/>--%>
                        <%--                                <fmt:formatNumber value="${cart.totalAmount}" type="currency"/>--%>
                        <%--                            </span>--%>
                        <%--                        </li>--%>
                        <%--                        <li>Giảm giá sản phẩm <span> - 0 VNĐ</span></li>--%>
                        <li>Tổng số tiền
                            <span>
                                <fmt:setLocale value="vi_VN"/>
                                <fmt:formatNumber value="${cart.totalAmount}" type="currency"/>
                            </span>
                        </li>
                    </ul>
                    <a href="checkout.html" class="primary-btn">Đặt hàng</a>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>

<script>
    $(document).ready(function () {
        // validation
        $("#cardForm").validate({
            rules: {
                <c:forEach items="${cart.items}" var="item" varStatus="status">
                quantity${status.index + 1}: {
                    required: true,
                    number: true,
                    min: 1
                },
                </c:forEach>
            },
            messages: {
                <c:forEach items="${cart.items}" var="item" varStatus="status">
                quantity${status.index + 1}: {
                    required: "Vui lòng nhập số lượng",
                    number: "Số lượng phải là số",
                    min: "Số lượng phải lớn hơn 0"
                },
                </c:forEach>
            }
        });
    })
</script>

</body>

</html>
