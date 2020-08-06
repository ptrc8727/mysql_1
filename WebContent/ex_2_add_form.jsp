<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

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


<h1>새로운 책 추가하기</h1>
<form action="ex_2_add.jsp" method="post">
  <div class="form-horizontal">

    <div class="form-group row">
    <label class="col-form-label col-sm-2" for="title">Title</label>
    <div class="col-sm-8">
      <input autofocus type="text" class="form-control" name="title" value=""/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="author">Author</label>
    <div class="col-sm-7">
      <input class="form-control" type="text" name="author" value=""/>
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="comments">Comments</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="comments" rows="7" cols="20"></textarea>
    </div>
</div>


    <div class="form-group row">
      <label class="col-form-label col-sm-2"></label>
      <div class="col-sm-10">
        <input type="submit" value="Save" class="btn btn-default btn-success">
        <a href="ex_2.jsp" class="btn btn-outline-dark cancel">Cancel</a>
      </div>
    </div>
  </div>
</form>

    <footer>
      <p>&copy; 2019 - AppTest</p>
    </footer>

  </div>


</body>
</html>