package com.business.discografia.model;

public class Artista {

    private int ID;
    private String nome;
    private String cognome;

    public Artista() {
    }

    public Artista(String nome, String cognome) {
        this.nome = nome;
        this.cognome = cognome;
    }
}
