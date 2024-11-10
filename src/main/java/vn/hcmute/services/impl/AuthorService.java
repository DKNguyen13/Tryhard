package vn.hcmute.services.impl;

import vn.hcmute.dao.IAuthorDao;
import vn.hcmute.dao.impl.AuthorDao;
import vn.hcmute.models.AuthorModel;
import vn.hcmute.services.IAuthorService;

import java.util.List;

public class AuthorService implements IAuthorService {
    IAuthorDao authorDao = new AuthorDao();

    @Override
    public List<AuthorModel> getAllAuthors() {
        return authorDao.getAllAuthors();
    }

    @Override
    public List<AuthorModel> getAuthorsWithPagination(int offset, int limit) {
        return authorDao.getAuthorsWithPagination(offset, limit);
    }

    @Override
    public int getAuthorsCount() {
        return authorDao.getAuthorsCount();
    }
}
