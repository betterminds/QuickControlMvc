// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Telefone;

privileged aspect Telefone_Roo_JavaBean {
    
    public String Telefone.getDdd() {
        return this.ddd;
    }
    
    public void Telefone.setDdd(String ddd) {
        this.ddd = ddd;
    }
    
    public String Telefone.getPrefixo() {
        return this.prefixo;
    }
    
    public void Telefone.setPrefixo(String prefixo) {
        this.prefixo = prefixo;
    }
    
    public String Telefone.getNumero() {
        return this.numero;
    }
    
    public void Telefone.setNumero(String numero) {
        this.numero = numero;
    }
    
}