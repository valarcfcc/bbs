package servlet;

/**
 * Created by valar on 2018/11/2.
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public  class addTitle  extends HttpServlet {
    public addTitle() {
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
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        //从jsp获取表单信息
        String username=(String) session.getAttribute("username");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String subject=request.getParameter("subject");
        String content=request.getParameter("content");
        String time=(String)session.getAttribute("time");
//将表单信息封装到title.java
        title title=new title();
        title.setName(name);
        title.setEmail(email);
        title.setSubject(subject);
        title.setContent(content);
        title.setTime(time);
        title.setUsername(username);
        boolean flag = titleDao.getInstance().saveTitle(title);//将用户信息写入数据库
        if(flag){//如果成功转发到titlesuccess.jsp
            response.sendRedirect(request.getContextPath()+"/titlesuccess.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"/errorpage2.jsp");
        }
    }


public  void init()  throws ServletException {
        }
}
