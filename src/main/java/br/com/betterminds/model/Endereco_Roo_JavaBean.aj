// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Endereco;
import br.com.betterminds.model.Telefone;

privileged aspect Endereco_Roo_JavaBean {
    
    public String Endereco.getLogradouro() {
        return this.logradouro;
    }
    
    public void Endereco.setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }
    
    public Integer Endereco.getNumero() {
        return this.numero;
    }
    
    public void Endereco.setNumero(Integer numero) {
        this.numero = numero;
    }
    
    public Telefone Endereco.getTelefone() {
        return this.telefone;
    }
    
    public void Endereco.setTelefone(Telefone telefone) {
        this.telefone = telefone;
    }
    
}