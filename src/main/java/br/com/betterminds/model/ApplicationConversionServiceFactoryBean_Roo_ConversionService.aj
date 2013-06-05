// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.ApplicationConversionServiceFactoryBean;
import br.com.betterminds.model.Client;
import br.com.betterminds.model.Endereco;
import br.com.betterminds.model.Pessoa;
import br.com.betterminds.model.Telefone;
import br.com.betterminds.model.Usuario;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Client, String> ApplicationConversionServiceFactoryBean.getClientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<br.com.betterminds.model.Client, java.lang.String>() {
            public String convert(Client client) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Client> ApplicationConversionServiceFactoryBean.getIdToClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, br.com.betterminds.model.Client>() {
            public br.com.betterminds.model.Client convert(java.lang.Long id) {
                return Client.findClient(id);
            }
        };
    }
    
    public Converter<String, Client> ApplicationConversionServiceFactoryBean.getStringToClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, br.com.betterminds.model.Client>() {
            public br.com.betterminds.model.Client convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Client.class);
            }
        };
    }
    
    public Converter<Endereco, String> ApplicationConversionServiceFactoryBean.getEnderecoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<br.com.betterminds.model.Endereco, java.lang.String>() {
            public String convert(Endereco endereco) {
                return new StringBuilder().append(endereco.getLogradouro()).append(' ').append(endereco.getNumero()).toString();
            }
        };
    }
    
    public Converter<Long, Endereco> ApplicationConversionServiceFactoryBean.getIdToEnderecoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, br.com.betterminds.model.Endereco>() {
            public br.com.betterminds.model.Endereco convert(java.lang.Long id) {
                return Endereco.findEndereco(id);
            }
        };
    }
    
    public Converter<String, Endereco> ApplicationConversionServiceFactoryBean.getStringToEnderecoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, br.com.betterminds.model.Endereco>() {
            public br.com.betterminds.model.Endereco convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Endereco.class);
            }
        };
    }
    
    public Converter<Pessoa, String> ApplicationConversionServiceFactoryBean.getPessoaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<br.com.betterminds.model.Pessoa, java.lang.String>() {
            public String convert(Pessoa pessoa) {
                return new StringBuilder().append(pessoa.getNome()).toString();
            }
        };
    }
    
    public Converter<Long, Pessoa> ApplicationConversionServiceFactoryBean.getIdToPessoaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, br.com.betterminds.model.Pessoa>() {
            public br.com.betterminds.model.Pessoa convert(java.lang.Long id) {
                return Pessoa.findPessoa(id);
            }
        };
    }
    
    public Converter<String, Pessoa> ApplicationConversionServiceFactoryBean.getStringToPessoaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, br.com.betterminds.model.Pessoa>() {
            public br.com.betterminds.model.Pessoa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pessoa.class);
            }
        };
    }
    
    public Converter<Telefone, String> ApplicationConversionServiceFactoryBean.getTelefoneToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<br.com.betterminds.model.Telefone, java.lang.String>() {
            public String convert(Telefone telefone) {
                return new StringBuilder().append(telefone.getDdd()).append(' ').append(telefone.getPrefixo()).append(' ').append(telefone.getNumero()).toString();
            }
        };
    }
    
    public Converter<Long, Telefone> ApplicationConversionServiceFactoryBean.getIdToTelefoneConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, br.com.betterminds.model.Telefone>() {
            public br.com.betterminds.model.Telefone convert(java.lang.Long id) {
                return Telefone.findTelefone(id);
            }
        };
    }
    
    public Converter<String, Telefone> ApplicationConversionServiceFactoryBean.getStringToTelefoneConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, br.com.betterminds.model.Telefone>() {
            public br.com.betterminds.model.Telefone convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Telefone.class);
            }
        };
    }
    
    public Converter<Usuario, String> ApplicationConversionServiceFactoryBean.getUsuarioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<br.com.betterminds.model.Usuario, java.lang.String>() {
            public String convert(Usuario usuario) {
                return new StringBuilder().append(usuario.getNome()).append(' ').append(usuario.getUsuario()).append(' ').append(usuario.getSenha()).append(' ').append(usuario.getEmail()).toString();
            }
        };
    }
    
    public Converter<Long, Usuario> ApplicationConversionServiceFactoryBean.getIdToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, br.com.betterminds.model.Usuario>() {
            public br.com.betterminds.model.Usuario convert(java.lang.Long id) {
                return Usuario.findUsuario(id);
            }
        };
    }
    
    public Converter<String, Usuario> ApplicationConversionServiceFactoryBean.getStringToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, br.com.betterminds.model.Usuario>() {
            public br.com.betterminds.model.Usuario convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Usuario.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getClientToStringConverter());
        registry.addConverter(getIdToClientConverter());
        registry.addConverter(getStringToClientConverter());
        registry.addConverter(getEnderecoToStringConverter());
        registry.addConverter(getIdToEnderecoConverter());
        registry.addConverter(getStringToEnderecoConverter());
        registry.addConverter(getPessoaToStringConverter());
        registry.addConverter(getIdToPessoaConverter());
        registry.addConverter(getStringToPessoaConverter());
        registry.addConverter(getTelefoneToStringConverter());
        registry.addConverter(getIdToTelefoneConverter());
        registry.addConverter(getStringToTelefoneConverter());
        registry.addConverter(getUsuarioToStringConverter());
        registry.addConverter(getIdToUsuarioConverter());
        registry.addConverter(getStringToUsuarioConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
