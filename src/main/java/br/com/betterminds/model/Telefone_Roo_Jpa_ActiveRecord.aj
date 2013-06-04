// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Telefone;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Telefone_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Telefone.entityManager;
    
    public static final EntityManager Telefone.entityManager() {
        EntityManager em = new Telefone().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Telefone.countTelefones() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Telefone o", Long.class).getSingleResult();
    }
    
    public static List<Telefone> Telefone.findAllTelefones() {
        return entityManager().createQuery("SELECT o FROM Telefone o", Telefone.class).getResultList();
    }
    
    public static Telefone Telefone.findTelefone(Long id) {
        if (id == null) return null;
        return entityManager().find(Telefone.class, id);
    }
    
    public static List<Telefone> Telefone.findTelefoneEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Telefone o", Telefone.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Telefone.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Telefone.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Telefone attached = Telefone.findTelefone(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Telefone.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Telefone.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Telefone Telefone.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Telefone merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
