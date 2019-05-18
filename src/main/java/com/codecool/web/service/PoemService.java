package com.codecool.web.service;

import com.codecool.web.model.Poem;
import com.codecool.web.service.exception.ServiceException;

import java.sql.SQLException;
import java.util.List;

public interface PoemService {

    List<Poem> findAllByUserId(String id) throws SQLException;

    public Poem findContentByUserId(String id) throws SQLException, ServiceException;

    public Poem findAllByTitle(String title) throws SQLException;
}
