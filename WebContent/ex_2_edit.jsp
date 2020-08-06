<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="third_dao.BookDao"%>  
<jsp:useBean id="u" class="third.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%  
int i=BookDao.update(u);  
response.sendRedirect("ex_2.jsp");  
%>

</body>
</html>