package contollers;

import dao.DaoFactory;
import models.Ad;
import models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");
        long newAdId = Long.parseLong(adId);
        System.out.println("adId = " + adId);
        User user = (User) request.getSession().getAttribute("user");
        System.out.println("DaoFactory.getAdsDao().get(Long.parseLong(adId)) = " + DaoFactory.getAdsDao().findById(Long.parseLong(adId)));
        request.setAttribute("ad", DaoFactory.getAdsDao().findById(Long.parseLong(adId)));
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String currentAdId = request.getParameter("currentAdId");
        long newAdId = Long.parseLong(currentAdId);
        String newTitle = request.getParameter("newAdTitle");
        String newDescription = request.getParameter("newAdDescription");

        User user = (User) request.getSession().getAttribute("user");

        Ad editedAd = new Ad(
                newAdId,
                user.getId(),
                newTitle,
                newDescription,
                request.getParameter("img")
        );
        DaoFactory.getAdsDao().edit(editedAd);
        response.sendRedirect("/profile");
    }


}