package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class JavaDBHandler {
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
		PreparedStatement stmt=con.prepareStatement("delete from adminjava where id in("+strRes+")");
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
	
  public void InsertIntoadminjava(String strid,String strlink)
	{
	System.out.println(strid+" "+strlink);
	Connection con=getDBCon();
	try
	{
	PreparedStatement stmt=con.prepareStatement("insert into adminjava values(?,?)");
	stmt.setString(1,strid);
	stmt.setString(2,strlink);

	stmt.executeUpdate();
	con.close();

	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	}

public LinkedList<Clsjava> getadminjava()
{
LinkedList<Clsjava> lst=new LinkedList<>();
Connection con=getDBCon();
try {
PreparedStatement stmt=con.prepareStatement("select * from adminjava");
ResultSet rset=stmt.executeQuery();
System.out.println("get tbl start************ ");

while(rset.next())
{
	
String strid=rset.getString("id"),
strlink=rset.getString("link");


System.out.println(strid+" "+strlink);
Clsjava obj=new Clsjava(strid,strlink);

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
