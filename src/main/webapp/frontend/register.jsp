<%@ page contentType="text/html;charset=UTF-8" %>

<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="css/frontend/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="css/frontend/css/login.css" type="text/css">
</head>

<body>
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <a href="/motorbike_shop/"><img src="images/logo/logo-login.png" class="img-fluid" alt="logo"></a>
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form action="register_customer" method="post">
                    <h2 class="text-center mb-4">
                        Đăng Ký
                    </h2>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example1" class="form-control form-control-lg"
                               placeholder="Họ" name="lastName" value="${customer.lastName}" required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example2" class="form-control form-control-lg"
                               placeholder="Tên" name="firstName" value="${customer.firstName}" required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="email" id="form3Example3" class="form-control form-control-lg"
                               placeholder="Email" name="email" value="${customer.email}" required/>
                    </div>
                    <div class="form-outline mb-3">
                        <input type="password" id="form3Example4" class="form-control form-control-lg"
                               placeholder="Mật khẩu" name="password" value="${customer.password}" required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example5" class="form-control form-control-lg"
                               placeholder="Số điện thoại" name="phone" value="${customer.phoneNumber}" required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example6" class="form-control form-control-lg"
                               placeholder="Địa chỉ" name="street" value="${customer.address.street}" required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example7" class="form-control form-control-lg"
                               placeholder="Phường / Xã" name="ward" value="${customer.address.ward}" required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example8" class="form-control form-control-lg"
                               placeholder="Quận / Huyện" name="district" value="${customer.address.district}"
                               required/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" id="form3Example9" class="form-control form-control-lg"
                               placeholder="Tỉnh / Thành phố" name="city" value="${customer.address.city}" required/>
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng ký
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="modal_dialog.jsp"/>

<script src="js/frontend/js/jquery-3.3.1.min.js"></script>
<script src="js/frontend/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function showModalDialog(title, message) {
        $("#modalTitle").text(title);
        $("#modalBody").text(message);
        $("#modalDialog").modal();
    }

    const message = "${message}";
    if (message !== "") {
        showModalDialog("Warning", message)
    }
</script>

</body>

</html>
