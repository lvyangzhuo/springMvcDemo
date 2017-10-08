<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017-10-7
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>servlet async support</title>
</head>
<body>
<script type="text/javascript" src="<c:url value="../assets/js/jquery.js"/>"></script>
<script type="text/javascript">
    deferred();

    function deferred() {
        $.get('defer', function (data) {
            console.log(data);
            deferred();
        });
    }
</script>
</body>
</html>
