package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/a")
public class Aservelt extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入A");
        String user=request.getParameter("user");
        String password=request.getParameter("password");
        System.out.println(user+password);
        //判断账号和密码是否正确
        if(user.equals("admin")&&password.equals("123456")){
            //设置cookie 过期时间为1天
            Cookie cookie = new Cookie("user",user);
            cookie.setMaxAge(1);
            response.addCookie(cookie);//保存cookie到客户端
            request.setAttribute("user",user);
            request.getRequestDispatcher("a.jsp").forward(request,response);
        }else {
            request.setAttribute("msg","账号或者密码错误!");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }

//        cookie.setMaxAge(0);                           // 设置生命周期为0，表示将要删除
//        response.addCookie(cookie);                    // 执行添加后就从response里删除了
    }
}
