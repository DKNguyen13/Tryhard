package vn.hcmute.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.hcmute.models.BookModel;
import vn.hcmute.services.impl.BookService;

import java.io.IOException;
import java.util.List;

@MultipartConfig(fileSizeThreshold= 1024 * 1024, maxFileSize= 1024 * 1024*5, maxRequestSize = 1024 * 1024*5*5)
@WebServlet(urlPatterns = {"/admin/books","/user/books"})
public class ProductController extends HttpServlet {
    private BookService bookService = new BookService(); // Khởi tạo BookService

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy tất cả sách từ BookService
        List<BookModel> bookList = bookService.getAllBooks();

        // Đưa danh sách sách vào thuộc tính của request để truyền vào JSP
        request.setAttribute("bookList", bookList);

        // Forward request đến JSP
        request.getRequestDispatcher("/views/book.jsp").forward(request, response);
    }

}
