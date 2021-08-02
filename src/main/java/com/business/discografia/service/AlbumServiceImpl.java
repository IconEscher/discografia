package com.business.discografia.service;

import com.business.discografia.dao.AlbumDao;
import com.business.discografia.model.Album;
import com.business.discografia.model.Canzone;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AlbumServiceImpl implements AlbumService {

    @Autowired
    public AlbumDao albumDao;

    @Override
    public int addAlbum(Album album) {
        return albumDao.addAlbum(album);
    }

    @Override
    public Album modifyAlbumById(int id, Album album) {
        return albumDao.modifyAlbumById(id, album);
    }

    @Override
    public Album modifyAlbumByName(String name, Album album) {
        return albumDao.modifyAlbumByName(name, album);
    }

    @Override
    public int deleteAlbumById(int id) {
        return albumDao.deleteAlbumById(id);
    }

    @Override
    public int deleteAlbumByName(String name) {
        return albumDao.deleteAlbumByName(name);
    }

    @Override
    public List<Album> getAlbums() {
        return albumDao.getAlbums();
    }

    @Override
    public Album getAlbumById(int id) {
        return albumDao.getAlbumById(id);
    }

    @Override
    public Album getAlbumByName(String name) {
        return albumDao.getAlbumByName(name);
    }

    @Override
    public List<Album> getAlbumsByGenre(String genere) {
        return albumDao.getAlbumsByGenre(genere);
    }

    @Override
    public List<Album> getAlbumsByArtist(String artista) {
        return albumDao.getAlbumsByArtist(artista);
    }

    @Override
    public List<Album> getAlbumsByYear(int anno) {
        return albumDao.getAlbumsByYear(anno);
    }

    public List<Canzone> showSongs(int idAlbum) {
        return albumDao.showSongs(idAlbum);
    }
}
