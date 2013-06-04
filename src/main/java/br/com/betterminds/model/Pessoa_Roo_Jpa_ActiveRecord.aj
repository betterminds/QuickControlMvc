// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Pessoa;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pessoa_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Pessoa.entityManager;
    
    public static final EntityManager Pessoa.entityManager() {
        EntityManager em = new Pessoa().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pessoa.countPessoas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pessoa o", Long.class).getSingleResult();
    }
    
    public static List<Pessoa> Pessoa.findAllPessoas() {
        return entityManager().createQuery("SELECT o FROM Pessoa o", Pessoa.class).getResultList();
    }
    
    public static Pessoa Pessoa.findPessoa(Long id) {
        if (id == null) return null;
        return entityManager().find(Pessoa.class, id);
    }
    
    public static List<Pessoa> Pessoa.findPessoaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pessoa o", Pessoa.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Pessoa.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pessoa.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pessoa attached = Pessoa.findPessoa(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pessoa.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pessoa.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pessoa Pessoa.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pessoa merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}