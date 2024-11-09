package vn.hcmute.dao.impl;

import vn.hcmute.configs.DBConnection;
import vn.hcmute.dao.IUserDao;
import vn.hcmute.models.UserModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends DBConnection implements IUserDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    @Override
    public void insertUser(UserModel user) {
        try{
            String query = "INSERT INTO users (email, fullname, phone, passwd, signup_date, last_login, is_admin) VALUES (?, ?, ?, ?, ?, ?, ?)";
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getFullname());
            ps.setInt(3,user.getPhone());
            ps.setString(4, user.getPasswd());
            ps.setDate(5, user.getSignupDate());
            ps.setDate(6, null);
            ps.setBoolean(7, false);
            ps.executeUpdate();
            System.out.println("Thêm người dùng thành công!");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void updateUser(UserModel user) {
        try{
            String query = "UPDATE users SET fullname = ?, phone = ? WHERE email = ?";
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getFullname());
            ps.setInt(2,user.getPhone());
            ps.setString(3, user.getEmail());
            ps.executeUpdate();
            System.out.println("update thông tin người dùng thành công!");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void deleteUser(String email) {
        try{
            String query = "DELETE FROM users WHERE email = ?";
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.executeUpdate();
            System.out.println("Xóa người dùng thành công");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void updatePassword(String email, String password) {
        try{
            String query = "UPDATE users SET passwd = ? WHERE email = ?";
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            ps.executeUpdate();
            System.out.println("update password người dùng thành công!");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public UserModel getUserByEmail(String email) {
        UserModel user = null;
        try{
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement("SELECT * FROM users WHERE email = ?");
            ps.setString(1, email);
            rs = ps.executeQuery();
            if(rs.next()){
                user = new UserModel();
                user.setEmail(rs.getString("email"));
                user.setFullname(rs.getString("fullname"));
                user.setPhone(rs.getInt("phone"));
                user.setPasswd(rs.getString("passwd"));
                user.setSignupDate(rs.getDate("signup_date"));
                user.setLastLogin(rs.getDate("last_login"));
                user.setAdmin(rs.getBoolean("is_admin"));
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public List<UserModel> findAll() {
        List<UserModel> list = new ArrayList<>();
        try{
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement("SELECT * FROM users");
            rs = ps.executeQuery();
            while(rs.next()){
                UserModel user = new UserModel();
                user.setEmail(rs.getString("email"));
                user.setFullname(rs.getString("fullname"));
                user.setPhone(rs.getInt("phone"));
                user.setPasswd(rs.getString("passwd"));
                user.setSignupDate(rs.getDate("signup_date"));
                user.setLastLogin(rs.getDate("last_login"));
                user.setAdmin(rs.getBoolean("is_admin"));
                list.add(user);
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        List<UserModel> list = new UserDao().findAll();
        for(UserModel user : list){
            System.out.println(user.toString());
        }
    }
}
