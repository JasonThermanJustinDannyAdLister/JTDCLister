package com.candidjava;
import java.io.IOException;
import java.io.PrintWriter;
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
//    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        req.getRequestDispatcher("/login.jsp").forward(req, res);

    protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException {

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String u = req.getParameter("username");
        String p = req.getParameter("password");
        PrintWriter pw = res.getWriter();
        res.setContentType("text/html");
        if (u.equals("admin") && p.equals("admin")) {
//            pw.println("Login Success...!");
            res.sendRedirect(req.getContextPath() + "/success.jsp");
        } else {
            res.sendRedirect(req.getContextPath() + "/error.jsp");
//            pw.println("Login Failed...!");
//            pw.close();
        }

    }
}

