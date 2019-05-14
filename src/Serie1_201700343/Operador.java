/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Serie1_201700343;

/**
 *
 * @author Jace
 */
public class Operador {
    double valor;
    String tipo;
    String dato;
    String postfija;
    String Resultado;

    public Operador(double valor, String tipo,String dato ,String Resultado, String postfija) {
        this.valor = valor;
        this.tipo = tipo;
        this.postfija = postfija;
        this.Resultado = Resultado;
        this.dato=dato;
        
    }
    public Operador(){
         this.valor = 0;
        this.tipo = "";
        this.dato="";
        this.postfija = "";
        this.Resultado = "";
    }
}
