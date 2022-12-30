<%@ page contentType="text/html;charset=UTF-8" %>

<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VTV | Đăng nhập</title>

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
                <form action="login" method="post">
                    <h2 class="text-center mb-4">
                        Đăng Nhập
                    </h2>
                    <div class="form-outline mb-4">
                        <span class="text-danger" id="hideMessage">${message}</span>
                        <input type="email" id="form3Example3" class="form-control form-control-lg"
                               placeholder="Email" name="email"/>
                    </div>

                    <div class="form-outline mb-3">
                        <input type="password" id="form3Example4" class="form-control form-control-lg"
                               placeholder="Mật khẩu" name="password"/>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <div class="form-check mb-0">
                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3"
                                   name="remember"/>
                            <label class="form-check-label" for="form2Example3">
                                Nhớ mật khẩu
                            </label>
                        </div>
                        <a href="forgot-pass.jsp" class="text-body">Quên mật khẩu?</a>
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng nhập
                        </button>
                        <p class="small fw-bold mt-2 pt-1 mb-0">
                            Bạn chưa có tài khoản? <a href="register" class="link-danger">Đăng ký</a>
                        </p>
                    </div>

                    <div class="divider d-flex align-items-center my-4">
                        <p class="text-center fw-bold mx-3 mb-0">Hoặc</p>
                    </div>
                    <div class="divider d-flex align-items-center my-4">
                        <button type="button" class="btn btn-outline-dark btn-floating mx-1">
                            <i class="fa-brands fa-facebook text-primary"></i> Facebook
                        </button>
                        <button type="button" class="btn btn-outline-dark btn-floating mx-1">
                            <i class="fab fa-google text-danger"></i> Google
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script src="js/frontend/js/jquery-3.3.1.min.js"></script>
<script src="js/frontend/js/bootstrap.min.js"></script>

<script>
    const message = document.getElementById('hideMessage');

    if (message !== null) {
        function hideMessage() {
            message.style.display = 'none';
        }

        setTimeout(hideMessage, 5000);
    }
</script>

</body>

</html>
