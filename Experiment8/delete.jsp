<%-- delete.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<html>

<head>
<title> delete </title>
</head>

<body>
<div>
<div>
    <%
        if (request.getParameter("number") != null) {
    %>
        <tag:DelRecord number='<%=request.getParameter("number")%>'/>
    <%
        }
    %>
</div>
</body>
</html>