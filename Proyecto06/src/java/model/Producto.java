/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Carlos
 */
public class Producto extends Conexion{
    private int prod_id;
    private String prod_name;
    private int prod_price;
    private String prod_desc;
    private int tprod_id;
    
    //CONSTRUCTORES
        public Producto() {
        }
        public Producto(int prod_id, String prod_name, int prod_price, String prod_desc, int tprod_id) {
        this.prod_id = prod_id;
        this.prod_name = prod_name;
        this.prod_price = prod_price;
        this.prod_desc = prod_desc;
        this.tprod_id = tprod_id;
    }
    //GETTERS
        public int getProd_id() {
                return prod_id;
            }
        public String getProd_name() {
                return prod_name;
            }
        public int getProd_price() {
                return prod_price;
            }
        public String getProd_desc() {
                return prod_desc;
            }
        public int getTprod_id() {
                return tprod_id;
            }
        public String getsSQL() {
                return sSQL;
            }
    //SETTERS
        public void setProd_id(int prod_id) {
                this.prod_id = prod_id;
            }
        public void setProd_name(String prod_name) {
                this.prod_name = prod_name;
            }
        public void setProd_price(int prod_price) {
                this.prod_price = prod_price;
            }
        public void setProd_desc(String prod_desc) {
                this.prod_desc = prod_desc;
            }
        public void setTprod_id(int tprod_id) {
                this.tprod_id = tprod_id;
            }
        public void setsSQL(String sSQL) {
                this.sSQL = sSQL;
            }

    //METODOS
    private String sSQL = "";
        //MOSTRAR PRODUCTOS:
        public void mostrar (ArrayList lista){
            sSQL = "SELECT * FROM tbl_product";
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sSQL);
                while (rs.next()){
                    Producto pro = new Producto();
                    pro.setProd_id(rs.getInt("prod_id"));
                    pro.setProd_name(rs.getString("prod_name"));
                    pro.setProd_price(rs.getInt("prod_price"));
                    pro.setProd_desc(rs.getString("prod_desc"));
                    pro.setTprod_id(rs.getInt("tprod_id"));
                    lista.add(pro);
                }
            }catch (Exception e){
            }
        }
}
