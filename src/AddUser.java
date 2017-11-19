

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;


@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	System.out.println("i come in here");
		String email = request.getParameter("email");
		String password = request.getParameter("pw");

		
		System.out.println(firstname);
		System.out.print(lastName);
		System.out.println(id);
		   Connection conn = null;
		    Statement st = null;
		    ResultSet rs = null;
		    try {
		    	Class.forName("com.mysql.jdbc.Driver");
		    	conn = DriverManager.getConnection("jdbc:mysql://localhost/StudentGrades?user=root&password=root&useSSL=false");
		    	   Statement statement = conn.createStatement();
		    	   String query = "insert into User (email, passwords)"
		    		        + " values (?, ?)";
		    	   java.sql.PreparedStatement preparedStmt = conn.prepareStatement(query);
		    	   
		    	   preparedStmt.setString(1, email);
		    	   preparedStmt.setString(2, password);
		    	   preparedStmt.execute();
		    	   conn.close();
		    	   
		    }catch (SQLException sqle) {
	    		System.out.println(sqle.getMessage());
	    	} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	}	
  


}








