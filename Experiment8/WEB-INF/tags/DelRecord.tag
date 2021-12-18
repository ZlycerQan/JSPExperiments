<%-- DelRecord.tag --%>
<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/student?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        //Connection connection = DriverManager.getConnection(url, "root", "******");
        Connection connection = DriverManager.getConnection(url, "root", "Mylife0x0th2w3%");
        PreparedStatement p = connection.prepareStatement("DELETE FROM message WHERE number = ?");
        p.setString(1, number);
        p.execute();
    } catch(Exception e) {
    }
%>