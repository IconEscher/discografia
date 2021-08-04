package com.business.discografia.controller;

import com.business.discografia.model.Album;
import com.business.discografia.model.Canzone;
import com.business.discografia.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.util.List;

@Controller
public class AlbumController {

    @Autowired
    public AlbumService albumService;

    @RequestMapping(value = "/registerAlbum", method = RequestMethod.POST, produces = "application/json")
    public ModelAndView addAlbum(Album album) {

        System.out.println(album);

        albumService.addAlbum(album);

        return new ModelAndView("album", "album", album.getTitolo());
    }

    @RequestMapping(value = "/modifyAlbum/{id}", method = RequestMethod.PATCH, produces = "application/json")
    public ModelAndView modifyAlbumById(@PathVariable int id, Album album) {

        System.out.println(album);

        albumService.modifyAlbumById(id, album);

        return new ModelAndView("modified", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/modifyAlbum/{name}", method = RequestMethod.PATCH, produces = "application/json")
    public ModelAndView modifyAlbumByName(@PathVariable String name, Album album) {

        System.out.println(album);

        albumService.modifyAlbumByName(name, album);

        return new ModelAndView("modified", "Album", HttpStatus.ACCEPTED);
    }

    @RequestMapping(value = "/deleteAlbumById/{id}", method = RequestMethod.GET)
    public String deleteAlbumById(@PathVariable int id) {

        albumService.deleteAlbumById(id);
        return "redirect:/deleted";
    }

    @RequestMapping (value = "/deleteAlbumByName/{name}", method = RequestMethod.GET)
    public String deleteAlbumByName(@PathVariable String name) {

        albumService.deleteAlbumByName(name);

        return "redirect:/deleted";
    }

    @RequestMapping (value = "/getAlbums", method = RequestMethod.GET, produces = "application/json")
    @ResponseBody
    public ModelAndView getAlbums() {

        ModelAndView mav = new ModelAndView("getAlbums", "Album", Album.class);
        List<Album> list = albumService.getAlbums();
        mav.addObject("album", list);

        return mav;
    }

    @RequestMapping(value = "/getAlbumById/{id}", method = RequestMethod.GET)
    public ModelAndView getAlbumById(@PathVariable int id) {

        ModelAndView mav = new ModelAndView("getAlbum", "Album", Album.class);
        Album album = albumService.getAlbumById(id);
        mav.addObject("album", album);

        return mav;
    }

    @RequestMapping(value = "/getAlbumByName/{name}", method = RequestMethod.GET)
    public ModelAndView getAlbumByName(@PathVariable String name) {

        ModelAndView mav = new ModelAndView("getAlbum", "Album", Album.class);
        Album album = albumService.getAlbumByName(name);
        mav.addObject("album", album);

        return mav;
    }

    @RequestMapping(value = "/getAlbumsByGenre/{genere}", method = RequestMethod.GET, produces = "application/json")
    public ModelAndView getAlbumsByGenre(@PathVariable String genere) {

        ModelAndView mav = new ModelAndView("getAlbumsByGenre", "Album", Album.class);
        List<Album> list = albumService.getAlbumsByGenre(genere);
        mav.addObject("album", list);

        return mav;
    }

    @RequestMapping(value = "/getAlbumsByArtist/{artista}", method = RequestMethod.GET)
    public ModelAndView getAlbumsByArtist(@PathVariable int artista) {

        ModelAndView mav = new ModelAndView("getAlbums", "Album", Album.class);
        List<Album> list = albumService.getAlbumsByArtist(artista);
        mav.addObject("album", list);

        return mav;
    }

    @RequestMapping(value = "/getAlbumsByYear/{anno}", method = RequestMethod.GET)
    public ModelAndView getAlbumsByYear(@PathVariable int anno) {

        ModelAndView mav = new ModelAndView("getAlbums", "Album", Album.class);
        List<Album> list = albumService.getAlbumsByYear(anno);
        mav.addObject("album", list);

        return mav;
    }

    @RequestMapping(value = "/getSongs/{idAlbum}", method = RequestMethod.GET)
    public ModelAndView showSongs(@PathVariable int idAlbum) {

        ModelAndView mav = new ModelAndView("getSongs", "Album", Album.class);
        List<Canzone> list = albumService.showSongs(idAlbum);
        mav.addObject("songs", list);

        return mav;
    }

}
