<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>

    <title>VTV | Admin - Error 500</title>

    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<c:url value = "/backend/assets/css/vendor.min.css"/>">
    <link rel="stylesheet" href="<c:url value = "/backend/assets/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value = "/backend/assets/css/theme.min.css?v=1.0"/>">
</head>

<body>

<main id="content" role="main" class="main">
    <div class="container">
        <div class="footer-height-offset d-flex justify-content-center align-items-center flex-column">
            <div class="row align-items-sm-center w-100">
                <div class="col-sm-6">
                    <div class="text-center text-sm-right mr-sm-4 mb-5 mb-sm-0">
                        <img class="w-60 w-sm-100 mx-auto" src="<c:url value = "/images/general/think.svg"/>"
                             alt="Image Description" style="max-width: 15rem;">
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 text-center text-sm-left">
                    <h1 class="display-1 mb-0">500</h1>
                    <p class="lead">
                        Máy chủ gặp phải lỗi nội bộ hoặc cấu hình sai và không thể hoàn thành yêu cầu của bạn.
                    </p>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="<c:url value = "/backend/assets/js/theme.min.js"/>"></script>

</body>

</html>
