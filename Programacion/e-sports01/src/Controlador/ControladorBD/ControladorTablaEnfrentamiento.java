package Controlador.ControladorBD;

import Modelo.Enfrentamiento;
import Modelo.Equipo;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControladorTablaEnfrentamiento {
    private Connection con;
    public ControladorTablaEnfrentamiento(Connection con) {
        this.con = con;
    }
    public List<Enfrentamiento> buscarEnfrentamientos(Integer idJorComp) throws Exception {
        List<Enfrentamiento> enfrentamientos = new ArrayList<>();
        String sql = "SELECT id_enf_jor, id_jor_comp, id_enfrentamiento, hora, id_local, id_visitante FROM enfrentamiento WHERE id_jor_comp = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        System.out.println(idJorComp + " dentro");
        ps.setInt(1, idJorComp);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            System.out.println(rs.getInt("id_local")+ "idLocall");
            System.out.println(rs.getInt("ID_VISITANTE") + "idVisitantee");
            Enfrentamiento enfrentamiento = new Enfrentamiento();
            enfrentamiento.setIdEnfrentamiento(rs.getInt("id_enfrentamiento"));
            enfrentamiento.setIdEnfJor(rs.getInt("id_enf_jor"));
            enfrentamiento.setIdJorComp(rs.getInt("id_jor_comp"));
            enfrentamiento.setHora(rs.getString("hora"));
            // enfrentamiento.setResultadoLocal(rs.getInt("resultado_local"));
            // enfrentamiento.setResultadoVisitante(rs.getInt("resultado_visitante"));

            Integer idLocal = rs.getInt("id_local");
            Integer idVisitante = rs.getInt("id_visitante");

            System.out.println("ID Local: " + idLocal);
            System.out.println("ID Visitante: " + idVisitante);

            /* Aquí se supone que tienes métodos para buscar equipos por su ID
            Equipo equipoLocal = ctequipo.buscarEquipo(idLocal);

            Equipo equipoVisitante = ctequipo.buscarEquipo(idVisitante);

            if (equipoLocal != null && equipoVisitante != null) {
                enfrentamiento.setEquipoUno(equipoLocal);
                enfrentamiento.setEquipoDos(equipoVisitante);

                System.out.println(equipoLocal.getNombre() + " dentro, dentro");
                System.out.println(equipoVisitante.getNombre() + " dentro, dentro");
            } else {
                System.out.println("No se encontró uno de los equipos para el enfrentamiento: " + enfrentamiento.getIdEnfrentamiento());
            }

             */

            enfrentamientos.add(enfrentamiento);
        }
        rs.close();
        ps.close();

        return enfrentamientos;
    }


    public Integer llenarLocal(Integer id_enf_jor) throws Exception {
        Integer id_equipo = null;
        System.out.println(id_enf_jor + " el id_enf_jorrr");
        String plantilla = "SELECT id_local FROM enfrentamiento WHERE id_enf_jor = ?";
        PreparedStatement statement = con.prepareStatement(plantilla);
        statement.setInt(1, id_enf_jor);
        ResultSet rs = statement.executeQuery();

        if (rs.next()) {
            id_equipo = rs.getInt("id_local");
            System.out.println(id_equipo); // Imprime el valor de id_local
        }

        rs.close(); // Cierra el ResultSet
        statement.close(); // Cierra el PreparedStatement
        return id_equipo;
    }

    public Integer llenarVisitante(Integer id_enf_jor) throws Exception {
        Integer id_equipo = null;

        String plantilla = "SELECT id_visitante FROM enfrentamiento WHERE id_enf_jor = ?";
        PreparedStatement statement = con.prepareStatement(plantilla);
        statement.setInt(1, id_enf_jor);
        ResultSet rs = statement.executeQuery();

        if (rs.next()) {
            id_equipo = rs.getInt("id_visitante");
            System.out.println(id_equipo); // Imprime el valor de id_visitante
        }

        rs.close(); // Cierra el ResultSet
        statement.close(); // Cierra el PreparedStatement
        return id_equipo;
    }

    public void guardarResultados(int idEnfJor, int resultadoLocal, int resultadoVisitante) throws Exception {
        String plantilla = "UPDATE enfrentamiento SET resultado_local = ?, resultado_visitante = ? WHERE id_enf_jor = ?";

        PreparedStatement statement = con.prepareStatement(plantilla);

        statement.setInt(1, resultadoLocal);
        statement.setInt(2, resultadoVisitante);
        statement.setInt(3, idEnfJor);
        statement.executeUpdate();
        statement.close();
        System.out.println("resultados actualizados correctamente");

    }

    public void llenarResultados(JTextField resultadoLocal, JTextField resultadoVisitante, int idEnfJor) {
        try {
            String plantilla = "SELECT resultado_local, resultado_visitante FROM enfrentamiento WHERE id_enf_jor = ?";
            PreparedStatement statement = con.prepareStatement(plantilla);
            statement.setInt(1, idEnfJor);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                int resLocal = rs.getInt("resultado_local");
                int resVisitante = rs.getInt("resultado_visitante");

                // Si los resultados no están definidos, mostramos "?"
                if (rs.wasNull()) {
                    resultadoLocal.setText("?");
                    resultadoVisitante.setText("?");
                } else {
                    resultadoLocal.setText(String.valueOf(resLocal));
                    resultadoVisitante.setText(String.valueOf(resVisitante));
                }
            } else {
                resultadoLocal.setText("?");
                resultadoVisitante.setText("?");
            }

            rs.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}