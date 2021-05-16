package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Reg")
public class RegServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       String msg="";
       HttpSession session=request.getSession();
       String username1= (String) session.getAttribute("regName");
       if(username.equals(username1)){
           msg="该用户已存在!";
           request.setAttribute("msg",msg);
           request.getRequestDispatcher("reg.jsp").forward(request,response);
       }else {
           session.setAttribute("regName",username);
           session.setAttribute("regPassword",password);
           request.setAttribute("inform","注册成功");
           request.getRequestDispatcher("login.jsp").forward(request,response);
       }

    }
}
