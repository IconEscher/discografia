package com.business.discografia.service;

import com.business.discografia.model.Album;

import java.util.List;

public interface AlbumService {

    // Inserire un album
    public int addAlbum(Album album);

    // Modificare un album
    public Album modifyAlbumById (int id, Album album);
    public Album modifyAlbumByName (String name, Album album);

    // Cancellare un album
    public int deleteAlbumById (int id);
    public int deleteAlbumByName (String name);

    // Visualizzare la lista degli album
    public List<Album> getAlbums();

    // Visualizzare un singolo album
    public Album getAlbumById(int id);
    public Album getAlbumByName(String name);

    // Visualizzare lista degli album per TAG
    public List<Album> getAlbumsByGenre(String genere);
    public List<Album> getAlbumsByArtist(String artista);
    public List<Album> getAlbumsByYear(int anno);
}
