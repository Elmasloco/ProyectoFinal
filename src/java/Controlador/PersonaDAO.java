/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Administrador;
import java.sql.*;
import Modelo.Persona;
import Modelo.Usuario;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author samue
 */
public class PersonaDAO {
//?useSSL=false

    private Connection conectar;
    private PreparedStatement ps;
    private Statement st;
    private ResultSet rs;

    public Connection conexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conectar = DriverManager.getConnection("jdbc:mysql://localhost:3307/proyectofinaldb", "root", "");
            System.out.println("Conexion exitosa");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar a la bases datos");
            System.out.println("Error: " + e.getMessage());
        }
        return conectar;
    }

    public void cerrarConexion() throws SQLException {
        conectar.close();
        if (ps != null) {
            ps.close();
        }
        if (st != null) {
            st.close();
        }
        System.out.println("Conexion cerrada");
    }

    public void insertar(Persona persona) {
        String sql = "INSERT INTO proyectofinaldb.registros(nombre,apellido,edad,genero,documento,tipoDoc,Rol) VALUES (?,?,?,?,?,?,?)";
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            ps = conectar.prepareStatement(sql);
            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setInt(3, persona.getEdad());
            ps.setString(4, persona.getGenero());
            ps.setInt(5, persona.getIdentificacion());
            ps.setString(6, persona.getTipoIdentificacion());
            ps.setString(7, persona.getTipoRol());
            int resultId = ps.executeUpdate();
            System.out.println("Se inserto el ID: " + resultId);
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al insertar en la tabla");
            System.out.println("Error:" + e.getMessage());
        }
    }

    public void insertarUser(Usuario user) {
        String sql = "INSERT INTO proyectofinaldb.eventos(nombres,apellidos,evento) VALUES (?,?,?)";
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            ps = conectar.prepareStatement(sql);
            ps.setString(1, user.getNombre());
            ps.setString(2, user.getApellido());
            ps.setString(3, user.getEvento());
            int resultId = ps.executeUpdate();
            System.out.println("Se inserto el ID: " + resultId);
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al insertar en la tabla");
            System.out.println("Error:" + e.getMessage());
        }
    }
    
    public void insertarAdmin(Administrador admin) {
        String sql = "INSERT INTO proyectofinaldb.admins(nombre,apellido,cargo) VALUES (?,?,?)";
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            ps = conectar.prepareStatement(sql);
            ps.setString(1, admin.getNombre());
            ps.setString(2, admin.getApellido());
            ps.setString(3, admin.getCargo());
            int resultId = ps.executeUpdate();
            System.out.println("Se inserto el ID: " + resultId);
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al insertar en la tabla");
            System.out.println("Error:" + e.getMessage());
        }
    }

    public ArrayList<HashMap> listar() {
        String sql = "SELECT * FROM registros";
        ArrayList<HashMap> resultado = new ArrayList<>();
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            st = conectar.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Persona persona = new Persona(rs);
                resultado.add(persona.toHashMap());
            }
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al leer registros: " + e);
        }
        return resultado;
    }

    public HashMap buscar(int id) {
        String busca = "SELECT * FROM registros WHERE id=" + id;
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            st = conectar.createStatement();
            rs = st.executeQuery(busca);
            if (rs.next()) {
                Persona persona = new Persona(rs);
                return persona.toHashMap();
            }
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al buscar registro: " + e);
        }
        return null;
    }

    public void eliminar(int id) {
        String elimina = "DELETE FROM registros WHERE id=" + id;
        String busca = "SELECT * FROM registros WHERE id=" + id;
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            st = conectar.createStatement();
            rs = st.executeQuery(busca);
            if (rs.next()) {
                st.executeUpdate(elimina);
                System.out.println("Registro eliminado");
            } else {
                System.out.println("Registro no encontrado");
            }
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al eliminar registro: " + e);
        }
    }

    public void eliminarAdmin(int id) {
        String elimina = "DELETE FROM admins WHERE id=" + id;
        String busca = "SELECT * FROM admins WHERE id=" + id;
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            st = conectar.createStatement();
            rs = st.executeQuery(busca);
            if (rs.next()) {
                st.executeUpdate(elimina);
                System.out.println("Registro eliminado");
            } else {
                System.out.println("Registro no encontrado");
            }
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al eliminar registro: " + e);
        }
    }

    public void actualizar(Persona persona) {
        if (persona.getId() == -1) {
            return;
        }

        String sql = "UPDATE proyectofinaldb.registros SET nombre=?,apellido=?,edad=?,genero=?,documento=?,tipoDoc=?,Rol=? WHERE id=" + persona.getId();
        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            ps = conectar.prepareStatement(sql);
            System.out.println("Nombre persona: " + persona.getNombre());
            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setInt(3, persona.getEdad());
            ps.setString(4, persona.getGenero());
            ps.setInt(5, persona.getIdentificacion());
            ps.setString(6, persona.getTipoIdentificacion());
            ps.setString(7, persona.getTipoRol());

            int resultId = ps.executeUpdate();
            System.out.println("Se modifico el ID: " + resultId);
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al actualizar registro: " + e);
        }
    }

    public boolean ingreso(int id) {
        boolean acceso = false;
        String buscaId = "SELECT * FROM admins WHERE id=" + id;

        try {
            conexion();
            if (conectar == null) {
                throw new SQLException("missing connection");
            }
            System.out.println("ACCESO 1: "+acceso);
            st = conectar.createStatement();
            rs = st.executeQuery(buscaId);
            if (rs.next()) {
                    acceso = true;
                    System.out.println("ACCESO 2: "+acceso);
                    return acceso;
            }
            cerrarConexion();
        } catch (SQLException e) {
            System.out.println("Error al buscar registro: " + e);
        }
        System.out.println("ACCESO 3: "+acceso);
        return acceso;

    }

}
