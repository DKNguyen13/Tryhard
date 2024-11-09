package vn.hcmute.dao;

import vn.hcmute.models.UserModel;

import java.util.List;

public interface IUserDao {
    // Phương thức để thêm người dùng mới
    void insertUser(UserModel user);

    // Phương thức để cập nhật thông tin người dùng
    void updateUser(UserModel user);

    // Phương thức để xóa người dùng
    void deleteUser(String email);

    //Đổi password
    void updatePassword(String email, String password);

    // Phương thức để lấy thông tin người dùng theo email (sử dụng cho đăng nhập)
    UserModel getUserByEmail(String email);

    // Phương thức để lấy danh sách tất cả người dùng
    List<UserModel> findAll();
}
