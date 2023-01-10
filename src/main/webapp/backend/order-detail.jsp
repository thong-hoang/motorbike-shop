<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>VTV | Admin - Chi tiết đơn hàng</title>

    <jsp:include page="css.jsp"/>
</head>

<body class="footer-offset">

<jsp:include page="header.jsp"/>

<main id="content" role="main" class="main">
    <div class="content container-fluid">
        <div class="page-header d-print-none">
            <div class="row align-items-center">
                <div class="col-sm mb-2 mb-sm-0">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-no-gutter">
                            <li class="breadcrumb-item">
                                <a class="breadcrumb-link" href="list_orders"><i class="tio-back-ui"></i>
                                    Quản lý đơn hàng
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-header-title m-auto">Chi tiết đơn hàng</h1>

                    <div class="d-sm-flex align-items-sm-center">
                        <span class="page-header-title text-dark">Đơn hàng #${order.id}</span>
                        <span class="badge badge-soft-success ml-sm-3">
                            <span class="legend-indicator bg-success"></span>${order.status}
                        </span>
                        <span class="ml-2 ml-sm-3"><i class="tio-date-range"></i>
                            <fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${order.orderDate}"/>
                        </span>
                    </div>

                    <div class="mt-2">
                        <a class="text-body mr-3" href="#" onclick="window.print(); return false;">
                            <i class="tio-print mr-1"></i> In đơn hàng
                        </a>

                        <!-- Unfold -->
                        <div class="hs-unfold">
                            <a class="js-hs-unfold-invoker text-body" href="#" data-hs-unfold-options='{
                       "target": "#moreOptionsDropdown",
                       "type": "css-animation"
                     }'>
                                Thêm <i class="tio-chevron-down"></i>
                            </a>

                            <div id="moreOptionsDropdown" class="hs-unfold-content dropdown-unfold dropdown-menu mt-1">
                                <a class="dropdown-item" href="#">
                                    <i class="tio-copy dropdown-item-icon"></i> Bản sao
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-clear dropdown-item-icon"></i> Hủy đơn hàng
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-archive dropdown-item-icon"></i> Lưu trữ
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-visible dropdown-item-icon"></i> Xem trang trạng thái đơn hàng
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-edit dropdown-item-icon"></i> Chỉnh sửa đơn hàng
                                </a>
                            </div>
                        </div>
                        <!-- End Unfold -->
                    </div>
                </div>

                <div class="col-sm-auto">
                    <a class="btn btn-icon btn-sm btn-ghost-secondary rounded-circle mr-1" href="#"
                       data-toggle="tooltip"
                       data-placement="top" title="Đơn trước">
                        <i class="tio-arrow-backward"></i>
                    </a>
                    <a class="btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="#" data-toggle="tooltip"
                       data-placement="top" title="Đơn sau">
                        <i class="tio-arrow-forward"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8 mb-3 mb-lg-0">
                <!-- Card -->
                <div class="card mb-3 mb-lg-5">
                    <!-- Header -->
                    <div class="card-header">
                        <h4 class="card-header-title">Chi tiết đơn hàng
                            <span class="badge badge-soft-dark rounded-circle ml-1">${order.quantity}</span>
                        </h4>
                        <a class="link" href="#">Chỉnh sửa</a>
                    </div>
                    <!-- End Header -->

                    <div class="card-body">
                        <c:forEach items="${order.orderDetails}" var="detail">
                            <div class="media">
                                <div class="media-body d-flex flex-row">
                                    <div class="avatar avatar-xl mr-2">
                                        <img class="img-fluid"
                                             src="../images/product/${detail.product.id}/${detail.product.mainImagePath}"
                                             alt="Image Description">
                                    </div>
                                    <div class="info">
                                        <span class="h5 d-block">${detail.product.name}</span>
                                        <div class="font-size-sm text-body">
                                            <span>Màu:</span>
                                            <span class="font-weight-bold">Đỏ đen</span>
                                        </div>
                                    </div>

                                    <div class="align-self-center text-dark ml-5">
                                        <span>
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${detail.product.price}" type="currency"/>
                                        </span>
                                    </div>

                                    <div class="col align-self-center text-dark">
                                        <span>${detail.quantity}</span>
                                    </div>

                                    <div class="align-self-center text-dark">
                                        <span>
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${detail.subTotal}" type="currency"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                        <hr>

                        <div class="row justify-content-md-end mb-3">
                            <div class="col-md-8 col-lg-7">
                                <dl class="row text-sm-right">
                                    <dt class="col-sm-6">Tổng giá sản phẩm:</dt>
                                    <dd class="col-sm-6">
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${order.total}" type="currency"/>
                                    </dd>
                                    <dt class="col-sm-6">Giảm giá:</dt>
                                    <dd class="col-sm-6">
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="0" type="currency"/>
                                    </dd>
                                    <dt class="col-sm-6">Thành tiền:</dt>
                                    <dd class="col-sm-6">
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${order.total}" type="currency"/>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>

                <%--                <div class="card">--%>
                <%--                    <!-- Header -->--%>
                <%--                    <div class="card-header">--%>
                <%--                        <h4 class="card-header-title">--%>
                <%--                            Trạng thái giao hàng--%>
                <%--                        </h4>--%>
                <%--                    </div>--%>
                <%--                    <!-- End Header -->--%>

                <%--                    <!-- Body -->--%>
                <%--                    <div class="card-body">--%>
                <%--                        <!-- Step -->--%>
                <%--                        <ul class="step step-icon-xs">--%>
                <%--                            <!-- Step Item -->--%>
                <%--                            <li class="step-item">--%>
                <%--                                <div class="step-content-wrapper">--%>
                <%--                                    <small class="step-divider">Thứ 2, 15/11/2022</small>--%>
                <%--                                </div>--%>
                <%--                            </li>--%>
                <%--                            <!-- End Step Item -->--%>

                <%--                            <!-- Step Item -->--%>
                <%--                            <li class="step-item">--%>
                <%--                                <div class="step-content-wrapper">--%>
                <%--                                    <span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>--%>

                <%--                                    <div class="step-content">--%>
                <%--                                        <h5 class="mb-1">--%>
                <%--                                            <a class="text-dark" href="#">Nhận hàng</a>--%>
                <%--                                        </h5>--%>

                <%--                                        <p class="font-size-sm mb-0">7:30</p>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </li>--%>
                <%--                            <!-- End Step Item -->--%>

                <%--                            <!-- Step Item -->--%>
                <%--                            <li class="step-item">--%>
                <%--                                <div class="step-content-wrapper">--%>
                <%--                                    <span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>--%>

                <%--                                    <div class="step-content">--%>
                <%--                                        <h5 class="mb-1">--%>
                <%--                                            <a class="text-dark" href="#">Đóng gói bảo vệ</a>--%>
                <%--                                        </h5>--%>

                <%--                                        <p class="font-size-sm mb-0">8:30</p>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </li>--%>
                <%--                            <!-- End Step Item -->--%>

                <%--                            <!-- Step Item -->--%>
                <%--                            <li class="step-item">--%>
                <%--                                <div class="step-content-wrapper">--%>
                <%--                                    <span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>--%>

                <%--                                    <div class="step-content">--%>
                <%--                                        <h5 class="mb-1">--%>
                <%--                                            <a class="text-dark" href="#">Đang giao hàng</a>--%>
                <%--                                        </h5>--%>

                <%--                                        <p class="font-size-sm mb-0">9:00</p>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </li>--%>
                <%--                            <!-- End Step Item -->--%>

                <%--                            <!--                  &lt;!&ndash; Step Item &ndash;&gt;-->--%>
                <%--                            <!--                  <li class="step-item">-->--%>
                <%--                            <!--                    <div class="step-content-wrapper">-->--%>
                <%--                            <!--                      <small class="step-divider">Tuesday, 18 August</small>-->--%>
                <%--                            <!--                    </div>-->--%>
                <%--                            <!--                  </li>-->--%>
                <%--                            <!--                  &lt;!&ndash; End Step Item &ndash;&gt;-->--%>

                <%--                            <!-- Step Item -->--%>
                <%--                            <li class="step-item">--%>
                <%--                                <div class="step-content-wrapper">--%>
                <%--                                    <span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>--%>

                <%--                                    <div class="step-content">--%>
                <%--                                        <h5 class="mb-1">--%>
                <%--                                            <a class="text-dark" href="#">Giao hàng thành công</a>--%>
                <%--                                        </h5>--%>
                <%--                                        <p class="font-size-sm mb-0">6:29 AM</p>--%>
                <%--                                        <p class="font-size-sm mb-0">#32543</p>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </li>--%>
                <%--                            <!-- End Step Item -->--%>
                <%--                        </ul>--%>
                <%--                        <!-- End Step -->--%>

                <%--                        <small>Thời gian được hiển thị theo múi giờ địa phương.</small>--%>
                <%--                    </div>--%>
                <%--                    <!-- End Body -->--%>
                <%--                </div>--%>
            </div>

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-header-title">Khách hàng</h4>
                    </div>

                    <div class="card-body">
                        <a class="media align-items-center">
                            <div class="avatar avatar-circle mr-3">
                                <img class="avatar-img" src="../images/user/user.png" alt="Image Description">
                            </div>
                            <div class="media-body">
                                <span class="text-body text-hover-primary">
                                    ${order.customer.lastName} ${order.customer.firstName}
                                </span>
                            </div>
                        </a>

                        <hr>

                        <div class="d-flex justify-content-between align-items-center">
                            <h5>Thông tin người nhận</h5>
                            <a class="link" href="#">Chỉnh sửa</a>
                        </div>

                        <ul class="list-unstyled list-unstyled-py-2">
                            <li>
                                <i class="tio-online mr-2"></i>
                                ${order.recipientName}
                            </li>
                            <li>
                                <i class="tio-android-phone-vs mr-2"></i>
                                ${order.recipientPhone}
                            </li>
                        </ul>

                        <hr>

                        <div class="d-flex justify-content-between align-items-center">
                            <h5>Địa chỉ giao hàng</h5>
                            <a class="link" href="#">Chỉnh sửa</a>
                        </div>

                        <span class="d-block">
                            ${order.address.street}, ${order.address.ward}, ${order.address.district}, ${order.address.city}
                        </span>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"/>
</main>

<jsp:include page="js.jsp"/>

</body>
</html>
