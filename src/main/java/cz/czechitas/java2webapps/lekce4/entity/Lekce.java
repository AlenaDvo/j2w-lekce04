package cz.czechitas.java2webapps.lekce4.entity;

import java.time.LocalDate;
import java.time.LocalTime;

public class Lekce {
    private String nazev;
    private LocalDate datum;
    private LocalTime casZacatku;

    private LocalTime casKonce;
    private String misto;

    public Lekce(String nazev, LocalDate datum, LocalTime casZacatku, LocalTime casKonce, String misto) {
        this.nazev = nazev;
        this.datum = datum;
        this.casZacatku = casZacatku;
        this.casKonce = casKonce;
        this.misto = misto;
    }

    public Lekce() {
    }

    public String getNazev() {
        return nazev;
    }

    public void setNazev(String nazev) {
        this.nazev = nazev;
    }

    public LocalDate getDatum() {
        return datum;
    }

    public void setDatum(LocalDate datum) {
        this.datum = datum;
    }

    public LocalTime getCasZacatku() {
        return casZacatku;
    }

    public void setCasZacatku(LocalTime casZacatku) {
        this.casZacatku = casZacatku;
    }

    public LocalTime getCasKonce() {
        return casKonce;
    }

    public void setCasKonce(LocalTime casKonce) {
        this.casKonce = casKonce;
    }

    public String getMisto() {
        return misto;
    }

    public void setMisto(String misto) {
        this.misto = misto;
    }
}
