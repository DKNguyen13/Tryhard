package vn.hcmute.dao.impl;

import vn.hcmute.configs.DBConnection;
import vn.hcmute.dao.IRatingDao;
import vn.hcmute.models.RatingModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RatingDao extends DBConnection implements IRatingDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<RatingModel> ratingModels(int bookid) {
        List<RatingModel> ratingModels = new ArrayList<>();
        String query = "SELECT u.fullname, rt.rating, rt.review_text " +
                "FROM rating rt " +
                "JOIN books b ON b.bookid = rt.bookid " +
                "JOIN users u ON rt.userid = u.id " +
                "WHERE b.bookid = ?";
        try {
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, bookid);
            rs = ps.executeQuery();
            while (rs.next()) {
                RatingModel ratingModel = new RatingModel();
                ratingModel.setFullname(rs.getString("fullname"));
                ratingModel.setRating(rs.getByte("rating"));
                ratingModel.setReview_text(rs.getString("review_text"));

                // Thêm mỗi rating vào danh sách
                ratingModels.add(ratingModel);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ratingModels;
    }

    public static void main(String[] args) {

    }
}
