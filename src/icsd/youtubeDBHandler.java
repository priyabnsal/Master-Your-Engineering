package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.jdbc.pool.OracleDataSource;

public class youtubeDBHandler
{

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

public void InsertIntoadminyoutube(String strvideoid,String strtopicname,String strsubjectname,String strchannelname,String stryear,String strlink)
{
System.out.println(strvideoid+" "+strtopicname+" "+strsubjectname+" "+strchannelname+" "+stryear+" "+strlink);
Connection con=getDBCon();
try
{
PreparedStatement stmt=con.prepareStatement("insert into adminyoutube values(?,?,?,?,?,?)");
stmt.setString(1,strvideoid);
stmt.setString(2,strtopicname);
stmt.setString(3,strsubjectname);
stmt.setString(4,strchannelname);
stmt.setString(5,stryear);
stmt.setString(6,strlink);

stmt.executeUpdate();
con.close();

}
catch(SQLException e)
{
e.printStackTrace();
}
}
}