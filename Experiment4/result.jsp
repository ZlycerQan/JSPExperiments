<%-- result.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>
Result
</title>
<head>

<body>
    <%
        String str = request.getParameter("value");
        try {
            double s = Double.parseDouble(str);
            if (s < 0) {
                response.setContentType("text/plain; charset=UTF-8");
                out.println("The square is " + (s * s));
            } else if (s > 0 && s < 100) {
                response.setContentType("application/msword; charset=UTF-8");
                out.println("The cube is " + (s * s * s));
            } else {
                response.setContentType("text/html; charset=UTF-8");
                out.println("The number is " + s);
            }
        } catch(Exception e) {
            response.sendRedirect("input.jsp");
        }
    %>
</body>
</html>
