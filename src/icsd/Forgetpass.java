package icsd;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.pool.OracleDataSource;


/**
 * Servlet implementation class Forgetpass
 */
@WebServlet("/Forgetpass")
public class Forgetpass extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgetpass() {
        super();
        // TODO Auto-generated constructor stub
    }

/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());
}

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
doGet(request, response);
PrintWriter out=response.getWriter();
String strusername,strsecurityquestion,strsecurityanswer;
strusername=request.getParameter("txtusername");
strsecurityquestion=request.getParameter("country");
strsecurityanswer=request.getParameter("txtSecurityanswer");
String strchangepassword;
strchangepassword=request.getParameter("txtChangePassword");
OracleDataSource ods;
     try {
     ods=new OracleDataSource();
     ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
     Connection con=ods.getConnection("priya","priya");
     PreparedStatement stmt1 = con.prepareStatement("select * from register1 where Username=? and securityquestion=? and securityanswer=?");
    // PreparedStatement stmt1=con.prepareStatement("select securityquestion,securityanswer from register1 where Username=?");
     stmt1.setString(1,strusername);
     stmt1.setString(2,strsecurityquestion);
     stmt1.setString(3,strsecurityanswer);
 stmt1.executeQuery();
 ResultSet rset=stmt1.executeQuery();
 if(rset.next()) {
PreparedStatement stmt=con.prepareStatement("update register1 set Upassword=? where username=?");
stmt.setString(1,strchangepassword);
stmt.setString(2,strusername);
stmt.executeQuery();
response.sendRedirect(request.getContextPath()+"/login.jsp?Username="+strusername);
 }
 else
{
out.println("invalid user");
response.sendRedirect(request.getContextPath()+"/error.jsp?Username="+strusername);
}
// while(rset.next())
// {
//// String securityquestion=rset.getString("securityquestion");
//// String securityanswer=rset.getString("securityanswer");
// if(strsecurityanswer.equals(securityanswer))
//{
// PreparedStatement stmt=con.prepareStatement("update register1 set Upassword=? where username=?");
// stmt.setString(1,strchangepassword);
// stmt.setString(2,strusername);
// stmt.executeQuery();
//  }
// else
// {
//out.println("invalid user");
// }
//}
}
 catch (SQLException e)
 {
     e.printStackTrace();
     }

}
}