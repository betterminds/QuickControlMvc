package br.com.betterminds.model;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "versao")
public class Usuario {

    @NotNull
    @Size(max = 100)
    private String nome;

    @NotNull
    @Column(unique = true)
    @Size(min = 5, max = 20)
    private String usuario;
    
    @NotNull
    @Size(min = 5, max = 10)
    private String senha;

    @NotNull
    @Column(unique = true)  
    @Size(max = 40)
    private String email;
}
