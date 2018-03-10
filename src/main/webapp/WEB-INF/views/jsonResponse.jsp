<%--
  Created by IntelliJ IDEA.
  User: 王大大
  Date: 2018/1/3
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div id="result"></div>
  <input type="button" value="check" onclick="check()"/>
  </body>
  <script>
      function check() {
          var xhttp = new XMLHttpRequest();
          xhttp.open("GET", "json", true);
          xhttp.onreadystatechange = function () {
              if (this.readyState == 4 && this.status == 200) {
                  var obj = JSON.parse(xhttp.responseText);
                  document.getElementById("result").innerHTML = obj.email+ obj.password;
              }
          };
          xhttp.send();
      }
  </script>

</html>
