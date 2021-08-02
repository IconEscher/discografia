package com.business.discografia.controller;

import com.business.discografia.model.Album;
import com.business.discografia.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AlbumController {

    @Autowired
    public AlbumService albumService;

    @RequestMapping(value = "/registerAlbum", method = RequestMethod.POST)
    public ModelAndView addAlbum(Album album) {

        System.out.println(album);

        albumService.addAlbum(album);

        return new ModelAndView("Inserito", "Titolo", album.getTitolo());
    }

    @RequestMapping(value = "/modifyAlbum", method = RequestMethod.PATCH)
    public ModelAndView modifyAlbumById(int id, Album album) {

        System.out.println(album);

        albumService.modifyAlbumById(id, album);

        return new ModelAndView("Modificato", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/modifyAlbum", method = RequestMethod.PATCH)
    public ModelAndView modifyAlbumByName(String name, Album album) {

        System.out.println(album);

        albumService.modifyAlbumByName(name, album);

        return new ModelAndView("Modificato", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/deleteAlbum", method = RequestMethod.DELETE)
    public ModelAndView deleteAlbumById(int id) {

        albumService.deleteAlbumById(id);

        return new ModelAndView("Cancellato", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/deleteAlbum", method = RequestMethod.DELETE)
    public ModelAndView deleteAlbumByName(String name) {

        albumService.deleteAlbumByName(name);

        return new ModelAndView("Cancellato", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbums", method = RequestMethod.GET)
    public ModelAndView getAlbums() {

        albumService.getAlbums();

        return new ModelAndView("Lista", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbum", method = RequestMethod.GET)
    public ModelAndView getAlbumById(int id) {

        albumService.getAlbumById(id);

        return new ModelAndView("Album", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbum", method = RequestMethod.GET)
    public ModelAndView getAlbumByName(String name) {

        albumService.getAlbumByName(name);

        return new ModelAndView("Album", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbums", method = RequestMethod.GET)
    public ModelAndView getAlbumsByGenre(String genere) {

        albumService.getAlbumsByGenre(genere);

        return new ModelAndView("Lista album per genere", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbums", method = RequestMethod.GET)
    public ModelAndView getAlbumsByArtist(String artista) {

        albumService.getAlbumsByArtist(artista);

        return new ModelAndView("Lista album per artista", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbums", method = RequestMethod.GET)
    public ModelAndView getAlbumsByYear(int anno) {

        albumService.getAlbumsByYear(anno);

        return new ModelAndView("Lista album per anno", "Album", HttpStatus.ACCEPTED);
    }

}
