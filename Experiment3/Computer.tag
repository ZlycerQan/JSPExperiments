<!-- Computer.tag -->
<%@ tag pageEncoding="UTF-8" %>

<%@ tag import="java.math.BigInteger" %>

<%@ attribute name="lhs" required="true" %>
<%@ attribute name="rhs" required="true" %>
<%@ attribute name="operator" required="true" %>
<%@ variable name-given="result" scope="AT_END" %>


<%
    if (lhs == null || rhs == null || lhs.length() == 0 || rhs.length() == 0) {
        jspContext.setAttribute("result", "Please input number.");
    } else {
        try {
            BigInteger x = new BigInteger(lhs.trim());
            BigInteger y = new BigInteger(rhs.trim());
            String z;
            if (operator.equals("+")) {
                z = x.add(y).toString();
            } else if (operator.equals("-")) {
                z = x.subtract(y).toString();
            } else if (operator.equals("*")) {
                z = x.multiply(y).toString();
            } else if (operator.equals("/")) {
                z = x.divide(y).toString();
            } else {
                z = "error";
            }
            jspContext.setAttribute("result", z);
        } catch (Exception e) {
            jspContext.setAttribute("result", "Please input the number correctly.");
        }
    }
%>