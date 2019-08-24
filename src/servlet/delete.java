package servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public  class delete extends HttpServlet {
    public delete() {
        super();
    }
    public  void destroy() {
        super.destroy();
    }
    public  void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean flag = deleteDao.getInstance().Delete(id);
        if(flag){//如果成功转发到titlesuccess.jsp
            response.sendRedirect(request.getContextPath()+"/deletesuccess.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"/errorpage3.jsp");
        }
    }


    public  void init()  throws ServletException {
    }
}
