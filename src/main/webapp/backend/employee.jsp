<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>VTV | Admin - Danh sách nhân viên</title>

    <jsp:include page="css.jsp"/>
</head>

<body class="footer-offset">

<jsp:include page="header.jsp"/>

<main id="content" role="main" class="main">
    <div class="content container-fluid">
        <div class="page-header">
            <div class="row align-items-end">
                <div class="col-sm mb-2 mb-sm-0">

                    <h1 class="page-header-title">Quản lý nhân viên<span class="badge badge-soft-dark ml-2">
                        ${numberOfEmployees}</span></h1>
                </div>

                <div class="col-sm-auto">
                    <a class="btn btn-primary" href="create_employee">
                        <i class="tio-user-add mr-1"></i> Thêm nhân viên
                    </a>
                </div>
            </div>
        </div>

        <c:if test="${message != null}">
            <div class="alert alert-success text-center" id="hideMessage">${message}</div>
        </c:if>

        <div class="card">
            <div class="card-header">
                <div class="row justify-content-between align-items-center flex-grow-1">
                    <div class="col-sm-6 col-md-4 mb-3 mb-sm-0">
                        <form>
                            <!-- Search -->
                            <div class="input-group input-group-merge input-group-flush">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="tio-search"></i>
                                    </div>
                                </div>
                                <input id="datatableSearch" type="search" class="form-control"
                                       placeholder="Tìm kiếm nhân viên" aria-label="Search users">
                            </div>
                            <!-- End Search -->
                        </form>
                    </div>

                    <div class="col-sm-6">
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
                            <div class="hs-unfold mr-2">
                                <a class="js-hs-unfold-invoker btn btn-sm btn-white dropdown-toggle"
                                   href="javascript:;" data-hs-unfold-options='{
                         "target": "#usersExportDropdown",
                         "type": "css-animation"
                       }'>
                                    <i class="tio-download-to mr-1"></i> Xuất file
                                </a>

                                <div id="usersExportDropdown"
                                     class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-sm-right">
                                    <span class="dropdown-header">Lựa chọn</span>
                                    <a id="export-copy" class="dropdown-item" href="javascript:;">
                                        <img class="avatar avatar-xss avatar-4by3 mr-2"
                                             src="../images/user/copy.svg" alt="Image Description">
                                        Sao chép
                                    </a>
                                    <a id="export-print" class="dropdown-item" href="javascript:;">
                                        <img class="avatar avatar-xss avatar-4by3 mr-2"
                                             src="../images/user/print.svg" alt="Image Description">
                                        In
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <span class="dropdown-header">Tải file</span>
                                    <a id="export-excel" class="dropdown-item" href="javascript:;">
                                        <img class="avatar avatar-xss avatar-4by3 mr-2"
                                             src="../images/user/excel.svg" alt="Image Description">
                                        Excel
                                    </a>
                                    <a id="export-csv" class="dropdown-item" href="javascript:;">
                                        <img class="avatar avatar-xss avatar-4by3 mr-2"
                                             src="../images/user/placeholder-csv-format.svg" alt="Image Description">
                                        .CSV
                                    </a>
                                    <a id="export-pdf" class="dropdown-item" href="javascript:;">
                                        <img class="avatar avatar-xss avatar-4by3 mr-2" src="../images/user/pdf.svg"
                                             alt="Image Description">
                                        PDF
                                    </a>
                                </div>
                            </div>
                            <!-- End Unfold -->
                            <!-- Unfold -->
                            <div class="hs-unfold">
                                <a class="js-hs-unfold-invoker btn btn-sm btn-white" href="javascript:;"
                                   data-hs-unfold-options='{
                         "target": "#usersFilterDropdown",
                         "type": "css-animation",
                         "smartPositionOff": true
                       }'>
                                    <i class="tio-filter-list mr-1"></i> Lọc
                                    <span class="badge badge-soft-dark rounded-circle ml-1">1</span>
                                </a>

                                <div id="usersFilterDropdown"
                                     class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-sm-right dropdown-card card-dropdown-filter-centered"
                                     style="min-width: 22rem;">
                                    <!-- Card -->
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="card-header-title">Lọc theo vai trò</h5>

                                            <!-- Toggle Button -->
                                            <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-secondary ml-2"
                                               href="javascript:;" data-hs-unfold-options='{
                              "target": "#usersFilterDropdown",
                              "type": "css-animation",
                              "smartPositionOff": true
                             }'>
                                                <i class="tio-clear tio-lg"></i>
                                            </a>
                                            <!-- End Toggle Button -->
                                        </div>

                                        <div class="card-body">
                                            <form>
                                                <div class="form-row">
                                                    <div class="col-sm form-group">
                                                        <small class="text-cap mb-2">Vai trò</small>

                                                        <!-- Select -->
                                                        <select
                                                                class="js-select2-custom js-datatable-filter custom-select"
                                                                size="1" data-target-column-index="5"
                                                                data-hs-select2-options='{
                                          "minimumResultsForSearch": "Infinity"
                                        }'>
                                                            <option value="">Chọn vai trò</option>
                                                            <option value="Quản trị viên">Quản trị viên</option>
                                                            <option value="Nhân viên">Nhân viên</option>
                                                        </select>
                                                        <!-- End Select -->
                                                    </div>

                                                </div>

                                                <!--fix here filter any-->

                                                <!-- End Row -->

                                                <a class="js-hs-unfold-invoker btn btn-block btn-primary"
                                                   href="javascript:;" data-hs-unfold-options='{
                                "target": "#usersFilterDropdown",
                                "type": "css-animation",
                                "smartPositionOff": true
                               }'>Áp dụng</a>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- End Card -->
                                </div>
                            </div>
                            <!-- End Unfold -->

                        </div>
                    </div>
                </div>
                <!-- End Row -->
            </div>

            <div class="table-responsive datatable-custom">
                <table id="datatable"
                       class="table table-lg table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
                       data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0, 6],
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 5,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
                    <thead class="thead-light">
                    <tr>
                        <th>Tên</th>
                        <th>Số điện thoại</th>
                        <th>Địa chỉ</th>
                        <th>Vai trò</th>
                        <th>Trạng thái</th>
                        <th></th>
                    </tr>
                    </thead>

                    <tbody>

                    <c:forEach var="employees" items="${listEmployees}">
                        <c:if test="${employees.id == 1}">
                            <tr>
                                <td>
                                    <a class="d-flex align-items-center">
                                        <div class="avatar avatar-soft-dark avatar-circle">
                                            <span class="avatar-initials">O</span>
                                        </div>
                                        <div class="ml-3">
                                            <span class="d-block h5 text-hover-primary mb-0">
                                                 ${employees.firstName}
                                                <i class="tio-verified text-primary" data-toggle="tooltip"
                                                   data-placement="top"></i>
                                            </span>
                                            <span class="d-block font-size-sm text-body">${employees.email}</span>
                                        </div>
                                    </a>
                                </td>
                                <td>
                                    <span class="d-block font-size-sm">${employees.phoneNumber}</span>
                                </td>
                                <td>
                                    <span></span>
                                </td>
                                <td>${employees.roles}</td>
                                <td>
                                </td>
                            </tr>
                        </c:if>
                        <c:if test="${employees.id != 1}">
                            <tr>
                                <td>
                                    <a class="d-flex align-items-center" href="edit_employee?id=${employees.id}">
                                        <c:if test="${employees.imagePath == null}">
                                            <div class="avatar avatar-soft-dark avatar-circle">
                                                <span class="avatar-initials">O</span>
                                            </div>
                                        </c:if>

                                        <c:if test="${employees.imagePath != null}">
                                            <div class="avatar avatar-circle">
                                                <p>${employees.imagePath}</p>
                                                <img class="avatar-img" src="../images/user/user.png"
                                                     alt="Image Description">
                                            </div>
                                        </c:if>

                                        <div class="ml-3">
                                            <span class="d-block h5 text-hover-primary mb-0">
                                                        ${employees.lastName} ${employees.firstName}
                                            </span>
                                            <span class="d-block font-size-sm text-body">${employees.email}</span>
                                        </div>
                                    </a>
                                </td>
                                <td>
                                    <span class="d-block font-size-sm">${employees.phoneNumber}</span>
                                </td>
                                <td>
                                    <span class="d-block font-size-sm">
                                        ${employees.address.street},
                                        ${employees.address.ward}, ${employees.address.district},
                                        ${employees.address.city}
                                    </span>
                                </td>
                                <td>${employees.roles}</td>
                                <td>
                                    <input type="hidden" value="${employees.enabled}">
                                    <c:if test="${employees.enabled == true}">
                                        <a class="fas fa-check-circle fa-2x icon-gray"
                                           href="enable_employee?enabled=false&id=${employees.id}" title="Vô hiệu hoá">
                                        </a>
                                    </c:if>
                                    <c:if test="${employees.enabled == false}">
                                        <a class="fas fa-check-circle fa-2x icon-green"
                                           href="enable_employee?enabled=true&id=${employees.id}" title="Kích hoạt">
                                        </a>
                                    </c:if>
                                </td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <a class="btn btn-sm btn-white" href="edit_employee?id=${employees.id}">
                                            <i class="tio-edit"></i> Chỉnh sửa
                                        </a>
                                        <a class="btn btn-sm btn-white" href="delete_employee?id=${employees.id}">
                                            <i class="tio-delete"></i> Xóa
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

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
                                <option value="5" selected>5</option>
                                <option value="10">10</option>
                                <option value="15">15</option>
                            </select>
                            <!-- End Select -->

                            <span class="text-secondary mr-2">&nbsp; trên ${totalEmployees}</span>

                            <!-- Pagination Quantity -->
                            <span id="datatableWithPaginationInfoTotalQty"></span>
                            <!--                            <span class="text-secondary mr-2 pl-2"> nhân viên</span>-->
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
        </div>
    </div>

    <jsp:include page="footer.jsp"/>

</main>

<jsp:include page="js.jsp"/>

<script type="text/javascript">
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
