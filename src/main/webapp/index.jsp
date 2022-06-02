<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">


*{
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster+Two:ital@1&display=swap" rel="stylesheet">

}
.back-img{
	background: url("img/note1.jpeg");
	width:100%;
	min-height:calc(90vh - 50px);
	background-repeat: no-repeat;
	background-size:cover;
}
.head{
	margin-top:160px;
	font-family:  cursive;
	text-shadow:0 0 3px #FF0000;
	color:black;

}
</style>

<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>
	
	<%
	Connection conn = DBConnect.getConn();
	System.out.print(conn);
	
	%>
	
	
	
	<div class="container-fluid back-img">
	<br />
	<div class="text-center text-dark">
	<h1 class="display-3 head "><i class="fa fa-book " aria-hidden="true"></i> E Notes- Save Your Notes</h1>
	<a href="login.jsp" class="btn btn-dark"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Login</a>
	<a href="register.jsp" class="btn btn-dark "><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
	
	</div>
	
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>






