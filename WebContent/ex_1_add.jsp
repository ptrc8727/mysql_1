<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="third_dao.UserDao"%>  
<jsp:useBean id="u" class="third.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("ex_1_add-success.jsp");  
}else{  
response.sendRedirect("ex_1_add-error.jsp");  
}  
%>

</body>
</html>