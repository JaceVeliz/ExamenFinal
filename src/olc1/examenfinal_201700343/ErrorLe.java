/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package olc1.examenfinal_201700343;

/**
 *
 * @author Jace
 */
public class ErrorLe {
    String dato;
    String tipo;
    int columna;
    int fila;
    String descripcion;

    public ErrorLe(String dato, String tipo, int columna, int fila, String descripcion) {
        this.dato = dato;
        this.tipo = tipo;
        this.columna = columna;
        this.fila = fila;
        this.descripcion = descripcion;
    }

    
}
