/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;
import java.io.Serializable;
import java.util.Date;
/**
 *
 * @author Wataru
 */
public class ResultData implements Serializable {
    private Date d;
    private String luck;
public ResultData() {}
public Date getD(){ //getter
    return d;
}
public void setD(Date d){ //setter
    this.d = d;
}    
public String getLuck(){ //getter
    return luck;
}

public void setLuck(String luck){ //setter
    this.luck = luck;
}
    //void setLuck(String string) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    //}
}
