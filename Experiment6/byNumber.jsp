<%-- byNumber.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<html>

<head>
<title> byNumber </title>
</head>

<body>
    <div>
    <%
        if (request.getParameter("number") != null) {
    %>
        <tag:NumberCondition number='<%=request.getParameter("number")%>'/>
        <%  if (!name.isEmpty()) { 
                out.println("<p> number: " + request.getParameter("number") + "</p>");
                out.println("<p> name: " + name + "</p>");
                out.println("<p> birthday: " + birthday + "</p>");
                out.println("<p> email: " + email + "</p>");
            } else {
                out.println("Student does not exist.");
            }
        %>
    <%
        }
    %>
    </div>
</body>
</html>