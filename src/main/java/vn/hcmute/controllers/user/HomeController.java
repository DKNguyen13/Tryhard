package vn.hcmute.controllers.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.hcmute.models.UserModel;

import java.io.IOException;

@WebServlet("/user/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session= req.getSession();
        if(session != null && session.getAttribute("account") != null) {
            UserModel u = (UserModel) session.getAttribute("account");
            req.setAttribute("funa", u.getFullname());
        }
        req.getRequestDispatcher("/views/user/home.jsp").forward(req, resp);
    }
}
