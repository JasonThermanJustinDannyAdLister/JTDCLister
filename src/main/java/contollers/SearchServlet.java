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

@WebServlet(name = "SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchString = request.getParameter("search");
        List<Ad> ads = null;
        try {
            ads = DaoFactory.getAdsDao().searchAds(searchString);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}

//@WebServlet("/search")
//public class SearchServlet extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String searchString = request.getParameter("search");
//        try {
//            List<Ad> adList = DaoFactory.getAdsDao().searchAds(searchString);
//            request.setAttribute("ads", DaoFactory.getAdsDao().searchAds(searchString));
//        } catch (SQLException se) {
//            se.printStackTrace();
//        }
//        request.getSession().setAttribute("marker", "/ads");
//        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
//    }
//}