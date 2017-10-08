<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017-10-7
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload page</title>
</head>
<body>
    <form action="upload" enctype="multipart/form-data" method="post">
        <input type="file" name="file"/><br/>
        <input type="submit" value="上传"/>
    </form>
</body>
</html>
