
package com.model.Admin;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class NewsModel {
    
    @Id
    @GeneratedValue
    
    private long id;
    private String typ;
    private String headl;
    private String dis;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTyp() {
        return typ;
    }

    public void setTyp(String typ) {
        this.typ = typ;
    }

    public String getHeadl() {
        return headl;
    }

    public void setHeadl(String headl) {
        this.headl = headl;
    }

    public String getDis() {
        return dis;
    }

    public void setDis(String dis) {
        this.dis = dis;
    }

    
}
