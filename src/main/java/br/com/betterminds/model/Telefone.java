package br.com.betterminds.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "versao")
public class Telefone {

    @NotNull
    @Size(min = 2, max = 4)
    private String ddd;

    @NotNull
    @Size(min = 4, max = 5)
    private String prefixo;

    @NotNull
    @Size(min = 4, max = 5)
    private String numero;
    
    public String ToString()
    {
    	return String.format("(%s) %s-%s ", this.ddd, this.prefixo, this.numero);
    }
}
