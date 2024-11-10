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
        List<BookModel> listBook = new ArrayList<>();
        String sql = "select at.author_name, b.bookid, b.isbn, b.title, b.publisher, b.price, b.description, b.publish_date, b.cover_image, b.quantity " +
                "from book_author ba join author at on ba.author_id = at.author_id " +
                "join books b on ba.bookid = b.bookid";
        try {
            con =super.getDatabaseConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                BookModel book = new BookModel();
                book.setBookId(rs.getInt("bookid"));
                book.setIsbn(rs.getInt("isbn"));
                book.setTitle(rs.getString("title"));
                book.setPublisher(rs.getString("publisher"));
                book.setPrice(rs.getDouble("price"));
                book.setDescription(rs.getString("description"));
                book.setPublishDate(rs.getDate("publish_date"));
                book.setCoverImage(rs.getString("cover_image"));
                book.setQuantity(rs.getInt("quantity"));
                book.setAuthor(rs.getString("author_name"));
                listBook.add(book);
            }
            return listBook;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    // Lấy thông tin tác giả theo id sách
    @Override
    public BookModel getByBookId(int bookId) {
        List<AuthorModel> authors = new ArrayList<>();
        String query = "SELECT at.author_name, b.bookid, b.isbn, b.title, b.publisher, b.price, b.description, b.publish_date, b.cover_image, b.quantity " +
                "FROM book_author ba " +
                "JOIN author at ON ba.author_id = at.author_id " +
                "JOIN books b ON ba.bookid = b.bookid " +
                "WHERE b.bookid = ?";

        BookModel book = new BookModel();
        try (Connection con = super.getDatabaseConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, bookId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {

                    book.setBookId(rs.getInt("bookid"));
                    book.setIsbn(rs.getInt("isbn"));
                    book.setTitle(rs.getString("title"));
                    book.setPublisher(rs.getString("publisher"));
                    book.setPrice(rs.getDouble("price"));
                    book.setDescription(rs.getString("description"));
                    book.setPublishDate(rs.getDate("publish_date"));
                    book.setCoverImage(rs.getString("cover_image"));
                    book.setQuantity(rs.getInt("quantity"));
                    book.setAuthor(rs.getString("author_name"));

                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException("Error retrieving authors for bookId: " + bookId, e);
        }
        return book;
    }

    @Override
    public List<BookModel> getBooksWithAuthors() {
        return null;
    }

    public static void main(String[] args) {
        List<BookModel> books = new ArrayList<>();
        books = new BookDao().getAllBooks();
        for (BookModel book : books) {
            System.out.println(book.toString());
        }
    }
}
