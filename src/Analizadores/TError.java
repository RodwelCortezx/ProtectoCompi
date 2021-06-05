/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizadores;



/**
 *
 * @author RODWELL
 */
public class TError {
    String lexema, tipo, descripcion;
    int line, columna;
    
    public TError(String le, int li, int co, String t, String de){
        this.lexema = le;
        this.line = li;
        this.columna = co;
        this.tipo = t;
        this.descripcion = de;
                
    }
    
}
