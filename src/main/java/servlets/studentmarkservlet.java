package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.logindb;
import modals.studentmarks;
import services.studentmarkservice;
@WebServlet("/studentregister")
public class studentmarkservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		 String name=req.getParameter("name");
		 String telugu=req.getParameter("telugu");
		 String  hindi=req.getParameter("hindi");
		 String english=req.getParameter("english");
		 String science=req.getParameter("science");
		 String maths=req.getParameter("maths");
		 String social=req.getParameter("social");
		studentmarks sm=new studentmarks(0, name, telugu, hindi, english, science, maths, social);
		studentmarkservice service=new studentmarkservice(logindb.getconnection());
		boolean i=service.insert(sm);
		if(i) {
			resp.sendRedirect("studentmarks.jsp");
		}
		else {
			resp.sendRedirect("error.jsp");
		}
	}

}
