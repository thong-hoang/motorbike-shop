<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>VTV | Admin - Khách hàng</title>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets\css\vendor.min.css">
    <link rel="stylesheet" href="assets\vendor\icon-set\style.css">



    <!-- CSS Front Template -->
    <link rel="stylesheet" href="assets\css\theme.min.css?v=1.0">
</head>

<body class="footer-offset">


<script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>

<!-- Builder -->
<div id="styleSwitcherDropdown" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow"
     style="width: 35rem;">
    <div class="card card-lg border-0 h-100">
        <!-- Footer -->
        <div class="card-footer">
            <div class="row gx-2">
                <div class="col">
                    <button type="button" id="js-builder-reset" class="btn btn-block btn-lg btn-white">
                        <i class="tio-restore"></i> Reset
                    </button>
                </div>
                <div class="col">
                    <button type="button" id="js-builder-preview" class="btn btn-block btn-lg btn-primary">
                        <i class="tio-visible"></i> Preview
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ONLY DEV -->

<!-- JS Preview mode only -->
<div id="headerMain" class="d-none">
    <header id="header"
            class="navbar navbar-expand-lg navbar-fixed navbar-height navbar-flush navbar-container navbar-bordered">
        <div class="navbar-nav-wrap">
            <div class="navbar-brand-wrapper">
                <!-- Logo -->
                <a class="navbar-brand" href="index.html" aria-label="Front">
                    <img class="navbar-brand-logo" src="../images/logo/logo.png" alt="Logo">
                    <img class="navbar-brand-logo-mini" src="../images/logo/logo.png" alt="Logo">
                </a>
            </div>

            <div class="navbar-nav-wrap-content-left">
                <!-- Navbar Vertical Toggle -->
                <button type="button" class="js-navbar-vertical-aside-toggle-invoker close mr-3">
                    <i class="tio-first-page navbar-vertical-aside-toggle-short-align" data-toggle="tooltip"
                       data-placement="right" title="Thu nhỏ"></i>
                    <i class="tio-last-page navbar-vertical-aside-toggle-full-align"
                       data-template='<div class="tooltip d-none d-sm-block" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>'
                       data-toggle="tooltip" data-placement="right" title="Mở rộng"></i>
                </button>
                <!-- End Navbar Vertical Toggle -->

                <!-- Search Form -->
                <div class="d-none d-md-block">
                    <form class="position-relative">
                        <!-- Input Group -->
                        <div
                                class="input-group input-group-merge input-group-borderless input-group-hover-light navbar-input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="tio-search"></i>
                                </div>
                            </div>
                            <input type="search" class="js-form-search form-control" placeholder="Tìm kiếm...">
                        </div>
                    </form>
                </div>
            </div>

            <!-- Secondary Content -->
            <div class="navbar-nav-wrap-content-right">
                <!-- Navbar -->
                <ul class="navbar-nav align-items-center flex-row">
                    <li class="nav-item d-md-none">
                        <!-- Search Trigger -->
                        <div class="hs-unfold">
                            <a class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
                               href="javascript:;" data-hs-unfold-options='{
                 "target": "#searchDropdown",
                 "type": "css-animation",
                 "animationIn": "fadeIn",
                 "hasOverlay": "rgba(46, 52, 81, 0.1)",
                 "closeBreakpoint": "md"
               }'>
                                <i class="tio-search"></i>
                            </a>
                        </div>
                    </li>

                    <li class="nav-item">
                        <!-- Account -->
                        <div class="hs-unfold">
                            <a class="js-hs-unfold-invoker navbar-dropdown-account-wrapper" href="javascript:;"
                               data-hs-unfold-options='{
                 "target": "#accountNavbarDropdown",
                 "type": "css-animation"
               }'>
                                <div class="avatar avatar-sm avatar-circle">
                                    <img class="avatar-img" src="../images/test/admin1.jpg" alt="Image Description">
                                    <span class="avatar-status avatar-sm-status avatar-status-success"></span>
                                </div>
                            </a>

                            <div id="accountNavbarDropdown"
                                 class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right navbar-dropdown-menu navbar-dropdown-account"
                                 style="width: 16rem;">
                                <div class="dropdown-item-text">
                                    <div class="media align-items-center">
                                        <div class="avatar avatar-sm avatar-dark avatar-circle mr-2">
                                            <img class="avatar-img" src="../images/test/admin1.jpg"
                                                 alt="Image Description">
                                            <!-- <span class="avatar-initials">A</span> -->
                                        </div>
                                        <div class="media-body">
                                            <span class="card-title h5">Nguyễn Văn A</span>
                                            <span class="card-text">nguyenvana@gmail.com</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">
                                        <span class="text-truncate pr-2" title="Profile &amp; account">Hồ Sơ Tài
                                            Khoản</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="text-truncate pr-2" title="Sign out">Đăng Xuất</span>
                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>
