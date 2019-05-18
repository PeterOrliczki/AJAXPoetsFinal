package com.codecool.web.dao.database;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public final class DatabasePoemDao extends AbstractDao implements PoemDao {

    public DatabasePoemDao(Connection connection) {
        super(connection);
    }

    @Override
    public List<Poem> findAllByUserId(int userId) throws SQLException {
        List<Poem> poems = new ArrayList<>();
        String sql = "SELECT id, user_id, title, content FROM poems WHERE user_id = ?;";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    poems.add(fetchPoem(resultSet));
                }
            }
        }
        return poems;
    }

    @Override
    public Poem findPoemByTitle(String title) throws SQLException {
        String sql = "SELECT id, user_id, title, content FROM poems WHERE title = ?;";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, title);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return fetchPoem(resultSet);
                }
            }
        }
        return null;
    }

    private Poem fetchPoem(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        int userId = resultSet.getInt("user_id");
        String title = resultSet.getString("title");
        String content = resultSet.getString("content");
        return new Poem(id, userId, title, content);
    }
}
