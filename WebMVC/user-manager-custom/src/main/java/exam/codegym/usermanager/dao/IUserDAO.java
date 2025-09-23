package exam.codegym.usermanager.dao;

import exam.codegym.usermanager.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> selectUsersByCountry(String country);

    List<String> selectListCountry();

    List<User> selectOrderBy(String order);
}
