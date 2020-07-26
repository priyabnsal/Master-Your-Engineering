package icsd;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.jdbc.pool.OracleDataSource;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class login extends HttpServlet {
private static final long serialVersionUID = 1L;
       
   
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

public void init(ServletConfig config) throws ServletException {
// TODO Auto-generated method stub
}

public void destroy() {
// TODO Auto-generated method stub
}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
doPost(request, response);
}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
String strSelRole=request.getParameter("selRole");

String strusername,strUpassword;
strusername=request.getParameter("Username");
strUpassword=request.getParameter("Upassword");
System.out.println("11111");
if(strusername==null)
{
System.out.println("222211111");
HttpSession session=request.getSession(false);
 strusername=session.getAttribute("Username").toString();
 strUpassword=session.getAttribute("Upassword").toString();
}
System.out.println("33331");
System.out.println(strusername+" password: "+strUpassword+" selected role : "+ strSelRole);
PrintWriter out=response.getWriter();
//out.println(strusername+""+strUpassword);
  if(strSelRole.equals("Admin"))
    {
    //code for admin login -
    //select * from tbladmin where unm=? and pwd=?
    //valid
    //response.sendredirect -- adminWelcome.jsp
      OracleDataSource ods;
      try {
      ods=new OracleDataSource();
      ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
      Connection con=ods.getConnection("priya","priya");
      PreparedStatement stmt1=con.prepareStatement("select * from admin where Username=? and Upassword=? ");
      stmt1.setString(1,strusername);
      stmt1.setString(2,strUpassword);
      stmt1.executeQuery();          
    if(strusername.equals("Priya") && strUpassword.equals("Bansal"))
    {
    HttpSession session=request.getSession();
    session.setAttribute("Username","Priya");
    session.setAttribute("Upassword","Bansal");
    session.setMaxInactiveInterval(3600);
    response.sendRedirect(request.getContextPath()+"/frontadmin.jsp?Username="+strusername);
    }
    else if(strusername.equals("priya") && strUpassword.equals("1234"))
    {
    HttpSession session=request.getSession();
    session.setAttribute("Username","priya");
    session.setAttribute("Upassword","1234");
    session.setMaxInactiveInterval(3600);
    response.sendRedirect(request.getContextPath()+"/frontadmin.jsp?Username="+strusername);
    }
    else if(strusername.equals("Harshita") && strUpassword.equals("1998"))
    {
    HttpSession session=request.getSession();
    session.setAttribute("Username", "Harshita");
    session.setAttribute("Upassword","1998");
    session.setMaxInactiveInterval(3600);
    response.sendRedirect(request.getContextPath()+"/frontadmin.jsp?Username="+strusername);
    }
    else{
    	 
//    	 out.println("<script>");
//    	 out.println("alert('Password incorrect')");
//    	 out.println("</script>");
    	 
    	 System.out.println("Password do not match");
    	 response.sendRedirect(request.getContextPath()+"/error.jsp?username="+strusername);
    	 
    }
    } catch (SQLException e)
{
    e.printStackTrace();
    }
    }
    else if(strSelRole.equals("User"))
    {
    System.out.println("111114");
    //code for user login -
    //select * from tbluser where unm=? and pwd=?
    //valid
    //response.sendredirect -- userWelcome.jsp
    OracleDataSource ods;
        try {
        ods=new OracleDataSource();
        ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
        Connection con=ods.getConnection("priya","priya");
        PreparedStatement stmt1=con.prepareStatement("select * from register1 where username=? and Upassword=? ");
        stmt1.setString(1,strusername);
        stmt1.setString(2,strUpassword);
        ResultSet rset=stmt1.executeQuery();          
      if(rset.next())
      {
      System.out.println("111115");
      HttpSession session=request.getSession();
      session.setAttribute("Username", strusername);
    session.setAttribute("Upassword",strUpassword);
      session.setMaxInactiveInterval(3600);
      response.sendRedirect(request.getContextPath()+"/FrontPage.jsp?username="+strusername);
      }
      else {
    	  response.sendRedirect(request.getContextPath()+"/error.jsp?username="+strusername);
      }
    }
        catch(SQLException e)
      {
      e.printStackTrace();
      }
        }
}
}
