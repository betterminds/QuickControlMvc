package br.com.betterminds.model;

import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "versao")
public class Endereco {

    @NotNull
    @Size(max = 100)
    private String logradouro;

    @NotNull
    private Integer numero;

    @OneToOne
    private Telefone telefone;
}
