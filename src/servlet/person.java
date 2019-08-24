package servlet;
        import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by valar on 2018/11/2.
 */

public class person extends HttpServlet {
    public person() {
        super();
    }
    public void destroy() {
        super.destroy();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session=request.getSession(true);
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String username= request.getParameter("username");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        user UseInfo = new user();
        UseInfo.setUsername(username);
        UseInfo.setPassword(password);
        UseInfo.setSex(sex);
        UseInfo.setAge(age);
        UseInfo.setTelephone(telephone);
        UseInfo.setEmail(email);
        try{
                boolean flag = personDao.getInstance().change(UseInfo); // 将用户信息写入数据库
                if(flag){
                    request.getSession().setAttribute("sex",sex);
                    request.getSession().setAttribute("tel",telephone);
                    request.getSession().setAttribute("age",age);
                    request.getSession().setAttribute("username",username);
                    request.getSession().setAttribute("email", email);
                    response.sendRedirect(request.getContextPath()+"/changesuccess.jsp");
                }else{
                    response.sendRedirect(request.getContextPath()+"/errorpage4.jsp");
                }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void init() throws ServletException {

    }
}
