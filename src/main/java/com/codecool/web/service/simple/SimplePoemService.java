package com.codecool.web.service.simple;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;
import com.codecool.web.service.PoemService;
import com.codecool.web.service.exception.ServiceException;

import java.sql.SQLException;
import java.util.List;

public final class SimplePoemService implements PoemService {

    private final PoemDao poemDao;

    public SimplePoemService(PoemDao poemDao) {
        this.poemDao = poemDao;
    }

    @Override
    public List<Poem> findAllByUserId(String id) throws SQLException {
        return poemDao.findAllByUserId(Integer.parseInt(id));
    }

    @Override
    public Poem findContentByUserId(String id) throws SQLException, ServiceException {
        try {
            return poemDao.findContentByUserId(Integer.parseInt(id));
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
    }

    @Override
    public Poem findAllByTitle(String title) throws SQLException {
        return poemDao.findAllByTitle(title);
    }
}
