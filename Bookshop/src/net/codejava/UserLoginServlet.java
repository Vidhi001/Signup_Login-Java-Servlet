package net.codejava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserLoginServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		System.out.println(request.getParameter("password1"));
		String email = request.getParameter("email1");
		String password = request.getParameter("password1");
		
		UserDAO userDao = new UserDAO();
		
		try {
			User user = userDao.checkLogin(email, password);
			String destPage = "login.jsp";
			
			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				destPage = "dashboard.jsp";
				
			} else {
				String message = "Invalid email/password";
				request.setAttribute("message", message);
				System.out.println(message);
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
			dispatcher.forward(request, response);
			
			
			
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

}
