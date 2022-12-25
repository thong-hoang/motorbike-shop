<%--
  Created by IntelliJ IDEA.
  User: thonghoang
  Date: 12/22/2022
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<img src="/images/${fileName}" alt="">--%>

<img src="<c:url value="/images/${image}" />"/>
</body>
</html>
