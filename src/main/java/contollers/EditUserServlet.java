package contollers;

import dao.DaoFactory;
import models.User;
import util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditUserServlet", urlPatterns = "/editUser")
public class EditUserServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/editUser.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String newUsername = request.getParameter("newUsername");
        String newPassword = request.getParameter("newPassword");
        String passwordConfirmation = request.getParameter("confirmPassword");
        User user = (User) request.getSession().getAttribute("user");

        boolean usernameExists = DaoFactory.getUsersDao().checkUsernameExists(newUsername);
        if (!newUsername.isEmpty()&&!newPassword.isEmpty()&&!passwordConfirmation.isEmpty()
                && Password.check(passwordConfirmation, user.getPassword())&&!usernameExists){
            DaoFactory.getUsersDao().edit(user.getUsername(), newUsername, newPassword);
            response.sendRedirect("/logout");
        } else {
            System.out.println("Unsuccessful change of user");
            response.sendRedirect("/editUser");
        }
    }
}