/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Carlos
 */
public class Cliente extends Conexion{
    private int user_id;
    private String user_name;
    private String user_surname;
    private String user_mail;
    private String user_pass;
    
    //CONSTRUCTORES:
        public Cliente() {
        }
        public Cliente(int user_id, String user_name, String user_surname, String user_mail, String user_pass) {
            this.user_id = user_id;
            this.user_name = user_name;
            this.user_surname = user_surname;
            this.user_mail = user_mail;
            this.user_pass = user_pass;
        }
    
    //GETTERS:
        public int getUser_id() {
        return user_id;
    }
        public String getUser_name() {
        return user_name;
    }
        public String getUser_surname() {
        return user_surname;
    }
        public String getUser_mail() {
        return user_mail;
    }
        public String getUser_pass() {
        return user_pass;
    }
    //SETTERS:
        public void setUser_id(int user_id) {
            this.user_id = user_id;
        }
        public void setUser_name(String user_name) {
            this.user_name = user_name;
        }
        public void setUser_surname(String user_surname) {
            this.user_surname = user_surname;
        }
        public void setUser_mail(String user_mail) {
            this.user_mail = user_mail;
        }
        public void setUser_pass(String user_pass) {
            this.user_pass = user_pass;
        }
        
    //METODOS:
        private String sSQL = "";
        //VERIFICACION DEL LOGIN
        public boolean Autenticacion (String mail, String pass) throws SQLException{
            Statement st = con.createStatement();
            String Consulta = "SELECT * FROM tbl_user";
            ResultSet rs = st.executeQuery(Consulta);
            while(rs.next()){
                Cliente cli_1 = new Cliente ();
                //ASIGNAR PROPIEDADES AL OBJETO DEL RESULTADO DE LA CONSULTA A LA BDD.
                //EL MAIL
                cli_1.setUser_mail(rs.getString("user_mail"));
                //EL PASSWORD
                cli_1.setUser_pass(rs.getString("user_pass"));

                //COMPARATIVA DE QUE SEAN IGUALES QUE LO QUE EL USUARIO HA INTRODUCIDO.
                if(mail.equals(cli_1.getUser_mail()) && pass.equals(cli_1.getUser_pass()))
                    return true;
            }
            return false;
        }
        
        //INSERCION DE UN NUEVO USUARIO
        public boolean Insertar (Cliente cli){
            sSQL = "INSERT INTO tbl_user (user_mail, user_name, user_pass, user_surname) VALUES (?,?,?,?)";
            try {
                PreparedStatement pst = con.prepareStatement(sSQL);
                pst.setString(1, cli.getUser_mail());
                pst.setString(2, cli.getUser_name());
                pst.setString(3, cli.getUser_pass());
                pst.setString(4, cli.getUser_surname());

                int n = pst.executeUpdate();
                if(n != 0){
                    return true;
                }else{
                    return false;
                }
                
            }catch(SQLException e){
                return false;
            }catch (Exception e){
                return false;
            }
        }
        
        //MOSTRAR USUARIO:
        public void mostrar (ArrayList lista){
            sSQL = "SELECT * FROM tbl_user";
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sSQL);
                while (rs.next()){
                    Cliente cli = new Cliente();
                    cli.setUser_id(rs.getInt("User_id"));
                    cli.setUser_name(rs.getString("User_name"));
                    cli.setUser_surname(rs.getString("User_surname"));
                    cli.setUser_mail(rs.getString("User_mail"));
                    cli.setUser_pass(rs.getString("User_pass"));
                    lista.add(cli);
                }
            }catch (Exception e){
            }
        
        
        
        
        }
}
