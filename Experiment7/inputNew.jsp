<%-- inputNew.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<html>

<head>
<title> inputCondition </title>
</head>

<body>
<div>
    <form action="/Experiment7/NewResult.jsp">
        <table>
            <tr>
                <th />
                <th />
            </tr>
            <tr>
                <td>Please input the number</td>
                <td>
                    <input type="text" name="number">
                </td>
            </tr>
            <tr>
                <td>Please input the new name</td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>Please input the new birthday</td>
                <td>
                    <input type="text" name="birthday">
                </td>
            </tr>
            <tr>
                <td>Please input the new email</td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>
        </table>
        <input type="submit">
    </form>
</div>
<div>
    <p>message table:</p>
    <tag:QueryTag/>
    <%=queryResult%>
</div>
</body>
</html>