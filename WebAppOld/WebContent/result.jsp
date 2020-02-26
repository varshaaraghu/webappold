<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//scriptlet
String userName =(String) session.getAttribute("user");
String password= (String)session.getAttribute("pass");

String userName1 =(String) application.getAttribute("user");
String password1= (String) application.getAttribute("pass");

String userName2 =(String) request.getAttribute("user");
String password2= (String) request.getAttribute("pass");
%>

<div style="padding:10px; background-color:yellow; color:blue; font-size:50px;">
     User is <%=userName %> <br/>
     Password is <%=password %><br/>
     
     <u>Application Variables</u><br/>
      User is <%=userName1 %> <br/>
     Password is <%=password1 %><br/>
     
      <u>Request Variables</u><br/>
      User is <%=userName2 %> <br/>
     Password is <%=password2 %><br/>
     
     
     <p>
     <B><u>Programmers</u></B>
     <ul>
     <%
     List<String> l = (List<String>)request.getAttribute("programmers");
     for(String temp:l){
    	 %>
    	 <li><%=temp %></li>
     <%
     }
     %>
     </ul>
     </div>
</body>
</html>