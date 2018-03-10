<%--
  Created by IntelliJ IDEA.
  User: 王大大
  Date: 2018/1/3
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="result"></div>
<input type="button" value="check" onclick="check()"/>
<script type="text/javascript">
    function check() {
        var saveDataAry = [
            {"email": "tom@google.com", "password": "tomSecurity"},
            {"email": "jerry@google.com", "password": "jerrySecurity"},
        ];

        var xhttp = new XMLHttpRequest();
        xhttp.open("POST", "saveUser", true);
        xhttp.setRequestHeader("Content-Type", "application/json");
        xhttp.onreadystatechange = function() {
        };

        xhttp.send(JSON.stringify(saveDataAry));
    }
</script>
</body>
</html>

