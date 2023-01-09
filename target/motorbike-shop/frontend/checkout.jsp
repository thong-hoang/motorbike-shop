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
    <title>VTV | Thanh toán</title>

    <jsp:include page="css.jsp"/>
</head>

<body>

<jsp:include page="header1.jsp"/>

<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white">
                    <li class="breadcrumb-item"><a href="/motorbike_shop/">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a href="cart">Xem giỏ hàng</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Thanh toán</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<section class="checkout spad">
    <div class="container">

        <form action="#" class="checkout__form" id="checkoutForm">
            <div class="row">
                <div class="col-lg-6">
                    <h5>Nhập thông tin đặt hàng</h5>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="checkout__form__input">
                                <p>Tên người nhận <span>*</span></p>
                                <input type="text" id="fullName" name="fullName">
                            </div>
                            <div class="checkout__form__input">
                                <p>Số điện thoại <span>*</span></p>
                                <input type="text" name="phone" id="phone">
                            </div>
                            <div class="checkout__form__input">
                                <p>Địa chỉ <span>*</span></p>
                                <input type="text" name="street" id="street">
                            </div>
                            <div class="checkout__form__input">
                                <p>Phường/Xã <span>*</span></p>
                                <input type="text" name="ward" id="ward">
                            </div>
                            <div class="checkout__form__input">
                                <p>Quận/Huyện <span>*</span></p>
                                <input type="text" name="district" id="district">
                            </div>
                            <div class="checkout__form__input">
                                <p>Tỉnh/Thành phố <span>*</span></p>
                                <input type="text" id="city" name="city">
                            </div>
                        </div>

                    </div>
                </div>
                <c:set var="cart" value="${sessionScope['cart']}"/>
                <c:if test="${cart.totalItems > 0}">
                    <div class="col-lg-6">
                        <div class="checkout__order">
                            <h5>Đơn hàng của bạn</h5>
                            <div class="checkout__order__product">
                                <ul>
                                    <li>
                                        <span class="top__text">Sản phẩm</span>
                                        <span class="top__text__right">Giá</span>
                                    </li>
                                    <c:forEach items="${cart.items}" var="item" varStatus="status">
                                        <li>${item.key.name} x SL: ${item.value} chiếc
                                            <span>
                                                <fmt:setLocale value="vi_VN"/>
                                                <fmt:formatNumber value="${item.key.price}" type="currency"/>
                                            </span>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="checkout__order__total">
                                <ul>
                                    <li>Tổng cộng
                                        <span>
                                                <fmt:setLocale value="vi_VN"/>
                                                <fmt:formatNumber value="${cart.totalAmount}" type="currency"/>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div class="checkout__order__widget">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                           id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        ATM
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                           id="flexRadioDefault2" checked>
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Thanh toán khi nhận hàng (COD)
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="site-btn">Đặt hàng</button>
                        </div>
                    </div>

                </c:if>
            </div>
        </form>
    </div>
</section>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>

<script>
    $(document).ready(function () {
        // validation
        $("#checkoutForm").validate({
            rules: {
                fullName: "required",
                phone: {
                    required: true,
                    number: true,
                    minlength: 10,
                    maxlength: 11
                },
                street: "required",
                ward: "required",
                district: "required",
                city: "required"
            },
            messages: {
                fullName: "Vui lòng nhập đầy đủ tên người nhận",
                phone: {
                    required: "Vui lòng nhập số điện thoại",
                    number: "Số điện thoại không hợp lệ",
                    minlength: "Số điện thoại không hợp lệ",
                    maxlength: "Số điện thoại không hợp lệ"
                },
                street: "Vui lòng nhập địa chỉ",
                ward: "Vui lòng nhập phường/xã",
                district: "Vui lòng nhập quận/huyện",
                city: "Vui lòng nhập tỉnh/thành phố"
            }
        });
    })
</script>

</body>

</html>
