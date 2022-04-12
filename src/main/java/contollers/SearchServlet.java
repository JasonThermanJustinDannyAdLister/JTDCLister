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


//@WebServlet(name = "SearchServlet", urlPatterns = "/search")
//public class SearchServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String searchString = request.getParameter("search");
//        List<Ad> ads = null;
//        try {
//            ads = DaoFactory.getAdsDao().searchAds(searchString);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        request.setAttribute("ads", ads);
//        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
//    }
//}

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
//@WebServlet(name = "SearchServlet", urlPatterns = "/search_ads")
//public class SearchServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/profile");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/search.jsp").forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        String searched_ad = request.getParameter("searched_ads");
//
//        if (searched_ad == null) {
//            response.sendRedirect("/search_ads");
//            return;
//        }
//        request.setAttribute("searched_ads", DaoFactory.getAdsDao().findByTitle(searched_ad));
//        request.getRequestDispatcher("/WEB-INF/ads/searched.jsp").forward(request, response);
//
//    }
//}

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
        } catch (SQLException e) {
        e.printStackTrace();
        }

        request.getRequestDispatcher("/WEB-INF/ads/searched.jsp").forward(request, response);
        System.out.println("These are the ads that we found");

        }
        }