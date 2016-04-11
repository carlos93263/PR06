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
public class Administrador {
    private int admin_id;
    private String admin_user;
    private String admin_pass;
    private String admin_mail;
    
    //CONSTRUCTORES
        public Administrador() {
        }
        public Administrador(String admin_user, String admin_pass, String admin_mail) {
            this.admin_user = admin_user;
            this.admin_pass = admin_pass;
            this.admin_mail = admin_mail;
        }
    
    //GETTERS
        public int getAdmin_id() {
            return admin_id;
        }

        public String getAdmin_user() {
            return admin_user;
        }

        public String getAdmin_pass() {
            return admin_pass;
        }

        public String getAdmin_mail() {
            return admin_mail;
        }
    
    //SETTERS
        public void setAdmin_id(int admin_id) {
            this.admin_id = admin_id;
        }

        public void setAdmin_user(String admin_user) {
            this.admin_user = admin_user;
        }

        public void setAdmin_pass(String admin_pass) {
            this.admin_pass = admin_pass;
        }

        public void setAdmin_mail(String admin_mail) {
            this.admin_mail = admin_mail;
        }
        
    
    
    
    
    
    
    
    
    
    
}
