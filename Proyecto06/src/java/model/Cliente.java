/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Carlos
 */
public class Cliente {
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
        
    


    
    
    
    
    
    
}
