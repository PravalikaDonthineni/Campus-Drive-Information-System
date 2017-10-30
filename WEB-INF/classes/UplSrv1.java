import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadFile;

public class UplSrv1 extends HttpServlet
{
	public void doPost (HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		PrintWriter out = res.getWriter();
		try
			{
			String fileName=null;
			ServletConfig config = getServletConfig();
			String s="";
			String str=req.getParameter("one");
			System.out.println(str+"---------------");
			UploadBean upb = new UploadBean();
			/*upb.setFolderstore("E:\\Tomcat 5.5\\webapps\\DateApp\\image");
			upb.setOverwrite(false);
			out.println("<HEAD><TITLE> " + "File Upload  " +"</TITLE></HEAD><BODY>");
			*/


			String path = config.getServletContext().getRealPath("/")+"image\\";
			System.out.println("<<<<<<<<<<>>>>>>>>"+path);
			upb.setFolderstore(path);
			upb.setOverwrite(false);
			out.println("<HEAD><TITLE> " + "File Upload  " +"</TITLE></HEAD><BODY>");


			Hashtable ht;
			UploadFile curfile;

			/* create a parser for parsing form data */
			MultipartFormDataRequest nreq = new MultipartFormDataRequest(req);
			ht = nreq.getFiles();
			Enumeration files = ht.elements();

			while(files.hasMoreElements())
				{
				curfile = (UploadFile) files.nextElement();
				fileName=curfile.getFileName();
				fileName=fileName.replaceAll(" ", "");

upb.store(nreq);
out.println("<center>Invalid Image Selection Try Again </center>");
out.println("<center> <a href=./UploadImage.jsp>UploadImage</a></center>");

}//while
req.getRequestDispatcher("addproduct.jsp?imageName="+fileName+"").forward(req,res);
			}//try
			catch(Exception e)
			{
				out.println(e);
			}//catch
		out.println("<h1> your files are saved</h1></body></html>");
		out.close();
	}//doPost ()
}//class
