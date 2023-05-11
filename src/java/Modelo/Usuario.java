/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import jakarta.servlet.http.HttpServletRequest;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author samue
 */
public class Usuario extends Persona{
    private String evento;
    
    public Usuario() {
    }

    public Usuario(String nombre, String apellido, String evento){
        super.setNombre(nombre);
        super.setApellido(apellido);
        this.evento = evento;
    }
    
    public Usuario(HttpServletRequest request) throws SQLException {
        super(request);
    }

    public Usuario(ResultSet resultSet) throws SQLException {
        super(resultSet);
    }
    
    public String getEvento() {
        return evento;
    }

    public void setEvento(String evento) {
        this.evento = evento;
    }
    
    
}
