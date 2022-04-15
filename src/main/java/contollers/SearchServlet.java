package contollers;

import dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "controllers.SearchServlet", urlPatterns = "/ads/searched")
public class SearchServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
                String searchAds = request.getParameter("search");
                List<Ad> foundAds = null;
                if (request.getSession().getAttribute("user") == null) {
                        response.sendRedirect("/profile");
                        return;
                }
                try {
                        foundAds = DaoFactory.getAdsDao().searchAdsFromResults(searchAds);
                        request.setAttribute("ads", foundAds);
                        System.out.println(searchAds);
                        System.out.println(foundAds);
                } catch (SQLException e) {
                        e.printStackTrace();
                }

                request.getRequestDispatcher("/WEB-INF/ads/searched.jsp").forward(request, response);
                System.out.println("These are the ads that we found");
        }
}