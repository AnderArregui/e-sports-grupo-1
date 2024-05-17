package Modelo;

import java.time.LocalDate;
import java.util.List;

public class Competicion {


    private LocalDate fechaInicio;
    private  LocalDate fechaFin;
    private String estado;
    private Integer idCompeticion;
    private String nombre;
    private List<Jornada> listaJornada;
    private Juego juego;


    public Competicion(Integer idCompeticion, String nombre, LocalDate fechaInicio, LocalDate fechaFin, String estado, Juego juego) {

        this.idCompeticion = idCompeticion;
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.estado = estado;
        this.juego = juego;
    }

    public Competicion(LocalDate fechaInicio, LocalDate fechaFin, String estado, String nombre, Juego juego) {
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.estado = estado;
        this.nombre = nombre;
        this.juego = juego;
    }

    public LocalDate getFechaInicio() {
        return fechaInicio;
    }

    private void setFechaInicio(LocalDate fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public LocalDate getFechaFin() {
        return fechaFin;
    }

    private void setFechaFin(LocalDate fechaFin) {
        this.fechaFin = fechaFin;
    }

    private Integer getIdCompeticion() {
        return idCompeticion;
    }

    private void setIdCompeticion(Integer idCompeticion) {
        this.idCompeticion = idCompeticion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public List<Jornada> getListaJornada() {
        return listaJornada;
    }

    public void setListaJornada(List<Jornada> listaJornada) {
        this.listaJornada = listaJornada;
    }

    public Juego getJuego() {
        return juego;
    }

    public void setJuego(Juego juego) {
        this.juego = juego;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}