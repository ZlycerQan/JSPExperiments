<%-- inputCondition.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>

<head>
<title> inputCondition </title>
</head>

<body>
    <p> Please input the id of student </p>
    <form action="/Experiment6/byNumber.jsp">
        <input type="text" name="number">
        <input type="submit">
    </form>
</body>
</html>