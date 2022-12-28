<%--
  Created by IntelliJ IDEA.
  User: thonghoang
  Date: 12/27/2022
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>File Upload</h1>
    <form method="post" action="upload" enctype="multipart/form-data">
        Select file to upload: <input type="file" name="file" size="60"/><br/>
        <br/> <input type="submit" value="Upload"/>
    </form>
</center>
</body>
</html>
