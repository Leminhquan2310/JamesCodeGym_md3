package exam.codegym.usermanager.dao;

import exam.codegym.usermanager.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    void addUserTransaction(User user, List<Integer> permissions);

    void insertUpdateWithoutTransaction();

    void insertUpdateUseTransaction();
}
