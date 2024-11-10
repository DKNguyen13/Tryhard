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

    @Override
    public void insertRatingModel(RatingModel ratingModel) {
        String checkQuery = "SELECT COUNT(*) FROM rating WHERE userid = ? AND bookid = ?";
        String insertQuery = "INSERT INTO rating (userid, bookid, rating, review_text) VALUES (?, ?, ?, ?)";
        try {
            conn = super.getDatabaseConnection();

            // Kiểm tra xem có bản ghi nào với userid và bookid chưa
            ps = conn.prepareStatement(checkQuery);
            ps.setInt(1, ratingModel.getUserid());
            ps.setInt(2, ratingModel.getBookid());
            rs = ps.executeQuery();

            // Nếu không có bản ghi nào, thực hiện INSERT
            if (rs.next() && rs.getInt(1) == 0) {
                ps = conn.prepareStatement(insertQuery);
                ps.setInt(1, ratingModel.getUserid());
                ps.setInt(2, ratingModel.getBookid());
                ps.setInt(3, ratingModel.getRating());
                ps.setString(4, ratingModel.getReview_text());
                ps.executeUpdate();
                System.out.println("Thành công");
            } else {
                System.out.println("Đánh giá đã tồn tại cho người dùng và sách này.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {

    }
}
