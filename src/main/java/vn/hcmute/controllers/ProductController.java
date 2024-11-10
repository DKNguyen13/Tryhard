package vn.hcmute.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.hcmute.models.BookModel;
import vn.hcmute.models.RatingModel;
import vn.hcmute.models.UserModel;
import vn.hcmute.services.impl.BookService;
import vn.hcmute.services.impl.RatingService;

import java.io.IOException;
import java.util.List;

@MultipartConfig(fileSizeThreshold= 1024 * 1024, maxFileSize= 1024 * 1024*5, maxRequestSize = 1024 * 1024*5*5)
@WebServlet(urlPatterns = {"/admin/books","/user/books", "/user/book/detail","/admin/book/detail","/book/submitReview"})
public class ProductController extends HttpServlet {
    private BookService bookService = new BookService(); // Khởi tạo BookService
    RatingService ratingService = new RatingService();
    int userid;
    boolean isAdmin;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURI();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");


        HttpSession session= request.getSession();
        if(session != null && session.getAttribute("account") != null) {
            UserModel u = (UserModel) session.getAttribute("account");
            request.setAttribute("funa", u.getFullname());
            userid = u.getId();
        }
        // Lấy đường dẫn hiện tại
        String currentPath = request.getServletPath();

        // Kiểm tra nếu người dùng truy cập từ đường dẫn "/admin"
        isAdmin = currentPath.startsWith("/admin");

        // Nếu không phải admin, gán isAdmin thành false
        if (!isAdmin) {
            isAdmin = false;
        }

        // Đặt thuộc tính isAdmin vào request để sử dụng trong JSP
        request.setAttribute("isAdmin", isAdmin);
        if(url.contains("books")){
            // Lấy tất cả sách từ BookService
            List<BookModel> bookList = bookService.getAllBooks();

            // Đưa danh sách sách vào thuộc tính của request để truyền vào JSP
            request.setAttribute("bookList", bookList);

            // Forward request đến JSP
            request.getRequestDispatcher(request.getContextPath()+"/views/book.jsp").forward(request, response);
        }
        else if(url.contains("detail")){
            int id = Integer.parseInt(request.getParameter("id"));
            BookModel bookModel = bookService.getByBookId(id);
            // Lấy thông tin cuốn sách và đánh giá từ DAO
            List<RatingModel> ratings = ratingService.ratingModels(id);
            request.setAttribute("reviews", ratings);  // Truyền danh sách đánh giá vào request
            request.setAttribute("bookModel", bookModel);
            request.getRequestDispatcher("/views/detail_book.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURI();
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        if(url.contains("/book/submitReview")){
            try {
                int id = Integer.parseInt(req.getParameter("bookId"));
                byte rating = Byte.parseByte(req.getParameter("rating"));
                String review = req.getParameter("reviewText");
                RatingModel ratingModel = new RatingModel();
                ratingModel.setUserid(userid);
                ratingModel.setReview_text(review);
                ratingModel.setRating(rating);
                ratingModel.setBookid(id);

                // In ra các giá trị đã lấy
                System.out.println("Book ID: " + id);
                System.out.println("Rating: " + rating);
                System.out.println("Review Text: " + review);
                System.out.println("User ID: " + userid);  // In ra userid từ session
                ratingService.insertRatingModel(ratingModel);
                System.out.println(ratingModel.toString());
                if(isAdmin){
                    resp.sendRedirect(req.getContextPath()+"/admin/books");
                }
                else {
                    resp.sendRedirect(req.getContextPath()+"/user/books");

                }
            }
            catch (Exception e) {
                e.printStackTrace();
            }

        }
    }
}
