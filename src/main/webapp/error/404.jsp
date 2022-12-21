<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <title>VTV | Admin - Error 404</title>

    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<c:url value = "/backend/assets/css/vendor.min.css"/>">
    <link rel="stylesheet" href="<c:url value = "/backend/assets/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value = "/backend/assets/css/theme.min.css?v=1.0"/>">
</head>

<body class="footer-offset">

<main id="content" role="main" class="main">
    <div class="content container-fluid">
        <div class="row align-items-sm-center py-sm-10">
            <div class="col-sm-6">
                <div class="text-center text-sm-right mr-sm-4 mb-5 mb-sm-0">
                    <img class="w-60 w-sm-100 mx-auto" src="<c:url value = "/images/general/think.svg"/>"
                         alt="Image Description"
                         style="max-width: 15rem;">
                </div>
            </div>

            <div class="col-sm-6 col-md-4 text-center text-sm-left">
                <h1 class="display-1 mb-0">404</h1>
                <p class="lead">Xin lỗi, không thể tìm thấy trang bạn đang tìm kiếm.</p>
            </div>
        </div>
    </div>
</main>

<script src="<c:url value = "/backend/assets/js/vendor.min.js"/>"></script>
<script src="<c:url value = "/backend/assets/js/theme.min.js"/>"></script>

</body>

</html>