</div>
<div id="headerFluid" class="d-none"></div>
<div id="headerDouble" class="d-none"></div>

<!-- Thanh menu -->
<div id="sidebarMain" class="d-none">
    <aside
            class="js-navbar-vertical-aside navbar navbar-vertical-aside navbar-vertical navbar-vertical-fixed navbar-expand-xl navbar-bordered  ">
        <div class="navbar-vertical-container">
            <div class="navbar-vertical-footer-offset">
                <div class="navbar-brand-wrapper justify-content-between">
                    <!-- Logo -->
                    <a class="navbar-brand" href="index.html" aria-label="Front">
                        <img class="navbar-brand-logo" src="../images/logo/logo.png" alt="Logo">
                    </a>

                    <!-- Navbar Vertical Toggle -->
                    <button type="button"
                            class="js-navbar-vertical-aside-toggle-invoker navbar-vertical-aside-toggle btn btn-icon btn-xs btn-ghost-dark">
                        <i class="tio-clear tio-lg"></i>
                    </button>
                </div>

                <!-- Content -->
                <div class="navbar-vertical-content">
                    <ul class="navbar-nav navbar-nav-lg nav-tabs">
                        <!-- Dashboards -->
                        <li class="navbar-vertical-aside-has-menu">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/index.html"
                               title="Dashboards">
                                <i class="tio-home-vs-1-outlined nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Trang
                                        chủ</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/employee.html"
                               title="Nhân viên">
                                <i class="tio-users-switch nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Nhân
                                        viên</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu show">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/customer.html"
                               title="Khách hàng">
                                <i class="tio-user-big-outlined nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Khách
                                        hàng</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu ">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/banner.html"
                               title="Quảng cáo">
                                <i class="tio-panorama-image nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Quảng
                                        cáo</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu ">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/product.html"
                               title="Quảng cáo">
                                <i class="tio-motocycle nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Sản
                                        phẩm</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu ">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/order.html"
                               title="Đơn hàng">
                                <i class="tio-receipt-outlined nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Đơn
                                        hàng</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu ">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/review.html"
                               title="Đánh giá">
                                <i class="tio-comment-vs-outlined nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Đánh
                                        giá</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu ">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/statistic.html"
                               title="Thống kê">
                                <i class="tio-chart-bar-1 nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Thống
                                        kê</span>
                            </a>
                        </li>

                        <li class="navbar-vertical-aside-has-menu ">
                            <a class="js-navbar-vertical-aside-menu-link nav-link" href="../backend/setting.html"
                               title="Cấu hình">
                                <i class="tio-settings nav-icon"></i>
                                <span class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Cấu
                                        hình</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </aside>
</div>
<!-- chỉnh ở đây -->

<div id="sidebarCompact" class="d-none"></div>

<script src="assets\js\demo.js"></script>

