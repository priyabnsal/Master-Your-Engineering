package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.jdbc.pool.OracleDataSource;

public class subjectDBHandler {

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

public void InsertIntoadminsubject(String strsubjectid,String strsubjectname,String strnotes,String stryear,String strpreviousyear)
{
System.out.println(strsubjectid+" "+strsubjectname+" "+strnotes+" "+stryear+" "+strpreviousyear);
Connection con=getDBCon();
try
{
PreparedStatement stmt=con.prepareStatement("insert into adminsubject values(?,?,?,?,?)");
stmt.setString(1,strsubjectid);
stmt.setString(2,strsubjectname);
stmt.setString(3,strnotes);
stmt.setString(4,stryear);
stmt.setString(5,strpreviousyear);

stmt.executeUpdate();
con.close();

}
catch(SQLException e)
{
e.printStackTrace();
}
}
}