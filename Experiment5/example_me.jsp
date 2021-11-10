<%@ page contentType="text/html; charset=UTF-8" import="java.io.*" pageEncoding="UTF-8" %>
<html>
<head>
<title>
Example_me
</title>
<head>

<body>
    <div style="font-style: oblique">
    <%
        File file = new File("D:\\ProgramFiles\\Tomcat\\webapps\\ROOT\\Experiment5\\test1.txt");
        FileInputStream in = new FileInputStream(file);
        byte[] all = new byte[(int)file.length()];
        in.read(all);
        in.close();
        String buffer = new String(all);
        String[] lis = buffer.split("\n");
        for (String i : lis) {
            out.println("<p>" + i + "</p>");
        }
        File file2 = new File("D:\\ProgramFiles\\Tomcat\\webapps\\ROOT\\Experiment5\\test2.txt");
        FileOutputStream outs = new FileOutputStream(file2);
        outs.write(all);
        outs.close();
    %>
    </div>
</body>
</html>