<main id="content" role="main" class="main">
    <!-- Content -->
    <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
            <div class="row align-items-center mb-3">
                <div class="col-sm mb-2 mb-sm-0">
                    <h1 class="page-header-title">Quản lý khách hàng <span
                            class="badge badge-soft-dark ml-2">10</span></h1>
                </div>
            </div>
            <!-- End Row -->

            <!-- Nav Scroller -->
            <div class="js-nav-scroller hs-nav-scroller-horizontal">
                    <span class="hs-nav-scroller-arrow-prev" style="display: none;">
                        <a class="hs-nav-scroller-arrow-link" href="javascript:;">
                            <i class="tio-chevron-left"></i>
                        </a>
                    </span>

                <span class="hs-nav-scroller-arrow-next" style="display: none;">
                        <a class="hs-nav-scroller-arrow-link" href="javascript:;">
                            <i class="tio-chevron-right"></i>
                        </a>
                    </span>

                <!-- Nav -->
                <ul class="nav nav-tabs page-header-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Tất cả</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Hoạt động</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Vô hiệu hóa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
                    </li>
                </ul>
                <!-- End Nav -->
            </div>
            <!-- End Nav Scroller -->
        </div>
        <!-- End Page Header -->

        <!-- Card -->
        <div class="card">
            <!-- Body -->
            <div class="card-body">
                <div class="row justify-content-between align-items-center flex-grow-1">
                    <div class="col-lg-6 mb-3 mb-lg-0">
                        <form>
                            <!-- Search -->
                            <div class="input-group input-group-merge input-group-flush">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="tio-search"></i>
                                    </div>
                                </div>
                                <input id="datatableSearch" type="search" class="form-control"
                                       placeholder="Tìm kiếm khách hàng" aria-label="Tìm kiếm khách hàng">
                            </div>
                            <!-- End Search -->
                        </form>
                    </div>

                    <div class="col-lg-6">
                        <div class="d-sm-flex justify-content-sm-end align-items-sm-center">
                            <!-- Datatable Info -->
                            <div id="datatableCounterInfo" class="mr-2 mb-2 mb-sm-0">
                                <div class="d-flex align-items-center">
                                        <span class="font-size-sm mr-3">
                                            Đã chọn
                                            <span id="datatableCounter">0</span>
                                        </span>
                                    <a class="btn btn-sm btn-outline-danger" href="javascript:;">
                                        <i class="tio-delete-outlined"></i> Xóa
                                    </a>
                                </div>
                            </div>
                            <!-- End Datatable Info -->

                            <!-- Unfold -->
                            <div class="hs-unfold">
                                <a class="js-hs-unfold-invoker btn btn-white" href="javascript:;"
                                   data-hs-unfold-options='{
                         "target": "#showHideDropdown",
                         "type": "css-animation"
                       }'>
                                    <i class="tio-table mr-1"></i> Cột <span
                                        class="badge badge-soft-dark rounded-circle ml-1">5</span>
                                </a>

                                <div id="showHideDropdown"
                                     class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right dropdown-card"
                                     style="width: 15rem;">
                                    <div class="card card-sm">
                                        <div class="card-body">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="mr-2">Tên</span>

                                                <!-- Checkbox Switch -->
                                                <label class="toggle-switch toggle-switch-sm"
                                                       for="toggleColumn_name">
                                                    <input type="checkbox" class="toggle-switch-input"
                                                           id="toggleColumn_name" checked="">
                                                    <span class="toggle-switch-label">
                                                            <span class="toggle-switch-indicator"></span>
                                                        </span>
                                                </label>
                                                <!-- End Checkbox Switch -->
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="mr-2">Email</span>

                                                <!-- Checkbox Switch -->
                                                <label class="toggle-switch toggle-switch-sm"
                                                       for="toggleColumn_email">
                                                    <input type="checkbox" class="toggle-switch-input"
                                                           id="toggleColumn_email" checked="">
                                                    <span class="toggle-switch-label">
                                                            <span class="toggle-switch-indicator"></span>
                                                        </span>
                                                </label>
                                                <!-- End Checkbox Switch -->
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="mr-2">Số điện thoại</span>

                                                <!-- Checkbox Switch -->
                                                <label class="toggle-switch toggle-switch-sm"
                                                       for="toggleColumn_phone">
                                                    <input type="checkbox" class="toggle-switch-input"
                                                           id="toggleColumn_phone">
                                                    <span class="toggle-switch-label">
                                                            <span class="toggle-switch-indicator"></span>
                                                        </span>
                                                </label>
                                                <!-- End Checkbox Switch -->
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="mr-2">Địa chỉ</span>

                                                <!-- Checkbox Switch -->
                                                <label class="toggle-switch toggle-switch-sm"
                                                       for="toggleColumn_country">
                                                    <input type="checkbox" class="toggle-switch-input"
                                                           id="toggleColumn_country" checked="">
                                                    <span class="toggle-switch-label">
                                                            <span class="toggle-switch-indicator"></span>
                                                        </span>
                                                </label>
                                                <!-- End Checkbox Switch -->
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="mr-2">Trạng thái</span>

                                                <!-- Checkbox Switch -->
                                                <label class="toggle-switch toggle-switch-sm"
                                                       for="toggleColumn_status">
                                                    <input type="checkbox" class="toggle-switch-input"
                                                           id="toggleColumn_status" checked="">
                                                    <span class="toggle-switch-label">
                                                            <span class="toggle-switch-indicator"></span>
                                                        </span>
                                                </label>
                                                <!-- End Checkbox Switch -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Unfold -->
                        </div>
                    </div>
                </div>
                <!-- End Row -->
            </div>
            <!-- End Body -->

            <!-- Table -->
            <div class="table-responsive datatable-custom">
                <table id="datatable"
                       class="table table-lg table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
                       data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0],
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 15,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
                    <thead class="thead-light">
                    <tr>
                        <th scope="col" class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input id="datatableCheckAll" type="checkbox" class="custom-control-input">
                                <label class="custom-control-label" for="datatableCheckAll"></label>
                            </div>
                        </th>
                        <th class="table-column-pl-0">Tên</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Địa chỉ</th>
                        <th>Trạng thái</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck1">
                                <label class="custom-control-label" for="usersDataCheck1"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-circle">
                                    <img class="avatar-img" src="../images/user/user.png"
                                         alt="Image Description">
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">Nguyễn Văn Tý</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-success"></span>Hoạt động
                        </td>
                    </tr>

                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck2">
                                <label class="custom-control-label" for="usersDataCheck2"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-soft-primary avatar-circle">
                                    <span class="avatar-initials">Đ</span>
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">Nguyễn Thành Đạt</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-danger"></span>Vô hiệu hóa
                        </td>
                    </tr>

                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck3">
                                <label class="custom-control-label" for="usersDataCheck3"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-soft-primary avatar-circle">
                                    <span class="avatar-initials">M</span>
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">Nguyễn Thị Mai</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-success"></span>Hoạt động
                        </td>
                    </tr>

                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck4">
                                <label class="custom-control-label" for="usersDataCheck4"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-circle">
                                    <img class="avatar-img" src="../images/user/user.png"
                                         alt="Image Description">
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">Nguyễn Văn Tèo</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-success"></span>Hoạt động
                        </td>
                    </tr>

                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck5">
                                <label class="custom-control-label" for="usersDataCheck5"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-soft-info avatar-circle">
                                    <span class="avatar-initials">T</span>
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">Nguyễn Thị T</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-danger"></span>Vô hiệu hóa
                        </td>
                    </tr>

                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck6">
                                <label class="custom-control-label" for="usersDataCheck6"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-soft-danger avatar-circle">
                                    <span class="avatar-initials">L</span>
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">Nguyễn Thị Lan</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-success"></span>Hoạt động
                        </td>
                    </tr>

                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck7">
                                <label class="custom-control-label" for="usersDataCheck7"></label>
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="d-flex align-items-center" href="customer-detail.html">
                                <div class="avatar avatar-soft-dark avatar-circle">
                                    <span class="avatar-initials">V</span>
                                </div>
                                <div class="ml-3">
                                    <span class="h5 text-hover-primary">VTV Nguyễn</span>
                                </div>
                            </a>
                        </td>
                        <td>nvt@gmail.com</td>
                        <td>0349777777</td>
                        <td>789 kp6, Linh Trung, Thủ Đức, TP Hồ Chí Minh</td>
                        <td>
                            <span class="legend-indicator bg-danger"></span>Vô hiệu hóa
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <!-- End Table -->

            <!-- Footer -->
            <div class="card-footer">
                <!-- Pagination -->
                <div class="row justify-content-center justify-content-sm-between align-items-sm-center">
                    <div class="col-sm mb-2 mb-sm-0">
                        <div class="d-flex justify-content-center justify-content-sm-start align-items-center">
                            <span class="mr-2">Hiển thị:</span>

                            <!-- Select -->
                            <select id="datatableEntries" class="js-select2-custom" data-hs-select2-options='{
                            "minimumResultsForSearch": "Infinity",
                            "customClass": "custom-select custom-select-sm custom-select-borderless",
                            "dropdownAutoWidth": true,
                            "width": true
                          }'>
                                <option value="10">10</option>
                                <option value="15" selected="">15</option>
                                <option value="20">20</option>
                            </select>
                            <!-- End Select -->

                            <span class="text-secondary mr-2">trên</span>

                            <!-- Pagination Quantity -->
                            <span id="datatableWithPaginationInfoTotalQty"></span>
                        </div>
                    </div>

                    <div class="col-sm-auto">
                        <div class="d-flex justify-content-center justify-content-sm-end">
                            <!-- Pagination -->
                            <nav id="datatablePagination" aria-label="Activity pagination"></nav>
                        </div>
                    </div>
                </div>
                <!-- End Pagination -->
            </div>
            <!-- End Footer -->
        </div>
        <!-- End Card -->
    </div>
    <!-- End Content -->

    <!-- Footer -->
    <div class="footer">
        <div class="row justify-content-between align-items-center">
            <div class="col">
                <p class="font-size-sm mb-0"><span class="d-none d-sm-inline-block">Copyright © 2022 Copyright by
                            VTV
                            VietNam</span></p>
            </div>
        </div>
    </div>
    <!-- End Footer -->
