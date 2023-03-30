package net.codejava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
//import java.util.Date;

import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signup")
public class UserSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserSignupServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName1");
		String lastName = request.getParameter("lastName1");
		String fatherName = request.getParameter("fatherName1");
		String motherName = request.getParameter("motherName1");
		String gender = request.getParameter("inlineRadioOptions");
		String email = request.getParameter("email1");
		String password = request.getParameter("password1");
		String dob = request.getParameter("dob1");
		
		UserDAO userDao = new UserDAO();
		
		System.out.println(dob);
		
//		User user =  UserDAO.addNewUser(firstName, lastName,motherName,fatherName,gender,dob,email,password);

		
		try {
			User userExist = userDao.checkLogin(email, password);
			String destPage = "home.jsp";
			
			if (userExist != null) {
				System.out.println("User already exist");
				
				HttpSession session = request.getSession();
				session.setAttribute("user", userExist);
				destPage = "login.jsp";
			} else {
				User user = userDao.addNewUser(firstName, lastName,motherName,fatherName,gender,dob,email,password);
				
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
//				userDao.display(request, response);
//				System.out.println("Result: " + a.add(3, 5));
				destPage = "dashboard.jsp";
				
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
			dispatcher.forward(request, response);
			
			
			
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

}
