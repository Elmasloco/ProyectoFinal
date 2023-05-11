/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import jakarta.servlet.http.HttpServletRequest;
import java.sql.*;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author samue
 */
public class Persona {

    private int id;
    private String nombre;
    private String apellido;
    private int edad;
    private String genero;
    private int identificacion;
    private String tipoIdentificacion;
    private String tipoRol;

    public Persona() {
    }

    public Persona(HttpServletRequest request) throws SQLException {
        if (request.getParameter("id") != null && !request.getParameter("id").isBlank()) {
            this.id = Integer.parseInt(request.getParameter("id"));
        } else {
            this.id = -1;
        }

        this.nombre = request.getParameter("nombre");
        this.apellido = request.getParameter("apellido");
        this.edad = Integer.parseInt(request.getParameter("edad"));
        this.genero = request.getParameter("genero");
        this.identificacion = Integer.parseInt(request.getParameter("identificacion"));
        this.tipoIdentificacion = request.getParameter("tipoIdentificacion");
        this.tipoRol = request.getParameter("tipoRol");
    }

    public Persona(ResultSet resultSet) throws SQLException {
        this.id = resultSet.getInt("id");
        this.nombre = resultSet.getString("nombre");
        this.apellido = resultSet.getString("apellido");
        this.edad = resultSet.getInt("edad");
        this.genero = resultSet.getString("genero");
        this.identificacion = resultSet.getInt("documento");
        this.tipoIdentificacion = resultSet.getString("tipoDoc");
        this.tipoRol = resultSet.getString("Rol");
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }

    public String getTipoIdentificacion() {
        return tipoIdentificacion;
    }

    public void setTipoIdentificacion(String tipoIdentificacion) {
        this.tipoIdentificacion = tipoIdentificacion;
    }

    public String getTipoRol() {
        return tipoRol;
    }

    public void setTipoRol(String tipoRol) {
        this.tipoRol = tipoRol;
    }
    
    public HashMap toHashMap() {
        HashMap persona = new HashMap();

        persona.put("id", this.id);
        persona.put("nombre", this.nombre);
        persona.put("apellido", this.apellido);
        persona.put("edad", this.edad);
        persona.put("genero", this.genero);
        persona.put("documento", this.identificacion);
        persona.put("tipoDoc", this.tipoIdentificacion);
        persona.put("Rol", this.tipoRol);

        return persona;
    }

    @Override
    public String toString() {
        return "{ "
                + "nombre: " + this.nombre + ","
                + "apellido: " + this.apellido + ","
                + "edad: " + this.edad + ","
                + "genero: " + this.genero + ","
                + "identificacion: " + this.identificacion + ","
                + "tipoDoc: " + this.tipoIdentificacion + ","
                + "tipoRol: " + this.tipoRol
                + " }";
    }

}
