package vn.hcmute.services;

import vn.hcmute.models.AuthorModel;

import java.util.List;

public interface IAuthorService {
    List<AuthorModel> getAllAuthors();

    List<AuthorModel> getAuthorsWithPagination(int offset, int limit);

    int getAuthorsCount();}
