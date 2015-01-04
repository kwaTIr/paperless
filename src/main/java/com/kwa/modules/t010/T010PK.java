/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kwa.modules.t010;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author scumb46
 */
@Embeddable
public class T010PK implements Serializable {
    @Basic(optional = false)
    @Column(name = "tipe", nullable = false, length = 4)
    private String tipe;
    @Basic(optional = false)
    @Column(name = "kode", nullable = false, length = 4)
    private String kode;

    public T010PK() {
    }

    public T010PK(String tipe, String kode) {
        this.tipe = tipe;
        this.kode = kode;
    }

    public String getTipe() {
        return tipe;
    }

    public void setTipe(String tipe) {
        this.tipe = tipe;
    }

    public String getKode() {
        return kode;
    }

    public void setKode(String kode) {
        this.kode = kode;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tipe != null ? tipe.hashCode() : 0);
        hash += (kode != null ? kode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof T010PK)) {
            return false;
        }
        T010PK other = (T010PK) object;
        if ((this.tipe == null && other.tipe != null) || (this.tipe != null && !this.tipe.equals(other.tipe))) {
            return false;
        }
        if ((this.kode == null && other.kode != null) || (this.kode != null && !this.kode.equals(other.kode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.kwa.modules.t010.T010PK[ tipe=" + tipe + ", kode=" + kode + " ]";
    }
    
}
