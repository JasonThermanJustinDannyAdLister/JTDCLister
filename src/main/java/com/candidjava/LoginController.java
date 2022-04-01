package com.candidjava;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(name = "Login", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String u = request.getParameter("username");
        String p = request.getParameter("password");
        if(u.equals("admin") && p.equals("admin"))
        {
            response.sendRedirect("profile.jsp");
        }
        else
        {
            request.setAttribute("error","Invalid Username or Password");
            RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
            rd.include(request, response);
//            response.sendRedirect("login.jsp");

        }
    }
}

//        if(u.isEmpty() || p.isEmpty() )
//        {
//            RequestDispatcher req = request.getRequestDispatcher("/error");
//            req.include(request, response);
//        }
//        else if(u.equals("admin") && p.equals("admin"))
//        {
//            RequestDispatcher req =       request.getRequestDispatcher("/success");
//            req.forward(request, response);
//        }
//    }
//}

//    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//
//        String u = req.getParameter("username");
//        String p = req.getParameter("password");
//        PrintWriter pw = res.getWriter();
//        res.setContentType("text/html");
//        if (u.equals("admin") && p.equals("admin")) {
//
//            req.getRequestDispatcher("/profile.jsp").forward(req, res);
//        } else {
//            req.getRequestDispatcher("/login.jsp").forward(req, res);
//        }
//
//    }
//}

