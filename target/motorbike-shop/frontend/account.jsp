<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>VTV | Account</title>
    <jsp:include page="css.jsp"/>
    <link rel="stylesheet" href="css/frontend/css/account.css" type="text/css">

</head>

<body>

<jsp:include page="header1.jsp"/>

<div class="container mb-3">
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb" style="background-color: #eeeeee;">
                        <li class="breadcrumb-item"><a href="/motorbike_shop/">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tài khoản</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>

    <c:if test="${message != null}">
        <div class="alert alert-success text-center" id="hideMessage">${message}</div>
    </c:if>

    <div class="row">
        <div class="col-lg-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <img src="images/user/user.png" alt="avatar" class="rounded-circle img-fluid"
                         style="width: 150px;">
                    <h5 class="my-3">${loggedCustomer.lastName} ${loggedCustomer.firstName}</h5>
                    <p class="text-muted mb-1"></p>
                    <p class="text-muted mb-4"></p>
                </div>
            </div>
            <div class="card mb-4 mb-lg-0">
                <div class="card-body p-0">
                    <ul class="list-group list-group-flush rounded-3">
                        <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                            <a href="account-info">
                                <button class="mb-0 active">Cập nhật thông tin cá nhân</button>
                            </a>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                            <a href="reset_password">
                                <button class="mb-0">Thay đổi mật khẩu</button>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-lg-8">
            <form action="account-info" method="post" id="account">
                <input type="hidden" value="${loggedCustomer.id}" name="id">
                <input type="hidden" value="${loggedCustomer.address.id}" name="addressId">
                <input type="hidden" value="${loggedCustomer.password}" name="password">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Họ</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0" value="${loggedCustomer.lastName}"
                                       name="lastName" id="lastName">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Tên</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0" value="${loggedCustomer.firstName}"
                                       name="firstName" id="firstName">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0 font-weight-bold"
                                       value="${loggedCustomer.email}" name="email" readonly>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Số điện thoại</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0" value="${loggedCustomer.phoneNumber}"
                                       name="phone" id="phone">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Địa chỉ</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0"
                                       value="${loggedCustomer.address.street}" name="street" id="street">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Phường / Xã</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0" value="${loggedCustomer.address.ward}"
                                       name="ward" id="ward">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Quận / Huyện</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0"
                                       value="${loggedCustomer.address.district}" name="district" id="district">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Tỉnh / Thành Phố</p>
                            </div>
                            <div class="col-sm-9">
                                <input type="text" class="text-muted mb-0" value="${loggedCustomer.address.city}"
                                       name="city" id="city">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-btn mb-3">
                    <button type="submit" class="btn-save">Lưu</button>
                </div>
            </form>
        </div>
    </div>
</div>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>

<script>
    $(document).ready(function () {
        // validation
        $("#account").validate({
            ignore: ".ignore",
            rules: {
                firstName: {
                    required: true
                },
                lastName: {
                    required: true
                },
                street: {
                    required: true
                },
                ward: {
                    required: true
                },
                district: {
                    required: true
                },
                city: {
                    required: true
                },
                phone: {
                    required: true,
                    number: true,
                    minlength: 10,
                    maxlength: 11
                },
            },
            messages: {
                firstName: {
                    required: "Vui lòng nhập tên đầy đủ"
                },
                lastName: {
                    required: "Vui lòng nhập họ đầy đủ"
                },
                street: {
                    required: "Vui lòng nhập địa chỉ"
                },
                ward: {
                    required: "Vui lòng nhập phường / xã"
                },
                district: {
                    required: "Vui lòng nhập quận / huyện"
                },
                city: {
                    required: "Vui lòng nhập tỉnh / thành phố"
                },
                phone: {
                    required: "Vui lòng nhập số điện thoại",
                    number: "Số điện thoại không hợp lệ",
                    minlength: "Số điện thoại không hợp lệ",
                    maxlength: "Số điện thoại không hợp lệ"
                },
            },
        });

        const message = document.getElementById('hideMessage');

        if (message !== null) {
            function hideMessage() {
                message.style.display = 'none';
            }

            setTimeout(hideMessage, 5000);
        }
    });
</script>

</body>

</html>
