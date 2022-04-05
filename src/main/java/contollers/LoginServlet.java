package contollers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            request.getSession().setAttribute("redirect", "/login");
            if ((boolean) request.getSession().getAttribute("profile")) {
                response.sendRedirect("/profile");
            } else if ((boolean) request.getSession().getAttribute("createAds")) {
                response.sendRedirect("/ads/create");
            }
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String redirect = (String)request.getSession().getAttribute("redirect");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String user = (String)request.getSession().getAttribute("username");
        if (user == null) {
//            response.sendRedirect("/login");
            request.getSession().setAttribute("user", username);
            if (redirect != null) {
                response.sendRedirect(redirect);
            } else {
                response.sendRedirect("/profile");
            }
        } else {
            response.sendRedirect("/login");
        }
    }
}