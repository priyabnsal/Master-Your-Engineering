package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.jdbc.pool.OracleDataSource;

public class plDBHandler
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
public void InsertIntoadminpl(String strid,String strlink)
{
System.out.println(strid+" "+strlink);
Connection con=getDBCon();
try
{
PreparedStatement stmt=con.prepareStatement("insert into adminpl values(?,?)");
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
}

