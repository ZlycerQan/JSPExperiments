<!-- two.jsp -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>
      two
    </title>
    <jsp:include page="head.txt" />
  </head>
  <body style="background-color: wheat;">
    <p style="color: aqua; size:5px"> This is two.jsp </p>
    <p>
    <%
        String numberString = request.getParameter("number");
        int number = 0;
        if (numberString != null) {
            number = Integer.parseInt(numberString);
        }
        out.println(number);
    %>
    </p>
    <img src="a.jpg" width="<%=number%>" height="<%=number%>">
  </body>
</html>