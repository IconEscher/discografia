package com.business.discografia.controller;

import com.business.discografia.model.Album;
import com.business.discografia.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import java.util.List;

@Controller
public class AlbumController {

    @Autowired
    public AlbumService albumService;

    @RequestMapping(value = "/registerAlbum", method = RequestMethod.POST)
    public ModelAndView addAlbum(Album album) {

        System.out.println(album);

        albumService.addAlbum(album);

        return new ModelAndView("/album.jsp", "album", album.getTitolo());
    }

    @RequestMapping(value = "/modifyAlbumById", method = RequestMethod.PATCH)
    public ModelAndView modifyAlbumById(int id, Album album) {

        System.out.println(album);

        albumService.modifyAlbumById(id, album);

        return new ModelAndView("Modified", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/modifyAlbumByName", method = RequestMethod.PATCH)
    public ModelAndView modifyAlbumByName(String name, Album album) {

        System.out.println(album);

        albumService.modifyAlbumByName(name, album);

        return new ModelAndView("Modified", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/deleteAlbumById", method = RequestMethod.DELETE)
    public ModelAndView deleteAlbumById(int id) {

        albumService.deleteAlbumById(id);

        return new ModelAndView("Deleted", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/deleteAlbumByName", method = RequestMethod.DELETE)
    public ModelAndView deleteAlbumByName(String name) {

        albumService.deleteAlbumByName(name);

        return new ModelAndView("Deleted", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping (value = "/getAlbums", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getAlbums() {

        System.out.println("In getAlbums");

        ModelAndView mav = new ModelAndView("getAlbums", "Album", Album.class);

        List<Album> list = albumService.getAlbums();
        mav.addObject("album", list);

        System.out.println(mav);

        return mav;
    }

    @RequestMapping(value = "/getAlbumById", method = RequestMethod.GET)
    public ModelAndView getAlbumById(int id) {

        albumService.getAlbumById(id);

        return new ModelAndView("/album.jsp", "album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbumByName", method = RequestMethod.GET)
    public ModelAndView getAlbumByName(String name) {

        albumService.getAlbumByName(name);

        return new ModelAndView("/album.jsp", "album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbumsByGenre", method = RequestMethod.GET)
    public ModelAndView getAlbumsByGenre(String genere) {

        albumService.getAlbumsByGenre(genere);

        return new ModelAndView("Lista_genere", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbumsByArtist", method = RequestMethod.GET)
    public ModelAndView getAlbumsByArtist(String artista) {

        albumService.getAlbumsByArtist(artista);

        return new ModelAndView("Lista_artista", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getAlbumsByYear", method = RequestMethod.GET)
    public ModelAndView getAlbumsByYear(int anno) {

        albumService.getAlbumsByYear(anno);

        return new ModelAndView("Lista_anno", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/getSongsByAlbum", method = RequestMethod.GET)
    public ModelAndView showSongs(int idAlbum) {

        albumService.showSongs(idAlbum);

        return new ModelAndView("Canzoni", "Album", HttpStatus.ACCEPTED);
    }

}
