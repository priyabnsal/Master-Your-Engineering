package icsd;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class DBHandler
 */
@WebServlet("/DBHandlerimg")



public class DBHandlerimg {
	
	
	public Connection getDBCon()
	 {
		 Connection con=null;
		 try
		 {
			 OracleDataSource ods=new OracleDataSource();
			 ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			 con=ods.getConnection("Harshita","icsd");
			 System.out.println("Connection established");
		 }
		 catch(SQLException e)
		 {
			 e.printStackTrace();
		 }
		 
		 return con;
	 }
	

	public void insertIntotutor(String fileName) {
		
		Connection con=getDBCon();
		try
		{
			PreparedStatement stmt=con.prepareStatement("insert into tutor values(?)");
				stmt.setString(1, fileName);
			stmt.executeQuery();
			System.out.println(stmt);
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		System.out.println("data inserted"+fileName);
		
		
		// TODO Auto-generated method stub
		System.out.println("data insrted "+fileName);
		
		
	}

}
