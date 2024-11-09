package vn.hcmute.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.hcmute.models.UserModel;
import vn.hcmute.services.IUserService;
import vn.hcmute.services.impl.UserService;
import vn.hcmute.utils.Constant;

import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    IUserService service = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        String username = null;
        for (Cookie cookie : cookies) {
            if(Constant.COOKIE_REMEMBER.equals(cookie.getName())){
                username = cookie.getValue();
            }
        }
        req.setAttribute("cookie_user", username);
        req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        boolean isRememberMe = false;

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        String remember = req.getParameter("remember");

        if("on".equals(remember)){
            isRememberMe = true;
        }
        String alertMsg="";
        UserModel user = service.login(email, password);
        if(user!=null){
            HttpSession session = req.getSession(true);
            session.setAttribute("account", user);
            // Logging
            if(isRememberMe){
                saveRemeberMe(resp, email);
            }
            resp.sendRedirect(req.getContextPath()+"/waiting");
        }else{
            alertMsg = "Tài khoản hoặc mật khẩu không đúng";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
        }
    }

    private void saveRemeberMe(HttpServletResponse resp, String username) {
        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username);
        cookie.setMaxAge(30*60);
        resp.addCookie(cookie);
    }
}
