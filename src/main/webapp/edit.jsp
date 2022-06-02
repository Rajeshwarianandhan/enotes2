<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.Db.DBConnect"%>
<%@ page import="com.User.Post"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login..");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
</head>
<%@include file="all_component/allcss.jsp"%>
<body>

	<%
	Integer noteId = Integer.parseInt(request.getParameter("note_id"));

	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteId);
	%>

	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<br>
		<h1 class="text-center">Edit Your Notes</h1>



		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServlet" method="post">
						<input type="hidden" value="<%=noteId%>" name="noteId" />


						<div class="form-group">

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required"
								value="<%=p.getTitle()%>" />
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"><%=p.getContent()%></textarea>
						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>