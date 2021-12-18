<%-- NewResult.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<html>

<head>
<title> inputCondition </title>
</head>

<body>
<div>
<div>
    <%
        if (request.getParameter("number") != null) {
    %>
        <p>message table:</p>
        <tag:NewRecord 
            number='<%=request.getParameter("number")%>' 
            name='<%=request.getParameter("name")%>' 
            birthday='<%=request.getParameter("birthday")%>' 
            email='<%=request.getParameter("email")%>'/>
        <tag:QueryTag />
        <%=queryResult%>
    <%
        }
    %>
    
</div>
</body>
</html>