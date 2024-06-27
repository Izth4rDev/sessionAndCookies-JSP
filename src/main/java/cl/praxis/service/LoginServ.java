package cl.praxis.service;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String user = "admin";
        String passwordUser = "1234";

        if(userName.equals(user) && password.equals(passwordUser)){
            //se crea la sesion
            HttpSession session = request.getSession();
            session.setAttribute("username", userName);

            //creacion de cookies
            Cookie sessionId = new Cookie("sessionId", session.getId());
            sessionId.setMaxAge(60*60);
            response.addCookie(sessionId);

            Cookie sessionUser = new Cookie("userName", userName);
            sessionUser.setMaxAge(60*60);
            response.addCookie(sessionUser);

            response.sendRedirect("landing.jsp");
        }else{
            response.getWriter().append("No existe usuario o contraseña incorrecta");
        }
    }
}