</main>

<!-- JS Implementing Plugins -->
<script src="assets\js\vendor.min.js"></script>

<!-- JS Front -->
<script src="assets\js\theme.min.js"></script>

<!-- JS Plugins Init. -->
<script>
    $(document).on('ready', function () {
        // ONLY DEV
        // =======================================================

        if (window.localStorage.getItem('hs-builder-popover') === null) {
            $('#builderPopover').popover('show')
                .on('shown.bs.popover', function () {
                    $('.popover').last().addClass('popover-dark')
                });

            $(document).on('click', '#closeBuilderPopover', function () {
                window.localStorage.setItem('hs-builder-popover', true);
                $('#builderPopover').popover('dispose');
            });
        } else {
            $('#builderPopover').on('show.bs.popover', function () {
                return false
            });
        }

        // END ONLY DEV
        // =======================================================


        // BUILDER TOGGLE INVOKER
        // =======================================================
        $('.js-navbar-vertical-aside-toggle-invoker').click(function () {
            $('.js-navbar-vertical-aside-toggle-invoker i').tooltip('hide');
        });


        // INITIALIZATION OF MEGA MENU
        // =======================================================
        var megaMenu = new HSMegaMenu($('.js-mega-menu'), {
            desktop: {
                position: 'left'
            }
        }).init();



        // INITIALIZATION OF NAVBAR VERTICAL NAVIGATION
        // =======================================================
        var sidebar = $('.js-navbar-vertical-aside').hsSideNav();


        // INITIALIZATION OF TOOLTIP IN NAVBAR VERTICAL MENU
        // =======================================================
        $('.js-nav-tooltip-link').tooltip({ boundary: 'window' })

        $(".js-nav-tooltip-link").on("show.bs.tooltip", function (e) {
            if (!$("body").hasClass("navbar-vertical-aside-mini-mode")) {
                return false;
            }
        });


        // INITIALIZATION OF UNFOLD
        // =======================================================
        $('.js-hs-unfold-invoker').each(function () {
            var unfold = new HSUnfold($(this)).init();
        });


        // INITIALIZATION OF FORM SEARCH
        // =======================================================
        $('.js-form-search').each(function () {
            new HSFormSearch($(this)).init()
        });


        // INITIALIZATION OF NAV SCROLLER
        // =======================================================
        $('.js-nav-scroller').each(function () {
            new HsNavScroller($(this)).init()
        });


        // INITIALIZATION OF TABS
        // =======================================================
        $('.js-tabs-to-dropdown').each(function () {
            var transformTabsToBtn = new HSTransformTabsToBtn($(this)).init();
        });


        // INITIALIZATION OF SELECT2
        // =======================================================
        $('.js-select2-custom').each(function () {
            var select2 = $.HSCore.components.HSSelect2.init($(this));
        });


        // INITIALIZATION OF DATATABLES
        // =======================================================
        var datatable = $.HSCore.components.HSDatatables.init($('#datatable'), {
            select: {
                style: 'multi',
                selector: 'td:first-child input[type="checkbox"]',
                classMap: {
                    checkAll: '#datatableCheckAll',
                    counter: '#datatableCounter',
                    counterInfo: '#datatableCounterInfo'
                }
            },
            language: {
                zeroRecords: '<div class="text-center p-4">' +
                    '<img class="mb-3" src="./assets/svg/illustrations/sorry.svg" alt="Image Description" style="width: 7rem;">' +
                    '<p class="mb-0">No data to show</p>' +
                    '</div>'
            }
        });

        $('.js-datatable-filter').on('change', function () {
            var $this = $(this),
                elVal = $this.val(),
                targetColumnIndex = $this.data('target-column-index');

            datatable.column(targetColumnIndex).search(elVal).draw();
        });

        $('#datatableSearch').on('mouseup', function (e) {
            var $input = $(this),
                oldValue = $input.val();

            if (oldValue == "") return;

            setTimeout(function () {
                var newValue = $input.val();

                if (newValue == "") {
                    // Gotcha
                    datatable.search('').draw();
                }
            }, 1);
        });

        $('#toggleColumn_name').change(function (e) {
            datatable.columns(1).visible(e.target.checked)
        })

        $('#toggleColumn_email').change(function (e) {
            datatable.columns(2).visible(e.target.checked)
        })

        $('#toggleColumn_phone').change(function (e) {
            datatable.columns(3).visible(e.target.checked)
        })

        $('#toggleColumn_country').change(function (e) {
            datatable.columns(4).visible(e.target.checked)
        })

        $('#toggleColumn_status').change(function (e) {
            datatable.columns(5).visible(e.target.checked)
        })


        // INITIALIZATION OF MODAL ON PAGE LOAD
        // =======================================================
        $('#customersGuideModal').modal('show')
    });
</script>

<!-- IE Support -->
<script>
    if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) document.write('<script src="./assets/vendor/babel-polyfill/polyfill.min.js"><\/script>');
</script>
</body>

</html>