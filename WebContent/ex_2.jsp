<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>AppTest</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<%@ page import="third_dao.BookDao,third.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%  
List<Book> list=BookDao.getAllRecords();  
request.setAttribute("list",list);  
%>

  <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">AppTest</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="/about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/data">Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/books">Books</a>
        </li>
      </ul>
    </nav>
    
    <h1>List of books (${fn:length(list)})</h1>
    
<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>  
		<tr><th>Title</th>
		<th>Author</th>
		<th>comments</th>
		<th class="d-print-none">
     		<a class="btn btn-sm btn-success" href="ex_2_add_form.jsp">Add</a>
		</th></tr>  
	</thead>
	
	<tbody>
	
	
<c:forEach items="${list}" var="u">  
<tr><td>${u.getTitle()}</td><td>${u.getAuthor()}</td><td>${u.getComments()}</td>  
  
<td><a class="btn btn-sm btn-warning" href="ex_2_edit_form.jsp?id=${u.getId()}">Edit</a></td>  
<td><a class="btn btn-sm btn-danger" href="ex_2_del_form.jsp?id=${u.getId()}">Delete</a></td>
<td><a class="btn btn-sm" href="ex_2_detail.jsp?id=${u.getId()}">More</a></td>

</tr> 

</c:forEach> 
</tbody> 
</table>
</div>

	<footer>
      <p>&copy; 2019 - AppTest</p>
    </footer>

  </div>

</body>
</html>