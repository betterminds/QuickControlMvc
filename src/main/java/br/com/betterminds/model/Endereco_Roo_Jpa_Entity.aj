// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Endereco;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Endereco_Roo_Jpa_Entity {
    
    declare @type: Endereco: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Endereco.id;
    
    @Version
    @Column(name = "versao")
    private Integer Endereco.versao;
    
    public Long Endereco.getId() {
        return this.id;
    }
    
    public void Endereco.setId(Long id) {
        this.id = id;
    }
    
    public Integer Endereco.getVersao() {
        return this.versao;
    }
    
    public void Endereco.setVersao(Integer version) {
        this.versao = version;
    }
    
}