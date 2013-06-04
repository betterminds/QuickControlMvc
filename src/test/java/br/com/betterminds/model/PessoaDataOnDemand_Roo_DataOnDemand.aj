// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Pessoa;
import br.com.betterminds.model.PessoaDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect PessoaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PessoaDataOnDemand: @Component;
    
    private Random PessoaDataOnDemand.rnd = new SecureRandom();
    
    private List<Pessoa> PessoaDataOnDemand.data;
    
    public Pessoa PessoaDataOnDemand.getNewTransientPessoa(int index) {
        Pessoa obj = new Pessoa();
        setNome(obj, index);
        return obj;
    }
    
    public void PessoaDataOnDemand.setNome(Pessoa obj, int index) {
        String nome = "nome_" + index;
        if (nome.length() > 80) {
            nome = nome.substring(0, 80);
        }
        obj.setNome(nome);
    }
    
    public Pessoa PessoaDataOnDemand.getSpecificPessoa(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Pessoa obj = data.get(index);
        Long id = obj.getId();
        return Pessoa.findPessoa(id);
    }
    
    public Pessoa PessoaDataOnDemand.getRandomPessoa() {
        init();
        Pessoa obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Pessoa.findPessoa(id);
    }
    
    public boolean PessoaDataOnDemand.modifyPessoa(Pessoa obj) {
        return false;
    }
    
    public void PessoaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Pessoa.findPessoaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Pessoa' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Pessoa>();
        for (int i = 0; i < 10; i++) {
            Pessoa obj = getNewTransientPessoa(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
