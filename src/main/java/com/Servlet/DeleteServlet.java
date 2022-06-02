package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer noteId = Integer.parseInt(request.getParameter("note_id"));
		PostDAO dao = new PostDAO(DBConnect.getConn());

		boolean f = dao.DeleteNotes(noteId);
		HttpSession session = null;
		if (f) {

			session = request.getSession();
			session.setAttribute("updateMsg", "Notes Deleted Successfully");
			response.sendRedirect("showNotes.jsp");

		} else {

			session = request.getSession();
			session.setAttribute("wrongMsg", "Something is wrong");
			response.sendRedirect("showNotes.jsp");

		}

	}

}
