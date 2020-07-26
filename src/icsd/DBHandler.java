package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class DBHandler
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
		PreparedStatement stmt=con.prepareStatement("delete from adminyoutube where videoid in("+strRes+")");
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

public LinkedList<Clsyoutube> getadminyoutube()
{
LinkedList<Clsyoutube> lst=new LinkedList<>();
Connection con=getDBCon();
try {
PreparedStatement stmt=con.prepareStatement("select * from adminyoutube");
ResultSet rset=stmt.executeQuery();
System.out.println("get tbl start************ ");

while(rset.next())
{
	
String strvideoid=rset.getString("videoid"),
strtopicname=rset.getString("topicname"),
strsubjectname=rset.getString("subjectname"),
strchannelname=rset.getString("channelname"),
stryear=rset.getString("year"),
strlink=rset.getString("link");

System.out.println(strvideoid+" "+strtopicname+" "+strsubjectname+" "+strchannelname+" "+stryear+" "+strlink);
Clsyoutube obj=new Clsyoutube(strvideoid, strtopicname,strsubjectname,strchannelname,stryear,strlink);
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
public LinkedList<Clsregister> getregister1()
{
LinkedList<Clsregister> lst=new LinkedList<>();
Connection con=getDBCon();
try {
PreparedStatement stmt=con.prepareStatement("select * from register1");
ResultSet rset=stmt.executeQuery();
System.out.println("get tbl start************ ");

while(rset.next())
{

String strId=rset.getString("Id"),
strFullname=rset.getString("Fullname"),
//stryear=rset.getString("year"),
strMobileno=rset.getString("Mobileno"),
stremail=rset.getString("email"),
strusername=rset.getString("username"),
strUpassword=rset.getString("Upassword"),
strSecurityquestion=rset.getString("Securityquestion"),
strSecurityanswer=rset.getString("Securityanswer");

System.out.println(strId+" "+strFullname+" "+strMobileno+" "+stremail+" "+strusername+" "+strUpassword+" "+strSecurityquestion+" "+strSecurityanswer);
Clsregister obj=new Clsregister(strId,strFullname,strMobileno,stremail,strusername,strUpassword,strSecurityquestion,strSecurityanswer);
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
