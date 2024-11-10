package vn.hcmute.dao;

import vn.hcmute.models.AuthorModel;

import java.util.List;

public interface IAuthorDao {
    List<AuthorModel> getAllAuthors();

    List<AuthorModel> getAuthorsWithPagination(int offset, int limit);

    int getAuthorsCount();
}
