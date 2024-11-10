package vn.hcmute.services.impl;

import vn.hcmute.dao.impl.RatingDao;
import vn.hcmute.models.RatingModel;
import vn.hcmute.services.IRatingService;

import java.util.List;

public class RatingService implements IRatingService {
    RatingDao ratingDao = new RatingDao();

    @Override
    public List<RatingModel> ratingModels(int bookid) {
        return ratingDao.ratingModels(bookid);
    }

    @Override
    public void insertRatingModel(RatingModel ratingModel) {
        ratingDao.insertRatingModel(ratingModel);
    }
}
