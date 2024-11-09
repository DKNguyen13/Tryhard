package vn.hcmute.dao;

import vn.hcmute.models.AuthorModel;
import vn.hcmute.models.BookModel;

import java.util.List;

public interface IBookDao {
    // Lấy danh sách sách từ cơ sở dữ liệu
    List<BookModel> getAllBooks();

    // Lấy thông tin tác giả theo id sách
    List<AuthorModel> getAuthorsByBookId(int bookId);

    List<BookModel> getBooksWithAuthors();
}
