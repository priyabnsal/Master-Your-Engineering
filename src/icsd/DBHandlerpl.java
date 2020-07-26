package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;


public class DBHandlerpl
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
		PreparedStatement stmt=con.prepareStatement("delete from adminpl where id in("+strRes+")");
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

	public LinkedList<Clspl> getadminpl()
	{
	LinkedList<Clspl> lst=new LinkedList<>();
	Connection con=getDBCon();
	try {
	PreparedStatement stmt=con.prepareStatement("select * from adminpl");
	ResultSet rset=stmt.executeQuery();
	System.out.println("get tbl start************ ");

	while(rset.next())
	{
		
	String strid=rset.getString("id"),
	strlink=rset.getString("link");


	System.out.println(strid+" "+strlink);
	Clspl objh=new Clspl(strid,strlink);

	lst.add(objh);
	System.out.println(objh);
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