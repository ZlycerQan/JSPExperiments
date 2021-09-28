<!-- error.jsp -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>
      error
    </title>
    <jsp:include page="head.txt" />
  </head>
  <body style="background-color: wheat;">
    <p style="color: pink; size:5px"> This is error.jsp </p>
    <span>
        The error message is
    </span>
    <span style="color: red;">
    <%
        String message = request.getParameter("message");
        out.println(message);
    %>
    </span>
    <br />
    <img src="error.jpg">
  </body>
</html>