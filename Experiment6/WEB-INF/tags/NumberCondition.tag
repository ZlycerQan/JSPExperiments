<%-- NumberCondition.tag --%>
<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>

<%@ variable name-given="name" scope="AT_END" %>
<%@ variable name-given="birthday" scope="AT_END" %>
<%@ variable name-given="email" scope="AT_END" %>

<%
    if (number == null) {
        jspContext.setAttribute("result", "number can not be null.");
    } else {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/student?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            Connection connection = DriverManager.getConnection(url, "root", "password");
            Statement s = connection.createStatement();
            ResultSet res = s.executeQuery("SELECT name, birthday, email FROM message WHERE number = \"" + number + "\";");
            if (res.next()) {
                jspContext.setAttribute("name", res.getString(1));
                jspContext.setAttribute("birthday", res.getString(2));
                jspContext.setAttribute("email", res.getString(3));
            } else {
                jspContext.setAttribute("name", "");
                jspContext.setAttribute("birthday", "");
                jspContext.setAttribute("email", "");
            }
        } catch(Exception e) {
            jspContext.setAttribute("name", "");
            jspContext.setAttribute("birthday", "");
            jspContext.setAttribute("email", "");
        }
        
    }
%>