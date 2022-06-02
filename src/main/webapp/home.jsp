<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login..");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
<div class="container-fluid p-0">
	<%@include file="all_component/navbar.jsp"%>

	<div class="card py-4 mb-3">
		<div class="card-body text-center">
			<img alt="notehome" src="img/notehome.jpeg" class="img-fluid mx-auto img-thumbnail" style="width:365px">
			<br><br>
			<h1> START TAKING YOUR NOTES </h1>
			<br>
			<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
		</div>
	</div>
</div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>