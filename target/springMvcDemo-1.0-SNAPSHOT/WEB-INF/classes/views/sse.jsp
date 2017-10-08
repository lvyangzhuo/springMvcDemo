<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017-10-7
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>SSE Demo</title>
</head>
<body>
    <div id="msgFrompPush"></div>
<script type="text/javascript" src="<c:url value="../assets/js/jquery.js"/>"></script>
<script type="text/javascript">
    if(window.EventSource){
        var source = new EventSource('push');
        s='';
        source.addEventListener('message',function (e) {
            s+=e.data + "<br/>";
            $("#msgFrompPush").html(s);
        });
        source.addEventListener('open',function (e) {
            console.log("连接打开.")
        },false);
        source.addEventListener('error',function (e) {
            if(e.readyState == EventSource.CLOSED){
                console.log("链接关闭");
            }else {
                console.log(e.readyState);
            }
        },false);
    }else {
        console.log("你的浏览器不支持SSE")
    }
</script>
</body>
</html>
