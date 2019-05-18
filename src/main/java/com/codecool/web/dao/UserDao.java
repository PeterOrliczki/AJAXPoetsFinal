package com.codecool.web.dao;

import com.codecool.web.model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao {

    List<User> findAll() throws SQLException;

    User findByName(String name) throws SQLException;
}
