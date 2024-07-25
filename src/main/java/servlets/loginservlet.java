package servlets;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.logindb;
import modals.login;
import services.loginservice;
@WebServlet("/register")
public class loginservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String confirmpassword=req.getParameter("confirmpassword");
		login l=new login(0, name, email, password, confirmpassword);
		loginservice service=new loginservice(logindb.getconnection());
		boolean i=service.insert(l);
		if(i) {
			resp.sendRedirect("welcome.jsp");
		}
		else {
			resp.sendRedirect("error.jsp");
		}
	}

}
