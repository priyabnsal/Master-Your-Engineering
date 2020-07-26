package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class DBHandlerEbooks
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

public LinkedList<ClsEbooks> getadmin()
{
LinkedList<ClsEbooks> lst=new LinkedList<>();
Connection con=getDBCon();
try {
PreparedStatement stmt=con.prepareStatement("select * from adminbooks");
ResultSet rset=stmt.executeQuery();
System.out.println("get tbl start************ ");

while(rset.next())
{
	
	String strbookid=rset.getString("bookid"),
			strbookname=rset.getString("bookname"),
			strimage=rset.getString("image"),
			strlink=rset.getString("link");


			System.out.println(strbookid+" "+strbookname+" "+strimage+" "+strlink);
			ClsEbooks obj=new ClsEbooks(strbookid, strbookname,strimage,strlink);
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
