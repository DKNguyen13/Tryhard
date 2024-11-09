package vn.hcmute.dao.impl;

import vn.hcmute.configs.DBConnection;
import vn.hcmute.dao.IBookDao;
import vn.hcmute.models.AuthorModel;
import vn.hcmute.models.BookModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDao extends DBConnection implements IBookDao {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    // Lấy danh sách sách từ cơ sở dữ liệu
    @Override
    public List<BookModel> getAllBooks() {
        List<BookModel> books = new ArrayList<>();
        String query = "SELECT * FROM books";
        try {
            con = super.getDatabaseConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                BookModel book = new BookModel(
                        rs.getInt("bookid"),
                        rs.getString("isbn"),
                        rs.getString("title"),
                        rs.getString("publisher"),
                        rs.getDouble("price"),
                        rs.getString("description"),
                        rs.getDate("publish_date"),
                        rs.getString("cover_image"),
                        rs.getInt("quantity")
                );
                books.add(book);

            }
            return books;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    // Lấy thông tin tác giả theo id sách
    @Override
    public List<AuthorModel> getAuthorsByBookId(int bookId) {
        List<AuthorModel> authors = new ArrayList<>();
        String query = "SELECT a.author_id, a.author_name, a.date_of_birth " +
                "FROM author a " +
                "JOIN book_author ba ON a.author_id = ba.author_id " +
                "WHERE ba.bookid = ?";

        try (Connection con = super.getDatabaseConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, bookId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    AuthorModel author = new AuthorModel(
                            rs.getInt("author_id"),
                            rs.getString("author_name"),
                            rs.getDate("date_of_birth")
                    );
                    authors.add(author);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException("Error retrieving authors for bookId: " + bookId, e);
        }
        return authors;
    }

    @Override
    public List<BookModel> getBooksWithAuthors() {
        List<BookModel> books = new ArrayList<>();
        String query = "SELECT b.bookid, b.isbn, b.title, b.publisher, b.price, b.description, " +
                "b.publish_date, b.cover_image, b.quantity, a.author_name " +
                "FROM books b " +
                "JOIN book_author ba ON b.bookid = ba.bookid " +
                "JOIN author a ON ba.author_id = a.author_id";

        try {
            con = super.getDatabaseConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                // Lấy thông tin sách từ kết quả truy vấn
                BookModel book = new BookModel(
                        rs.getInt("bookid"),
                        rs.getString("isbn"),
                        rs.getString("title"),
                        rs.getString("publisher"),
                        rs.getDouble("price"),
                        rs.getString("description"),
                        rs.getDate("publish_date"),
                        rs.getString("cover_image"),
                        rs.getInt("quantity")
                );

                // Lấy tên tác giả và thêm vào danh sách
                String authorName = rs.getString("author_name");
                // Bạn có thể tạo một AuthorModel nếu muốn
                AuthorModel author = new AuthorModel();
                author.setAuthorName(authorName);
                // Nếu muốn trả về nhiều tác giả cho một sách, bạn có thể sử dụng Map hoặc một cấu trúc dữ liệu khác
                // Ví dụ: sử dụng HashMap để lưu thông tin sách và tác giả
                // book.setAuthors(Arrays.asList(author));

                // Thêm sách vào danh sách
                books.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return books;
    }

}
