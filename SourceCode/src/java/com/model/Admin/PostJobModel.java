package com.model.Admin;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

    @Entity
public class PostJobModel {
    @Id
    @GeneratedValue   
    
    private long id;
    private String nam;
    private String bnam;
    private String btyp;
    private String need;
    private String con;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBnam() {
        return bnam;
    }

    public void setBnam(String bnam) {
        this.bnam = bnam;
    }

    public String getBtyp() {
        return btyp;
    }

    public void setBtyp(String btyp) {
        this.btyp = btyp;
    }

    public String getNeed() {
        return need;
    }

    public void setNeed(String need) {
        this.need = need;
    }

    public String getCon() {
        return con;
    }

    public void setCon(String con) {
        this.con = con;
    }

    public String getNam() {
        return nam;
    }

    public void setNam(String nam) {
        this.nam = nam;
    }
    
    
}
