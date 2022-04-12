package contollers;

import dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/model/delete")
public class DeleteCarServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/splash");
            return;
        }
        String carID = (String) request.getSession().getAttribute("delPlanetId");
        int deleteCarID = Integer.parseInt(carID);

        int allCat = DaoFactory.getCategoriesDao().deleteCategoriesPerPlanet(deleteCarID);

        DaoFactory.getCarsDao().deleteCar(deleteCarID);


        response.sendRedirect("/profile");
    }
}