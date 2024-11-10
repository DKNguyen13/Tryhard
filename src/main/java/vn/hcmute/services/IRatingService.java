package vn.hcmute.services;

import vn.hcmute.models.RatingModel;

import java.util.List;

public interface IRatingService {
    List<RatingModel> ratingModels(int bookid);
    void insertRatingModel(RatingModel ratingModel);
    ;
}


