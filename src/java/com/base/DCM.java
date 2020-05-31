/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ilyas
 */
public class DCM {
    public static Connection getConnection() {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            //Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", user, pass);
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "southernauto", "NTIC");
            return connection;
        } catch (Exception ex) {
            Logger.getLogger(DCM.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    public static ResultSet Select_request(String req){
        try{
            Connection c=getConnection();
            Statement st= c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ResultSet rs= st.executeQuery(req);
            return rs;
        }catch(Exception e){
            return null;
            
        }
    }
    public static boolean AMS_request(String req){
        try{
            Connection c=getConnection();
            Statement st= c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            st.executeQuery(req);
            return true;
            
        }catch(Exception e){
            return false;
            
        }
    }
}