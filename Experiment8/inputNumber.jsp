<%-- inputNumber.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
<html>

<head>
<title> inputNumber </title>
</head>

<body>
<div>
    <form action="/Experiment8/delete.jsp">
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