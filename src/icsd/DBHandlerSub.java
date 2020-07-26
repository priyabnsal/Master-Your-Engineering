package icsd;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;
public class DBHandlerSub 
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
		System.out.println("In Subj Dbhandler");
		Connection con=getDBCon();
		try
		{
		PreparedStatement stmt=con.prepareStatement("delete from adminsubject where subjectid in("+strRes+")");
		stmt.executeUpdate();
		stmt.close();
		con.close();
		System.out.println("id of deleted:  "+strRes);
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

public LinkedList<Clssubj> getadminsub()
{
	LinkedList<Clssubj> lst=new LinkedList<>();
	Connection con=getDBCon();
	try {
	PreparedStatement stmt=con.prepareStatement("select * from adminsubject");
	ResultSet rset=stmt.executeQuery();
	System.out.println("get tbl start************ ");
	
	while(rset.next())
	{
		String strsubjectid=rset.getString("subjectid"),
		strsubjectname=rset.getString("subjectname"),
		strnotes=rset.getString("notes"),
		stryear=rset.getString("year"),
		strpreviousyear=rset.getString("previousyear");
	
	System.out.println(strsubjectid+" "+strsubjectname+" "+strnotes+" "+stryear+" "+strpreviousyear);
	Clssubj obj=new Clssubj(strsubjectid, strsubjectname, strnotes, stryear, strpreviousyear);
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
