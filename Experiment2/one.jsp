<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>
    <title> one </title>
    <jsp:include page="head.txt" />
  </head>
  <body style="background-color: wheat;">
    <form action="" method="post" name=form>
      <p>Please input an integer from 1 to 100</p>
      <input type="text" name="number">
      <input type="submit" value="submit">
    </form>
    <%
        String numberString = request.getParameter("number");
        int number = 0;
        try {
            if (numberString != null) {
                number = Integer.parseInt(numberString);
            }
        } catch (NullPointerException | NumberFormatException e) {
    %>
            <jsp:forward page="error.jsp">
              <jsp:param name="message" value="<%=e.toString()%>" />
            </jsp:forward>
    <%
    }
        if (number >= 1 && number <= 50) {
    %>
            <jsp:forward page="two.jsp">
              <jsp:param name="number" value="<%=number%>" />
            </jsp:forward>
    <%
        } else if (number > 50 && number <= 100) {
    %>
            <jsp:forward page="three.jsp">
              <jsp:param name="number" value="<%=number%>" />
            </jsp:forward>
    <%
        } else if (number < 0 || number > 100) {
    %>
            <jsp:forward page="error.jsp">
              <jsp:param name="message" value="<%=number%>" />
            </jsp:forward>
    <%
        }
    %>
  </body>
</html>