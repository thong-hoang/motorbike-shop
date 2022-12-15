<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <c:if test="${title == null}">
        <title>VTV | Admin - Thêm mới nhân viên</title>
    </c:if>

    <c:if test="${title != null}">
        <title>VTV | Admin - ${title}</title>
    </c:if>

    <jsp:include page="css.jsp"/>
</head>

<body class="footer-offset">

<jsp:include page="header.jsp"/>

<main id="content" role="main" class="main">
    <div class="content container-fluid">
        <div class="page-header">
            <div class="col-sm mb-2 mb-sm-0">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb breadcrumb-no-gutter">
                        <li class="breadcrumb-item"><a class="breadcrumb-link" href="list_employees"><i
                                class="tio-back-ui"></i>
                            Quản lý nhân viên</a></li>
                    </ol>
                </nav>

                <c:if test="${title == null}">
                    <h1 class="page-header-title m-auto">Thêm nhân viên</h1>
                </c:if>
                <c:if test="${title != null}">
                    <h1 class="page-header-title m-auto">${title}</h1>
                </c:if>
            </div>
        </div>

        <c:if test="${employee.id != null}">
        <form class="js-step-form py-md-5" action="update_employee" method="post">
            <input type="hidden" name="id" value="${employee.id}"/>
            </c:if>

            <c:if test="${role.id == null}">
            <form class="js-step-form py-md-5" action="create_employee" method="post">
                </c:if>

                <%--        <form class="js-step-form py-md-5" data-hs-step-form-options='{--%>
                <%--                "progressSelector": "#addUserStepFormProgress",--%>
                <%--                "stepsSelector": "#addUserStepFormContent",--%>
                <%--                "endSelector": "#addUserFinishBtn",--%>
                <%--                "isValidate": false--%>
                <%--              }' action="create_employee" method="post">--%>
                <div class="row justify-content-lg-center">
                    <div class="col-lg-8">
                        <!-- Step -->
                        <a class="step-content-wrapper">

                        </a>

                        <!-- Content Step Form -->
                        <div id="addUserStepFormContent">
                            <!-- Card -->
                            <div id="addUserStepProfile" class="card card-lg active">
                                <!-- Body -->
                                <div class="card-body">
                                    <!-- Form Group -->
                                    <div class="row form-group">
                                        <h1 class="m-auto">Thông tin nhân viên</h1>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-sm-3 col-form-label input-label">Ảnh đại diện</label>

                                        <div class="col-sm-9">
                                            <div class="d-flex align-items-center">
                                                <!-- Avatar -->
                                                <label class="avatar avatar-xl avatar-circle avatar-uploader mr-5"
                                                       for="avatarUploader">
                                                    <img id="avatarImg" class="avatar-img"
                                                         src="../images/employee/default.jpg"
                                                         alt="Image Description">

                                                    <input type="file" class="js-file-attach avatar-uploader-input"
                                                           id="avatarUploader"
                                                           data-hs-file-attach-options='
                                                       {"textTarget": "#avatarImg",
                                                       "mode": "image",
                                                       "targetAttr": "src",
                                                       "resetTarget": ".js-file-attach-reset-img",
                                                       "resetImg": "../images/employee/default.jpg",
                                                       "allowTypes": [".png", ".jpeg", ".jpg"]}'>

                                                    <span class="avatar-uploader-trigger">
                                                    <i class="tio-edit avatar-uploader-icon shadow-soft"></i>
                                                </span>
                                                </label>

                                                <button type="button" class="js-file-attach-reset-img btn btn-white">Xóa
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="lastNameLabel"
                                               class="col-sm-3 col-form-label input-label">Họ</label>

                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="lastName" id="lastNameLabel"
                                                   value="${employee.lastName}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="firstNameLabel"
                                               class="col-sm-3 col-form-label input-label">Tên</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="firstName" id="firstNameLabel"
                                                   value="${employee.firstName}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="emailLabel"
                                               class="col-sm-3 col-form-label input-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" name="email" id="emailLabel"
                                                   value="${employee.email}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="passwordLabel" class="col-sm-3 col-form-label input-label">Mật
                                            khẩu</label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" name="password"
                                                   id="passwordLabel" value="${employee.password}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="addressLabel" class="col-sm-3 col-form-label input-label">Địa
                                            chỉ</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="street" id="addressLabel"
                                                   value="${employee.address.street}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="wardLabel" class="col-sm-3 col-form-label input-label">Phường /
                                            Xã</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="ward" id="wardLabel"
                                                   value="${employee.address.ward}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="districtLabel" class="col-sm-3 col-form-label input-label">Quận /
                                            Huyện</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="district" id="districtLabel"
                                                   value="${employee.address.district}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="cityLabel" class="col-sm-3 col-form-label input-label">Tỉnh / Thành
                                            phố</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="city" id="cityLabel"
                                                   value="${employee.address.city}" required>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="phoneLabel" class="col-sm-3 col-form-label input-label">Số điện
                                            thoại</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="phone" id="phoneLabel"
                                                   value="${employee.phoneNumber}" required>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label input-label" for="roleLabel">Vai
                                            trò</label>
                                        <div class="col-sm-9 pt-1">
                                            <c:forEach var="role" items="${roles}">
                                                <input id="roleLabel" type="checkbox" class="mt-2" name="roles"
                                                       value="${role.id}"> ${role.name}
                                                - <small>${role.description}</small><br>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label input-label" for="enabled">Hoạt
                                            động</label>
                                        <div class="col-sm-9 pt-1">
                                            <input type="checkbox" class="mt-2" name="enabled"
                                                   value="${employee.enabled}" id="enabled" checked>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-footer d-sm-flex align-items-sm-center">
                                <div class="ml-auto">
                                    <button type="button" class="btn btn-white mr-2" id="btnCancel">Hủy</button>
                                    <button id="addUserFinishBtn" type="submit" class="btn btn-primary">Thêm</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    </div>

    <jsp:include page="footer.jsp"/>
</main>

<jsp:include page="modal_dialog.jsp"/>

<jsp:include page="js.jsp"/>

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

    $(document).ready(function () {
        $("#btnCancel").on("click", function () {
            window.location = "list_employees";
        });
    });
</script>

</body>

</html>
