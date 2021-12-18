<%-- NewRecord.tag --%>
<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="birthday" required="true" %>
<%@ attribute name="email" required="true" %>
<%@ variable name-given="update" scope="AT_END" %>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/student?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        Connection connection = DriverManager.getConnection(url, "root", "******");
        PreparedStatement p = connection.prepareStatement("UPDATE message SET name = ?, birthday = ?, email = ? WHERE number = ?;");
        p.setString(1, name);
        p.setString(2, birthday);
        p.setString(3, email);
        p.setString(4, number);
        p.execute();
    } catch(Exception e) {
    }
%>