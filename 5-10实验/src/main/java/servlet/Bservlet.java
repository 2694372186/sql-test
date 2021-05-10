package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/b")
public class Bservlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookie=request.getCookies();
        if(cookie !=null){
            for(Cookie cookie1:cookie){
                request.setAttribute("msg","欢迎"+cookie1.getValue());
            }
        }else {
            request.setAttribute("msg","用户不存在!");
        }
        request.getRequestDispatcher("a.jsp").forward(request,response);
    }
}
