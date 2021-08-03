package com.business.discografia.model;

public class Album {

    private String titolo;
    private String artista;
    private float durata;
    private String genere;
    private int anno;

    public Album() {
    }

    public Album(String titolo, String artista, float durata, String genere, int anno) {
        this.titolo = titolo;
        this.artista = artista;
        this.durata = durata;
        this.genere = genere;
        this.anno = anno;
    }



    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String nome) {
        this.titolo = nome;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public float getDurata() {
        return durata;
    }

    public void setDurata(float durata) {
        this.durata = durata;
    }

    public String getGenere() {
        return genere;
    }

    public void setGenere(String genere) {
        this.genere = genere;
    }

    public int getAnno() {
        return anno;
    }

    public void setAnno(int anno) {
        this.anno = anno;
    }

    @Override
    public String toString() {
        return "Album{" +
                ", titolo='" + titolo + '\'' +
                ", artista='" + artista + '\'' +
                ", durata='" + durata + '\'' +
                ", genere='" + genere + '\'' +
                ", anno=" + anno +
                '}';
    }
}
