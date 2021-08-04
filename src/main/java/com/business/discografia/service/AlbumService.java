package com.business.discografia.service;

import com.business.discografia.model.Album;
import com.business.discografia.model.Canzone;

import java.util.List;

public interface AlbumService {

    // Inserire un album
    public int addAlbum(Album album);

    // Modificare un album
    public Album modifyAlbumById (int id, Album album);
    public Album modifyAlbumByName (String name, Album album);

    // Cancellare un album
    public void deleteAlbumById (int id);
    public void deleteAlbumByName (String name);

    // Visualizzare la lista degli album
    public List<Album> getAlbums();

    // Visualizzare un singolo album
    public Album getAlbumById(int id);
    public Album getAlbumByName(String name);

    // Visualizzare lista degli album per TAG
    public List<Album> getAlbumsByGenre(String genere);
    public List<Album> getAlbumsByArtist(int artista);
    public List<Album> getAlbumsByYear(int anno);

    //Mostrare la lista di canzoni di un album
    public List<Canzone> showSongs(int idAlbum);
}
