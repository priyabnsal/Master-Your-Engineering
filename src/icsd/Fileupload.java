package icsd;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.function.ObjDoubleConsumer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Fileupload
 */
@WebServlet("/Fileupload")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)

public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileupload() {
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	private static final String SAVE_DIR="images";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String name=request.getParameter("image");
		System.out.println(name);
		String strimage;
		
		
		
		   String strContextPath=request.getParameter("hdn");
		   System.out.println("11-------------------"+strContextPath);
		//===================================
	 response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        
     
        String savePath = getServletContext().getRealPath("/")+File.separator + SAVE_DIR;
        System.out.println("33--------------------------- "+ savePath);
        
        
     
        System.out.println("44------------------------- "+strContextPath);
        
        
//        <img src="<%=renderRequest.getContextPath()%>/images/loading.gif"
        
        
//        String s2=getServletContext().getRealPath("/");
//		System.out.println("2----------------------"+s2);
//		
		
		
        //System.out.println("test 11 "+ savePath);
                File fileSaveDir=new File(savePath);
                if(!fileSaveDir.exists()){
                    fileSaveDir.mkdir();
                }
          
            Part part=request.getPart("image");
            String fileName=extractFileName(part);
            part.write(savePath + File.separator + fileName);
           /* 
            //You need this loop if you submitted more than one file
            for (Part part : request.getParts()) {
            String fileName = extractFileName(part);
            part.write(savePath + File.separator + fileName);
        }*/
          //  Class.forName("com.mysql.jdbc.Driver");
         //   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/UploadFile","root","root");
        //    String query="INSERT INTO customerDetail (first_name, last_name, file) values (?, ?, ?)";
            
//                PreparedStatement pst;
//                pst=con.prepareStatement(query);
//                pst.setString(1, firstName);
//                pst.setString(2,lastName);
                String filePath= savePath + File.separator + fileName ;
//                System.out.println(filePath);
//                System.out.println(appPath);
//                System.out.println(savePath);
//                pst.setString(3,filePath);
//                pst.executeUpdate();
		
		
                
		System.out.println("file path = "+filePath);
		
	
			DBHandlerimg objDbHandler=new DBHandlerimg();
		//objDbHandler.insertIntoTblAirLine(strAirLineId, strAirName, strContactNo, strEmailId, strAdd, strDesc, strImg);
		objDbHandler.insertIntotutor(fileName);
		
		
//		 String s ="<HTML><HEAD><TITLE>MESSAGE</TITLE>"+
//		"<SCRIPT LANGUAGE=JavaScript>"+
//		 "alert('AIRLINE CREATED');"+
//		 "</SCRIPT>"+
//		   "</HEAD><body><br/> <a href='ad.jsp'>Back- go to home page</a></body>"+
//		 
//		  "</HTML>";
//		 printWriter.print(s);
//		 
		//out.println("Airline inserted Successfully");
		//out.println("data in post create air line "+ strAirLineId +" "+ strAirName +" "+ strContactNo +" "+strEmailId+" "+strAdd+" "+strDesc+" "+strImg);
		
	} 
//	catch (AuthException e) {
//		// TODO Auto-generated catch block
//		//printWriter.println(e.getMessage());
//		printWriter.println("<br/> <a href='AdminLogin.jsp'>PLEASE LOGIN FIRST,  CLICK HERE TO LOGIN</a>");
//	}
	
	

 // file name of the upload file is included in content-disposition header like this:
//form-data; name="dataFile"; filename="PHOTO.JPG"
private String extractFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    for (String s : items) {
        if (s.trim().startsWith("filename")) {
            return s.substring(s.indexOf("=") + 2, s.length()-1);
        }
    }
    return "";
}

	}

