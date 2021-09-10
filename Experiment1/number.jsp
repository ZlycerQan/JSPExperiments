<%@ page contentType = "text/html;charset=UTF-8" %>
<html>
  <header>
    <title> 真因子数量计算 </title>
  </header>
  <style>
    .bodya {
      margin: 0% 20% 0 20%;
    }
  </style>
  <body class="bodya">
    <style>
      .title {
        text-align: center;
        color: black;
        background-color: #87CEFA;
        font-size: 40px;
        font-weight: bold;
      }
      .define {
        border-left:6px solid #2196F3;
        padding: 2px 0 2px 0;
        background-color: #EAEAEA;
        font-weight: bold;
      }
      .para {
        background-color: #ddffff;  
        text-align: left; 
      }
    </style>
    <div class="title">
      真因子
    </div>
    <div class="define">
      <p> &nbsp; &nbsp; &nbsp; 定义：如果一个正整数刚好等于它的真因子之和，这样的正整数为完数。</p>
    </div>
    <div class="para">
      <br />
      <p> 例如，6 = 1 + 2 + 3，因此6就是一个完数 </p>
      <p> 1到1000内的完数有: </p>
      <p>
      <ul>
        <%
            for (int i = 1; i <= 1000; ++ i) {
                int sum = 0;
                for (int j = 1; j < i; ++ j) {
                    if (i % j == 0) {
                        sum = sum + j;
                    }
                }
                if (sum == i) {
        %>
                <li><%=i%> </li>
        <%
                }
            }
        %>
      </ul>
    </p>
    </div>
  </body>
</html>