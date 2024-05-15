package Controlador.ControladorVista;

import Modelo.Usuario;
import Vista.VentanaInicioSesion;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ControladorVLogin {
    private ControladorVista cv;
    private VentanaInicioSesion vsesion;
    private ControladorVP cvp;


    public ControladorVLogin(ControladorVista cv) {
        this.cv = cv;
    }

    public void crearMostrar() {
        vsesion = new VentanaInicioSesion();
        vsesion.setVisible(true);
        vsesion.addSesion(new BSesionAL());
        vsesion.addAyuda(new bAyudaAL());
        vsesion.addCerrar(new bCerrarAL());

    }
    public class BSesionAL implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            // Le dice al controlador de vista que la operación elegida es alta
            vsesion.dispose();
            cv.crearMostrarVP();

            /*try{
                String nombre = vsesion.getTextField1().getText();
                String password = vsesion.getTextField2().getText();

                if (nombre.isEmpty() || password.isEmpty())

                JOptionPane.showMessageDialog(null,"Los datos de entrada son obligatorios");

                String expresionRegular = "^[A-Za-z]{3,}$";
                Pattern patron = Pattern.compile(expresionRegular);
                Matcher matcher = patron.matcher(nombre);
                 if (!matcher.matches()) {
                    JOptionPane.showMessageDialog(null,"El nombre no tiene el formato adecuado");

                }
                expresionRegular = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[&+=!@#$%^])(?=\\S+$).{7,}$";
                patron = Pattern.compile(expresionRegular);
                matcher = patron.matcher(password);
                if (!matcher.matches())
                    JOptionPane.showMessageDialog(null,"La contraseña no tiene el formato adecuado" +
                            " \n recuerda que tiene que tener al menos 7 caracteres" +
                            " \n una mayuscula" +
                            "\n un numero " +
                            "\n y un caracter especial");
                Usuario user = cv.buscarUsuario(nombre);
                  //  if (user.getTipo()=="administrador")


            }catch (Exception ex){

            }

             */


        }
    }


    public class bAyudaAL implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            JOptionPane.showMessageDialog(null,"Bienvenido a la ayuda \n Contacta con nosotros atraves de esta gmail \n egibide@gmail.org");
        }
    }

    public class bCerrarAL implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent e) {
            vsesion.dispose();
        }
    }


}
