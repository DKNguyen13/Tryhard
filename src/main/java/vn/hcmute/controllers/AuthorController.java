package vn.hcmute.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.hcmute.models.AuthorModel;
import vn.hcmute.services.impl.AuthorService;

import java.io.IOException;
import java.util.List;

@WebServlet("/authors")
public class AuthorController extends HttpServlet {
    AuthorService authorService = new AuthorService();
    private static final int PAGE_SIZE = 3; // Số lượng bản ghi mỗi trang

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy tham số trang hiện tại từ URL (mặc định là 1)
        String pageParam = request.getParameter("page");
        int currentPage = pageParam == null ? 1 : Integer.parseInt(pageParam);

        // Tính toán offset cho truy vấn SQL
        int offset = (currentPage - 1) * PAGE_SIZE;

        // Lấy danh sách tác giả từ tầng DAO
        List<AuthorModel> authors = authorService.getAuthorsWithPagination(offset, PAGE_SIZE);
        int totalAuthors = authorService.getAuthorsCount();

        // Tính tổng số trang
        int totalPages = (int) Math.ceil((double) totalAuthors / PAGE_SIZE);

        // Gửi dữ liệu tới JSP
        request.setAttribute("authors", authors);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);

        // Chuyển hướng tới authors.jsp
        request.getRequestDispatcher("/views/authors.jsp").forward(request, response);
    }

}
