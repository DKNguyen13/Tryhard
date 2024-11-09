package vn.hcmute.services.impl;

import vn.hcmute.dao.impl.UserDao;
import vn.hcmute.models.UserModel;
import vn.hcmute.services.IUserService;

import java.util.List;

public class UserService implements IUserService {
    UserDao userDao = new UserDao();

    @Override
    public void insertUser(UserModel user) {
        if(getUserByEmail(user.getEmail()) == null) {
            userDao.insertUser(user);
        }
        else {
            System.out.println("Tồn tại tài khoản");
        }
    }

    @Override
    public void updateUser(UserModel user) {
        if(getUserByEmail(user.getEmail()) != null) {
            userDao.updateUser(user);
        }
        else {
            System.out.println("Không tồn tại tài khoản");
        }
    }

    @Override
    public void deleteUser(String email) {
        if(getUserByEmail(email) != null) {
            userDao.deleteUser(email);
        }
        else {
            System.out.println("Tài khoản không tồn tại");
        }
    }

    @Override
    public void updatePassword(String email, String password) {
        if(getUserByEmail(email) != null) {
            userDao.updatePassword(email, password);
        }
        else {
            System.out.println("Tài khoản không tồn tại");
        }
    }

    @Override
    public UserModel getUserByEmail(String email) {
        return userDao.getUserByEmail(email);
    }

    @Override
    public List<UserModel> findAll() {
        return userDao.findAll();
    }

    @Override
    public UserModel login(String email, String password) {
        UserModel user = userDao.getUserByEmail(email);
        if(user!=null && user.getPasswd().equals(password)) {
            return user;
        }
        else {
            System.out.println("Tài khoản không tồn tại");
        }
        return null;
    }

}
