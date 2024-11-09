package vn.hcmute.dao.impl;

import vn.hcmute.configs.DBConnection;
import vn.hcmute.dao.IAuthorDao;
import vn.hcmute.models.AuthorModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AuthorDao extends DBConnection implements IAuthorDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<AuthorModel> getAllAuthors() {
        List<AuthorModel> authors = new ArrayList<>();
        String query = "SELECT * FROM author";
            try {
                conn = super.getDatabaseConnection();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    AuthorModel author = new AuthorModel(
                            rs.getInt("author_id"),
                            rs.getString("author_name"),
                            rs.getDate("date_of_birth")
                    );
                    authors.add(author);
                }
            }
            catch (Exception e) {
                e.printStackTrace();
            }
            return authors;
    }
}
