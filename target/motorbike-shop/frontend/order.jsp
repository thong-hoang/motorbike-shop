<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>VTV | Lịch sử đơn hàng</title>
    <jsp:include page="css.jsp"/>

</head>

<body>

<jsp:include page="header1.jsp"/>

<div class="container mb-3">
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-white">
                        <li class="breadcrumb-item"><a href="/motorbike_shop/">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tài khoản</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>

    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 shop__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Tổng cộng</th>
                            <th>Ngày đặt mua</th>
                            <th>Trạng thái</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="order" items="${listOrders}">
                            <tr>
                                <td class="text-primary">
                                    <a href="order_history_detail?id=${order.id}">#${order.id}</a>
                                </td>
                                <td class="cart__price">
                                    <fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${order.total}" type="currency"/>
                                </td>

                                <td>
                                    <fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${order.orderDate}"/>
                                </td>
                                <c:forEach items="${statusIds}" var="statusId">
                                    <c:if test="${statusId.value == 1 && statusId.key == order.id}">
                                        <td>${order.status}</td>
                                    </c:if>
                                    <c:if test="${statusId.value == 2 && statusId.key == order.id}">
                                        <td class="text-success">${order.status}</td>
                                    </c:if>
                                    <c:if test="${statusId.value == 3 && statusId.key == order.id}">
                                        <td class="text-danger">${order.status}</td>
                                    </c:if>
                                </c:forEach>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>

<jsp:include page="footer1.jsp"/>

<jsp:include page="js.jsp"/>

<script>
</script>

</body>

</html>
