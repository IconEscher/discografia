package com.business.discografia.model;

public class Canzone {

    private int idcanzone;
    private String titolo;
    private float durata;

    public Canzone() {
    }

    public Canzone(String titolo, float durata) {
        this.titolo = titolo;
        this.durata = durata;
    }

    public Canzone(int idcanzone, String titolo, float durata) {
        this.idcanzone = idcanzone;
        this.titolo = titolo;
        this.durata = durata;
    }

    public int getIdcanzone() {
        return idcanzone;
    }

    public void setID(int idcanzone) {
        this.idcanzone = idcanzone;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public float getDurata() {
        return durata;
    }

    public void setDurata(float durata) {
        this.durata = durata;
    }

    @Override
    public String toString() {
        return "Canzone{" +
                "idcanzone=" + idcanzone +
                ", titolo='" + titolo + '\'' +
                ", durata=" + durata +
                '}';
    }
}
