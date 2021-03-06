package com.business.discografia.dao;

import com.business.discografia.model.Album;
import com.business.discografia.model.Canzone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.ResponseStatus;

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
        return jdbcTemplate.update(sql, new Object[] {album.getArtista(),
                album.getTitolo(),
                album.getDurata(),
                album.getGenere(),
                album.getAnno()});
    }

    @Override
    public Album modifyAlbumById(int id, Album album) {
        String sql = "UPDATE album " +
                "SET idalbum = " + id +
                ", Titolo = '"  + album.getTitolo() +
                "', Durata = " + album.getDurata() +
                ", Genere = '" + album.getGenere() +
                "', artista = '" + album.getArtista() +
                "', Anno = " + album.getAnno() +
                "WHERE idalbum = " + id + ";";

        return album;
    }

    @Override
    public Album modifyAlbumByName(String name, Album album) {
        String sql = "UPDATE album " +
                "SET Titolo = '"  + name +
                "', Durata = " + album.getDurata() +
                ", Genere = '" + album.getGenere() +
                "', artista = '" + album.getArtista() +
                "', Anno = " + album.getAnno() +
                "WHERE Titolo = " + name + ";";

        return album;
    }

    @Override
    public void deleteAlbumById(int id) {
        String sql = "DELETE FROM album WHERE idalbum = " + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void deleteAlbumByName(String name) {
        String sql = "DELETE FROM album WHERE Titolo = '" + name + "'";
        jdbcTemplate.update(sql);
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
        String sql = "SELECT * FROM album WHERE Genere = '" + genere + "'";
        List<Album> albums = jdbcTemplate.query(sql, new AlbumRowMapper());
        return albums;
    }

    @Override
    public List<Album> getAlbumsByArtist(int artista) {
        String sql = "SELECT * FROM album WHERE artista = '" + artista + "'";
        List<Album> albums = jdbcTemplate.query(sql, new AlbumRowMapper());
        return albums;
    }

    @Override
    public List<Album> getAlbumsByYear(int anno) {
        String sql = "SELECT * FROM album WHERE Anno = " + anno;
        List<Album> albums = jdbcTemplate.query(sql, new AlbumRowMapper());
        return albums;
    }

    @Override
    public List<Canzone> showSongs(int idAlbum) {
        String sql = "SELECT * FROM canzone c " +
                "WHERE idalbum = " + idAlbum;
        List<Canzone> canzoni = jdbcTemplate.query(sql, new RowMapper<Canzone>() {
            @Override
            public Canzone mapRow(ResultSet rs, int i) throws SQLException {
                Canzone canzone = new Canzone();
                canzone.setTitolo(rs.getString("titolo"));
                canzone.setDurata(rs.getFloat("Durata"));

                return canzone;
            }
        });
                return canzoni;
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
