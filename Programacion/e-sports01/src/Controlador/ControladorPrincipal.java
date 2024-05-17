package Controlador;

import Controlador.ControladorBD.ControladorBD;
import Controlador.ControladorVista.ControladorVista;

import Modelo.Competicion;
import Modelo.Equipo;
import Modelo.Jugador;
import Modelo.Usuario;


import Modelo.Equipo;
import Modelo.Usuario;

import java.time.LocalDate;
import java.util.ArrayList;

import java.util.List;

public class ControladorPrincipal {
    private ControladorVista cv;
    private ControladorBD cb;

    public ControladorPrincipal() throws Exception {
        cv = new ControladorVista(this);
        cb = new ControladorBD(this);
    }
    public Usuario buscarUsuario(String user) throws Exception {
        return cb.buscarUsuario(user);
    }

    public Integer cantidadEquipos() throws Exception {
        return cb.cantidadEquipos();
    }
    public List<Equipo> llenarEquipos() throws Exception {
        return cb.llenarEquipos();

    public Usuario crearJugador(String nombre, String primerApellido, String segundoApellido, Integer sueldo, String nacionalidad, LocalDate fechaNacimiento, String nickname, String rol , String equipo) throws Exception {
        return cb.crearJugador(nombre,primerApellido,segundoApellido,sueldo,nacionalidad,fechaNacimiento,nickname,rol,equipo);
    }

    public ArrayList selectEquipo(String nombre ) throws Exception {
        return cb.selectEquipo(nombre);

    }

    public List<Jugador> llenarJugadores(Integer x) throws Exception {
        return cb.llenarJugadores(x);
    }
    public List<Competicion> llenarCompeticiones() throws Exception {
        return cb.llenarCompeticiones();
    }
    public List<Equipo> llenarEquiposCompeticion(Integer x) throws Exception {
        return cb.llenarEquiposCompeticion(x);
    }
    public void generarCalendario() throws Exception {
        cb.generarCalendario();
    }
}
