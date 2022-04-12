package contollers;

import dao.DaoFactory;
import models.Car;
import models.Category;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/model/car")
public class ShowCarServlet extends HttpServlet {


    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/splash");
            return;
        }
        int carID = Integer.parseInt(request.getParameter("id"));

        Car car = DaoFactory.getCarsDao().findCarById(carID);
        User carUser = DaoFactory.getUsersDao().findCarsOwnerById(carID);
        User user = (User) request.getSession().getAttribute("user");
        List<Category> category = DaoFactory.getCategoriesDao().combined(car);

        request.getSession().setAttribute("car", car);
        request.setAttribute("carUser", carUser);
        request.setAttribute("categories", category);

        if(car.getUser_id() != user.getId()){
            request.setAttribute("validate", "true");
        }

        request.getRequestDispatcher("/WEB-INF/planet.jsp").forward(request, response);

    }

}