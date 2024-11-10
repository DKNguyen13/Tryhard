package vn.hcmute.dao;

import vn.hcmute.models.RatingModel;

import java.util.List;

public interface IRatingDao {

    List<RatingModel> ratingModels(int bookid);
}
