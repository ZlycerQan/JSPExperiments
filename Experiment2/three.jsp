<!-- three.jsp -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>
      three
    </title>
    <jsp:include page="head.txt" />
  </head>
  <body style="background-color: wheat;">
    <p style="color: red; size:5px"> This is three.jsp </p>
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
    <img src="b.jpg" width="<%=number%>" height="<%=number%>">
  </body>
</html>