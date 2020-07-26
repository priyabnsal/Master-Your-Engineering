package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class DBHandlertutor 
{
	Connection con=null;
	PreparedStatement stmt=null;
	ResultSet rset=null;
	
	public void deleteMultipalRows(String strSelectedHIds[])
	{
		String strRes="";
		int i=0;
		for(String str:strSelectedHIds)
		{
			if(i==strSelectedHIds.length-1)
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
		System.out.println("in pl db");
		Connection con=getDBCon();
		try
		{
		PreparedStatement stmt=con.prepareStatement("delete from tutor where id in("+strRes+")");
		stmt.executeUpdate();
		stmt.close();
		con.close();
		
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public Connection getDBCon(){
		 Connection con=null;
		 OracleDataSource ods;
		 try{
		 
		 ods=new OracleDataSource();
		 ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
		 con=ods.getConnection("priya","priya");
		 System.out.println("Connection established successfully");
		 }catch(SQLException  e){
		 e.printStackTrace();
		 }
		return con;
 }
	
  public void InsertIntotutor(String strimage,String strname,String strlang,String strduration,String strexperience,String strfees,String strcontact,String stremail)
	{
	 int id=0;
	Connection con=getDBCon();

try {
PreparedStatement stmt1 = con.prepareStatement("select MAX(id) as id1 from tutor");
ResultSet rs = stmt1.executeQuery();
if(rs.next()) {
id = rs.getInt("id1");

}
} catch (SQLException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}

try
{
id=id+1;
	PreparedStatement stmt=con.prepareStatement("insert into tutor values(?,?,?,?,?,?,?,?,?)");
	stmt.setInt(1,id);
	stmt.setString(2,strimage);
	stmt.setString(3,strname);
	stmt.setString(4,strlang);
	stmt.setString(5,strduration);
	stmt.setString(6,strexperience);
	stmt.setString(7,strfees);
	stmt.setString(8,strcontact);
	stmt.setString(9,stremail);
	
	stmt.executeUpdate();
	con.close();

	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	}

public LinkedList<Clstutor> gettutor()
{
LinkedList<Clstutor> lst=new LinkedList<>();
Connection con=getDBCon();
try {
PreparedStatement stmt=con.prepareStatement("select * from tutor");
ResultSet rset=stmt.executeQuery();
System.out.println("get tbl start************ ");

while(rset.next())
{
	
String strimage=rset.getString("image"),
strname=rset.getString("name"),
strlang=rset.getString("lang"),
strduration=rset.getString("duration"),
strexperience=rset.getString("experience"),
strfees=rset.getString("fees"),
strcontact=rset.getString("contact"),
stremail=rset.getString("email");


Clstutor obj=new Clstutor(strimage,strname,strlang,strduration,strexperience,strfees,strcontact,stremail);

lst.add(obj);
System.out.println(obj);
}

System.out.println("get tbl end *************");
con.close();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return lst;
}   
	
}
