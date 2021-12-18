<%-- QueryTag.tag --%>
<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ variable name-given="queryResult" scope="AT_END" %>
<%
      String template = "<tr> <td> %s </td> <td> %s </td> <td> %s </td> <td> %s </td> </tr>";
      Class.forName("com.mysql.cj.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/student?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
      Connection connection = DriverManager.getConnection(url, "root", "******");
      Statement s = connection.createStatement();
      ResultSet res = s.executeQuery("SELECT number, name, birthday, email FROM message;");
      StringBuilder builder = new StringBuilder("<table> <tr> <th> number </th> <th> name </th> <th> birthday </th> <th> email </th> </tr> ");
      while (res.next()) {
         builder.append(String.format(template, res.getString(1), res.getString(2), res.getString(3), res.getString(4)));
      } 
      builder.append("</table>");   
      jspContext.setAttribute("queryResult", builder.toString());
%>