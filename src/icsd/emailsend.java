package icsd;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class emailsend
 */
@WebServlet("/emailsend")
public class emailsend extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emailsend() {
        super();
        // TODO Auto-generated constructor stub
    }

/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
doPost(request, response);
}

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
String tomail=request.getParameter("mailid");
String subject=request.getParameter("emp_subject");
String message=request.getParameter("emp_message");

final String username = "yourengineering.4@gmail.com";
final String password = "engineering@123";
Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.port", "587");
Session session = Session.getInstance(props,
 new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(username, password);
}
 });
try {
Message message1 = new MimeMessage(session);
message1.setFrom(new InternetAddress("yourengineering.4@gmail.com"));
message1.setRecipients(Message.RecipientType.TO,
InternetAddress.parse(tomail));
message1.setSubject(subject);
message1.setText(message
+ "\n\n Thank You !!!");
Transport.send(message1);
System.out.println("Done");
} catch (MessagingException e) {
throw new RuntimeException(e);
}


}

}