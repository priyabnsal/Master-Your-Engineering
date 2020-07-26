package icsd;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.pool.OracleDataSource;

public class booksDBHandler {

public Connection getDBCon()
{
Connection con =null;
OracleDataSource ods;
try
{
ods=new OracleDataSource();
ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
con=ods.getConnection("priya", "priya");
System.out.println("Connection established......");

}
catch(SQLException e)
{
e.printStackTrace();
}
return con;
}

/*public void deleteMultipalRows(String strSelectedbookid[])
{
	String strRes="";
	int i=0;
	for(String str:strSelectedbookid)
	{
		if(i==strSelectedbookid.length-1)
		{
			strRes=strRes +str;
		}
		else
		{
			strRes=strRes+str+",";
		}
		i++;
		
	}
	System.out.println(strRes);
	Connection con=getDBCon();
	try
	{
	PreparedStatement stmt=con.prepareStatement("delete from adminbooks where bookid in("+strRes+")");
	stmt.executeUpdate();
	stmt.close();
	con.close();
	
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
}
*/
public void InsertIntoadminbooks(String strbookid,String strbookname,String strimage,String strlink)
{
	
System.out.println(strbookid+" "+strbookname+" "+strimage+" "+strlink);
Connection con=getDBCon();
try
{
PreparedStatement stmt=con.prepareStatement("insert into adminbooks values(?,?,?,?)");
stmt.setString(1,strbookid);
stmt.setString(2,strbookname);
stmt.setString(3,strimage);
stmt.setString(4,strlink);
System.out.println(strbookid+" "+strbookname+" "+strimage+" "+strlink);

System.out.println();
stmt.executeUpdate();
con.close();

}
catch(SQLException e)
{
e.printStackTrace();
}
}

}