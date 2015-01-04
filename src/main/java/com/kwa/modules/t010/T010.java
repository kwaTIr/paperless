/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kwa.modules.t010;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author scumb46
 */
@Entity
@Table(name = "t010", catalog = "paperless", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "T010.findAll", query = "SELECT t FROM T010 t"),
    @NamedQuery(name = "T010.findByTipe", query = "SELECT t FROM T010 t WHERE t.t010PK.tipe = :tipe"),
    @NamedQuery(name = "T010.findByKode", query = "SELECT t FROM T010 t WHERE t.t010PK.kode = :kode"),
    @NamedQuery(name = "T010.findByDeksripsi", query = "SELECT t FROM T010 t WHERE t.deksripsi = :deksripsi"),
    @NamedQuery(name = "T010.findByKeyword", query = "SELECT t FROM T010 t WHERE t.t010PK.tipe like :tipe OR t.t010PK.kode like :kode OR t.deksripsi like :deksripsi OR t.assocval like :assocval"),
    @NamedQuery(name = "T010.findByAssocval", query = "SELECT t FROM T010 t WHERE t.assocval = :assocval")})
public class T010 implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected T010PK t010PK;
    @Basic(optional = false)
    @Column(name = "deksripsi", nullable = false, length = 10)
    private String deksripsi;
    @Basic(optional = false)
    @Column(name = "assocval", nullable = false, length = 10)
    private String assocval;

    public T010() {
    }

    public T010(T010PK t010PK) {
        this.t010PK = t010PK;
    }

    public T010(T010PK t010PK, String deksripsi, String assocval) {
        this.t010PK = t010PK;
        this.deksripsi = deksripsi;
        this.assocval = assocval;
    }

    public T010(String tipe, String kode) {
        this.t010PK = new T010PK(tipe, kode);
    }

    public T010PK getT010PK() {
        return t010PK;
    }

    public void setT010PK(T010PK t010PK) {
        this.t010PK = t010PK;
    }

    public String getDeksripsi() {
        return deksripsi;
    }

    public void setDeksripsi(String deksripsi) {
        this.deksripsi = deksripsi;
    }

    public String getAssocval() {
        return assocval;
    }

    public void setAssocval(String assocval) {
        this.assocval = assocval;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (t010PK != null ? t010PK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof T010)) {
            return false;
        }
        T010 other = (T010) object;
        if ((this.t010PK == null && other.t010PK != null) || (this.t010PK != null && !this.t010PK.equals(other.t010PK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.kwa.modules.t010.T010[" + t010PK.getKode() + "," + t010PK.getTipe() +"," +  getDeksripsi() +"," +  getAssocval() +" ]";
    }
    
}
