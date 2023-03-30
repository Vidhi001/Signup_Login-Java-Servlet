package net.codejava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
//import java.util.Date;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
public class UserDAO  {
	
	public Connection global() throws ClassNotFoundException, SQLException {
		String jdbcURL = "jdbc:mysql://localhost:3306/user_login";
		String dbUser = "root";
		String dbPassword = "Password";
		Connection connection = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			System.out.println("No Error");
			return connection;
		} catch (Exception ex) {
			System.out.println("Error");
			System.out.println(ex);
		}
		return connection;
	}
	
	public User checkLogin(String email, String password) throws SQLException, ClassNotFoundException{
		
		
		String sql = "SELECT * FROM users WHERE email = ? and password = ?";
		Connection connection = global();
		PreparedStatement statement = connection.prepareStatement(sql);
		
//		System.out.println(statement);
		
		statement.setString(1, email);
		statement.setString(2, password);

		ResultSet result = statement.executeQuery();

		User user = null;
		
		System.out.println(result);

		if (result.next()) {
			user = new User();
//			user.setFirstName(result.getString("name"));
			user.setEmail(email);
		}

		connection.close();

		return user;
	}
	
	
	public User addNewUser(String firstName,String lastName,String motherName,
		String fatherName,String gender,String dob,String email,String password) 
		throws SQLException, ClassNotFoundException{
		
		
		String sql = "INSERT INTO users (firstName, lastName,motherName,fatherName,gender,dob,email,password) values(?,?,?,?,?,?,?,?)";
		Connection connection = global();
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setString(1, firstName);
		statement.setString(2, lastName);
		statement.setString(3, motherName);
		statement.setString(4, fatherName);
		statement.setString(5, gender);
		statement.setString(6, dob);
		statement.setString(7, email);
		statement.setString(8, password);
		

		statement.executeUpdate();

		User user = null;

		connection.close();

		return user;
	}
	
		public void display(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
	      {  
	         PrintWriter out = res.getWriter();  
	         res.setContentType("text/html");  
	         out.println("<html><body>");  

	         Connection connection = null;
			try {
				connection = global();
				Statement stmt = connection.createStatement();  
		        ResultSet rs = stmt.executeQuery("select * from users where email=?");  
		        out.println("<table border=1 width=50% height=50%>");  
		         out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");  
		         while (rs.next()){  
		             String n = rs.getString("email");  
		             String nm = rs.getString("firstName");  
//		             int s = rs.getInt("sal");   
		             out.println("<tr><td>" + n + "</td><td>" + nm + "</td><td>" );//+ s + "</td></tr>");   
		         }  
		         out.println("</table>");  
		         out.println("</html></body>");  
		         connection.close(); 
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	         
	          

	         out.println("error");  
	     }  


 }
