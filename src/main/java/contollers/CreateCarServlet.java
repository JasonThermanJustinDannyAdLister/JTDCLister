package contollers;

import dao.DaoFactory;
import models.Car;
import models.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/model/car/create")
public class CreateCarServlet extends HttpServlet {

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/splash");
            return;
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        Car car = new Car(
                request.getParameter("carName"),
                request.getParameter("carDesc"),
                (int) user.getId()
        );
        int idNew = DaoFactory.getCarsDao().insert(car);
        String[] selectedCategories = request.getParameterValues("allCategories");

        if(idNew != 0 && selectedCategories != null && selectedCategories.length != 0){

            for(int x=0; x < selectedCategories.length; x++){
                DaoFactory.getCategoriesDao().insert(Integer.parseInt(selectedCategories[x]), idNew);
            }
        }

        response.sendRedirect("/model");
    }
}