package Controlador.ControladorVista;

import Controlador.ControladorPrincipal;

import Modelo.*;


import Modelo.Equipo;
import Modelo.Usuario;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import java.util.List;

public class ControladorVista {

    private ControladorPrincipal cp;
    private ControladorVUsuario cvu;
    private ControladorVLogin cvlogin;
    private ControladorVEditar cveditar;
    private ControladorVP cvp;
    private ControladorVPatrocinador cvpatrocinador;
    private ControladorVEquipo cvequipo;
    private ControladorVJugador cvjugador;
    private ControladorVJuego cvjuego;
    private ControladorVStaff cvstaff;
    private ControladorVConsultas cvconsultas;
    private ControladorVCompeticion cvcompeticion;


    public ControladorVista(ControladorPrincipal cp) throws Exception {
        this.cp = cp;
        cvlogin = new ControladorVLogin(this);
        cvlogin.crearMostrar();
        cvp=new ControladorVP(this);
    }

    public void crearMostrarVP() {
        cvp.crearMostrar();
    }
    public void crearMostrarEditar() {
        cveditar=new ControladorVEditar(this);
        cveditar.crearMostrar();
    }
    public void crearMostrarPatrocinador() {
        cvpatrocinador=new ControladorVPatrocinador(this);
        cvpatrocinador.crearMostrar();
    }
    public void crearConsultas() {
        cvconsultas=new ControladorVConsultas(this);
        cvconsultas.crearMostrar();
    }
    public void crearMostrarEquipos() throws Exception {
        cvequipo=new ControladorVEquipo(this);
        cvequipo.crearMostrar();
    }
    public void crearMostrarUsuario() {
        cvu=new ControladorVUsuario(this);
        cvu.crearMostrarUsuario();
    }
    public void crearMostrarJugadores() {
        cvjugador=new ControladorVJugador(this);
        cvjugador.crearMostrar();
    }
    public void crearMostrarEntrenador() {
        cvjugador=new ControladorVJugador(this);
        cvjugador.crearMostrar();
    }
    public void crearMostrarJuegos() {
        cvjuego=new ControladorVJuego(this);
        cvjuego.crearMostrar();
    }
    public void crearMostrarStaff() {
        cvstaff=new ControladorVStaff(this);
        cvstaff.crearMostrar();
    }
    public void crearMostrarCompeticiones() {
        cvcompeticion=new ControladorVCompeticion(this);
        cvcompeticion.crearMostrar();
    }

    public Usuario buscarUsuario(String user, String password) throws Exception {
        return cp.buscarUsuario(user, password);
    }

    public Integer cantidadEquipos() throws Exception {
        return cp.cantidadEquipos();
    }
    public List<Equipo> llenarEquipos() throws Exception {
        return cp.llenarEquipos();
    }
    public List<Jugador> llenarJugadores(Integer x) throws Exception {
        return cp.llenarJugadores(x);
    }
    public List<Competicion> llenarCompeticiones() throws Exception {
        return cp.llenarCompeticiones();
    }
    public List<Equipo> llenarEquiposCompeticion(Integer x) throws Exception {
        return cp.llenarEquiposCompeticion(x);
    }
    public void generarCalendario() throws Exception {
        cp.generarCalendario();
    }

    public Usuario crearJugador(String nombre, String primerApellido, String segundoApellido, Integer sueldo, String nacionalidad, LocalDate fechaNacimiento, String nickname, String rol , String equipo) throws Exception {
         cp.crearJugador(nombre,primerApellido,segundoApellido,sueldo,nacionalidad,fechaNacimiento,nickname,rol,equipo);
        return null;
    }
    public ArrayList selectEquipo(String nombre ) throws Exception {
        return cp.selectEquipo(nombre);
    }
    public List<Juego> buscarJuegos() throws SQLException {return cp.buscarJuegos();}
    public Juego buscarJuego(String nombre) throws Exception{return cp.buscarJuego(nombre);}
    public void insertarCompeticion(Competicion c) throws Exception{cp.insertarCompeticion(c);}
    public List<String> buscarCompeticiones() throws SQLException {return cp.buscarCompeticiones();}

    public List<Jugador> llenarJugadoresNombre(String equiposelecionado) throws SQLException
    {
        return  cp.llenarJugadoresNombre(equiposelecionado);
    }
    public List<String> buscarPatrocinador() throws SQLException {
        return cp.buscarPatrocinador();
    }
    public void eliminarJugador(String nombre,String equipo) throws Exception {
        cp.eliminarJugador(nombre,equipo);
    }
    public Usuario crearUsuario(String nombre,String contrasena,String tipoUsuario) throws Exception {
        cp.crearUsuario(nombre,contrasena, tipoUsuario);
        return null;
    }

    public Jugador actualizarJugador(String nombre, String equipo) throws Exception {
        cp.actualizarJugador( nombre, equipo);
        Jugador buscarDatos = cp.actualizarJugador(nombre, equipo);

        return buscarDatos;
    }

    public void editarJugadorConfir(String nombre,String primerApellido,String segundoApellido,double sueldo,String nacionalidad,LocalDate fechaNacimiento,String nickname,String rol,String nuevoEquipo,String nombreAntiguo,String equipoAntiguo) throws Exception {


        cp.editarJugadorConfir(nombre, primerApellido, segundoApellido, sueldo, nacionalidad, fechaNacimiento, nickname, rol, nuevoEquipo,nombreAntiguo,equipoAntiguo);
    }

    public void nombreequipo(String nombre){
        cvjugador.nombreEquipo(nombre);
    }
    public void borrarEquipo(String nombre) throws SQLException {
        cp.borrarEquipo(nombre);
    }



    public List<Jugador> llenarJugadoresS(String tipo) throws Exception {
        cp.llenarJugadoresS(tipo);
        List<Jugador> listaJugadores = cp.llenarJugadoresS(tipo);
        return listaJugadores;
    }
    public List<Equipo> llenarEquiposS(String tipo) throws Exception {
        cp.llenarEquiposS(tipo);
        List<Equipo> listaEquipo = cp.llenarEquiposS(tipo);
        return listaEquipo;
    }
    public List<Entrenador> llenarEntrenador(String tipo) throws Exception {
        cp.llenarEntrenador(tipo);
        List<Entrenador> listaEntrenador = cp.llenarEntrenador(tipo);
        return listaEntrenador;
    }
    public List<Asistente> llenarAsistente(String tipo) throws Exception {
        cp.llenarAsistente(tipo);
        List<Asistente> listaAsistente = cp.llenarAsistente(tipo);
        return listaAsistente;
    }
    public List<Competicion> llenarCompeticion(String tipo) throws Exception {
        cp.llenarCompeticion(tipo);
        List<Competicion> listaCompeticion = cp.llenarCompeticion(tipo);
        return listaCompeticion;
    }
    public List<Juego> llenarJuegos(String tipo) throws Exception {
        cp.llenarJuegos(tipo);
        List<Juego> listaJuego = cp.llenarJuegos(tipo);
        return listaJuego;
    }


    public void crearEquipo(String nombre, LocalDate fecha, String patrocinador, String competicion) throws Exception {
        cp.crearEquipo(nombre, fecha, patrocinador,competicion);
    }



}
