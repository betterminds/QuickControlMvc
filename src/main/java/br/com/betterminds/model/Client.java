package br.com.betterminds.model;

import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "versao")
public class Client {

    @OneToOne
    private Pessoa pessoa;

    @ManyToOne
    private Endereco endereco;

    @OneToOne
    private Telefone telefone;
}
