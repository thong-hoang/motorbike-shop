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
                                <button class="mb-0">Cập nhật thông tin cá nhân</button>
                            </a>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                            <a href="reset_password">
                                <button class="mb-0 active">Thay đổi mật khẩu</button>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="card mb-4">
                <div class="card-body change-pass">
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập mật khẩu mới</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0" type="password">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Xác nhận mật khẩu</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0" type="password">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập mã xác minh</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 ip-change-pass" type="text" autocomplete="off">
                            <button class="btn btn-outline-dark">Gửi mã xác minh</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-btn">
                <button class="btn-save">Xác Nhận</button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>

</body>

</html>
