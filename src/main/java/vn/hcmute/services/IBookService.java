package vn.hcmute.services;

import vn.hcmute.models.AuthorModel;
import vn.hcmute.models.BookModel;

import java.util.List;

public interface IBookService {
    // Lấy danh sách sách từ cơ sở dữ liệu
    List<BookModel> getAllBooks();

    // Lấy thông tin tác giả theo id sách
    public BookModel getByBookId(int bookId);
    List<BookModel> getBooksWithAuthors();
}
