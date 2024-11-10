package vn.hcmute.services.impl;

import vn.hcmute.dao.IBookDao;
import vn.hcmute.dao.impl.BookDao;
import vn.hcmute.models.AuthorModel;
import vn.hcmute.models.BookModel;
import vn.hcmute.services.IBookService;

import java.util.List;

public class BookService implements IBookService {
    IBookDao bookDao = new BookDao();

    @Override
    public List<BookModel> getAllBooks() {
        return bookDao.getAllBooks();
    }

    @Override
    public BookModel getByBookId(int bookId) {
        return bookDao.getByBookId(bookId);
    }


    @Override
    public List<BookModel> getBooksWithAuthors() {
        return bookDao.getBooksWithAuthors();
    }
}
