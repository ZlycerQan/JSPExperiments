<!-- InputNumber.jsp -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<html>
<head>
    <title>
        InputNumber
    </title>
</head>
<body>
    <div style="size: 10px">
        <p>Please input numbers and select operator.</p>
    </div>
    <form method="post" action="">
        <input type="text" style="width: 100px" name="lhs" autocomplete="off">
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="text" style="width: 100px" name="rhs" autocomplete="off">
        <br />
        <input type="submit" value="submit">
    </form>

    <div style="background-color: aqua; float: left">
    <%
        if (request.getParameter("lhs") != null && request.getParameter("rhs") != null) {
    %>
        <tag:Computer lhs='<%=request.getParameter("lhs")%>' operator='<%=request.getParameter("operator")%>' rhs='<%=request.getParameter("rhs")%>' />
        <%=result%>
    <%
        }
    %>
    </div>

</body>
</html>