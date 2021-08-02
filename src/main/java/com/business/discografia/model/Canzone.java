package com.business.discografia.model;

public class Canzone {

    private int ID;
    private String titolo;
    private float durata;

    public Canzone() {
    }

    public Canzone(String titolo, float durata) {
        this.titolo = titolo;
        this.durata = durata;
    }

    public Canzone(int ID, String titolo, float durata) {
        this.ID = ID;
        this.titolo = titolo;
        this.durata = durata;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
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
                "ID=" + ID +
                ", titolo='" + titolo + '\'' +
                ", durata=" + durata +
                '}';
    }
}
