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
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <a href="/motorbike_shop/"><img src="images/logo/logo-login.png" class="img-fluid" alt="logo"></a>
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form action="register_customer" method="post" id="registerForm">
                    <h2 class="text-center mb-4">
                        Đăng Ký
                    </h2>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Họ" name="lastName"
                               value="${customer.lastName}" id="lastName"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Tên" name="firstName"
                               value="${customer.firstName}" id="firstName"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="email" class="form-control form-control-lg" placeholder="Email" name="email"
                               value="${customer.email}" id="email"/>
                    </div>
                    <div class="form-outline mb-3">
                        <input type="password" class="form-control form-control-lg" placeholder="Mật khẩu"
                               name="password" value="${customer.password}" id="password"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Số điện thoại" name="phone"
                               value="${customer.phoneNumber}" id="phone"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Địa chỉ" name="street"
                               value="${customer.address.street}" id="street"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Phường / Xã" name="ward"
                               value="${customer.address.ward}" id="ward"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Quận / Huyện"
                               name="district" value="${customer.address.district}" id="district"/>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" class="form-control form-control-lg" placeholder="Tỉnh / Thành phố"
                               name="city" value="${customer.address.city}" id="city"/>
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng ký
                        </button>
                    </div>
                    <div class="form-outline mb-4">
                        <div class="text-center text-lg-start mt-4 pt-2">
                            <span>Bạn đã có tài khoản?</span>
                            <a href="login">Đăng nhập</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="modal_dialog.jsp"/>

<script src="js/frontend/js/jquery-3.3.1.min.js"></script>
<script src="js/frontend/js/bootstrap.min.js"></script>
<script src="js/jquery.validate.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        // validation
        $("#registerForm").validate({
            rules: {
                lastName: "required",
                firstName: "required",
                email: {
                    required: true,
                    email: true
                },
                password: "required",
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
                lastName: "Vui lòng nhập họ đầy đủ",
                firstName: "Vui lòng nhập tên đầy đủ",
                email: {
                    required: "Vui lòng nhập email đầy đủ",
                    email: "Email không hợp lệ, vd abc@gmail.com"
                },
                password: "Vui lòng nhập mật khẩu đầy đủ",
                phone: {
                    required: "Vui lòng nhập số điện thoại đầy đủ",
                    number: "Số điện thoại không hợp lệ",
                    minlength: "Số điện thoại không hợp lệ",
                    maxlength: "Số điện thoại không hợp lệ"
                },
                street: "Vui lòng nhập địa chỉ đầy đủ",
                ward: "Vui lòng nhập phường / xã đầy đủ",
                district: "Vui lòng nhập quận / huyện đầy đủ",
                city: "Vui lòng nhập tỉnh / thành phố đầy đủ"
            }
        });
    })

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
