package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        HttpSession session=request.getSession();
        String regName= (String) session.getAttribute("regName");
        System.out.println(regName);
        String regPassword= (String) session.getAttribute("regPassword");
        System.out.println(regPassword);
        if(!(username.equals(regName)&&password.equals(regPassword))){
            request.setAttribute("msg","账号或者密码错误!");
        }else if(username.equals(regName)||password.equals(regPassword)){
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
}
