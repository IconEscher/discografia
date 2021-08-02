package com.business.discografia.dao;

import com.business.discografia.model.Album;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AlbumDaoImpl implements AlbumDao {

    // IoC - Inversion of Control
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int addAlbum(Album album) {
        String sql = "insert into album values (?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[] {album.getTitolo(),
                album.getArtista(),
                album.getGenere(),
                album.getAnno()});
    }

    @Override
    public Album modifyAlbumById(int id, Album album) {
        return null;
    }

    @Override
    public Album modifyAlbumByName(String name, Album album) {
        return null;
    }

    @Override
    public int deleteAlbumById(int id) {
        return 0;
    }

    @Override
    public int deleteAlbumByName(String name) {
        return 0;
    }

    @Override
    public List<Album> getAlbums() {
        String sql = "SELECT * FROM album";
        List<Album> albums = jdbcTemplate.query(sql,new AlbumRowMapper());
        return albums;
    }

    @Override
    public Album getAlbumById(int id) {
        String sql = "SELECT * FROM album WHERE idalbum = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new AlbumRowMapper());
    }

    @Override
    public Album getAlbumByName(String name) {
        String sql = "SELECT * FROM album WHERE Titolo = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name}, new AlbumRowMapper());
    }

    @Override
    public List<Album> getAlbumsByGenre(String genere) {
        String sql = "SELECT * FROM album WHERE Genere = " + genere;
        List<Album> albums = jdbcTemplate.query(sql, new AlbumRowMapper());
        return albums;
    }

    @Override
    public List<Album> getAlbumsByArtist(String artista) {
        return null;
    }

    @Override
    public List<Album> getAlbumsByYear(int anno) {
        String sql = "SELECT * FROM album WHERE Genere = " + anno;
        List<Album> albums = jdbcTemplate.query(sql, new AlbumRowMapper());
        return albums;
    }
}

class AlbumRowMapper implements RowMapper<Album> {

    @Override
    public Album mapRow(ResultSet rs, int rowNum) throws SQLException {

        Album album = new Album();
        album.setTitolo(rs.getString("Titolo"));
        album.setArtista(rs.getString("artista"));
        album.setDurata(rs.getFloat("Durata"));
        album.setGenere(rs.getString("Genere"));
        album.setAnno(rs.getInt("Anno"));

        return album;

    }
}
