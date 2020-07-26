
package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import oracle.jdbc.pool.OracleDataSource;

public class InsertRegisterDBHandler {


public Connection getDBCon()
{
Connection con =null;
OracleDataSource ods;
try
{
ods=new OracleDataSource();
ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
con=ods.getConnection("priya","priya");
System.out.println("Connection established......");

}
catch(SQLException e)
{
e.printStackTrace();
}
return con;
}

public void InsertIntoregister(String strFullname,String strMobileno,String stremail,String strusername,String strUpassword,String strsecurityquestion,String strsecurityanswer )
{
int id=0;

System.out.println(strFullname+" "+strMobileno+" "+stremail+" "+strusername+" "+strUpassword+" "+strsecurityquestion+" "+strsecurityanswer);
Connection con=getDBCon();

try {
PreparedStatement stmt1 = con.prepareStatement("select MAX(id) as id1 from register1");
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
PreparedStatement stmt=con.prepareStatement("insert into register1 values(?,?,?,?,?,?,?,?)");
stmt.setInt(1, id);
stmt.setString(2,strFullname);
stmt.setString(3,strMobileno);
stmt.setString(4,stremail);
stmt.setString(5,strusername);
stmt.setString(6,strUpassword);
stmt.setString(7,strsecurityquestion);
stmt.setString(8,strsecurityanswer);
stmt.executeUpdate();

con.close();

}
catch(SQLException e)
{
e.printStackTrace();
}
}
}