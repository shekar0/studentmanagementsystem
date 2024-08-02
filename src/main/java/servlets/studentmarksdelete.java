package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.logindb;

import services.studentmarkservice;
@WebServlet("/deletebyid")
public class studentmarksdelete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		studentmarkservice service=new studentmarkservice(logindb.getconnection());
		boolean i=service.deletebyid(id);
		if(i) {
			resp.sendRedirect("studentmarks.jsp");
		}
		else {
			resp.sendRedirect("studentmarks.jsp");
		}
	}

}
