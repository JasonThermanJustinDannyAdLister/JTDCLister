package com.javawebapp.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javawebapp.beans.UserBean;
import com.javawebapp.model.UserModel;
import com.javawebapp.utility.DataUtility;
import com.javawebapp.utility.ServletUtility;

/**
 * Servlet implementation class RegistrationCTL
 */
@WebServlet(name = "RegistrationCTL", urlPatterns = "/RegistrationCTL")
public class RegistrationCTL extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
        //ServletUtility.forward("jsp/registration.jsp", request, response);
        request.getRequestDispatcher("register.jsp").forward(request, response);
        //response.sendRedirect("jsp/registration.jsp");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        UserBean user = new UserBean();
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setLogin(request.getParameter("login"));
        user.setPassword(request.getParameter("password"));
        user.setDob(DataUtility.getDate(request.getParameter("dob")));
        user.setEmail(request.getParameter("mobile"));

        long i = UserModel.addUser(user);
        if(i>0) {
            ServletUtility.setSuccessMessage("User registered successfully", request);

        }else {
            ServletUtility.setErrorMessage("Not inserted", request);
        }
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

}