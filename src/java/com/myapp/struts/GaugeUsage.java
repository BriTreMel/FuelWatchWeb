/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 Created by : Bridget Purcell
                 Melanie Cunningham
                 Trevor O'Dwyer
    Group Name : BriTreMel 
    3rd year project LIT 2016.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Trevor O'Dwyer
 */
public class GaugeUsage extends org.apache.struts.action.ActionForm {
    
    private String name;
    
    private int number;
    
     private int product_id;

    public void setVolume_level(int volume_level) {
        this.volume_level = volume_level;
    }

    public int getVolume_level() {
        return volume_level;
    }
     
     private int volume_level;
     
     

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getProduct_id() {
        return product_id;
    }
    
    String regError;
    
    void setRegError() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String getRegError(){
        return regError;
    }


    /**
     * @return
     */
    public String getName() {
        return name;
    }

    /**
     * @param string
     */
    public void setName(String string) {
        name = string;
    }

    /**
     * @return
     */
    public int getNumber() {
        return number;
    }

    /**
     * @param i
     */
    public void setNumber(int i) {
        number = i;
    }
    
    private int gauge_percent;
    
    public int getGauge_percent(){
        return gauge_percent;
    }
    
    public void setGauge_percent(int gauge_percent){
        this.gauge_percent = gauge_percent;
    }

    /**
     *
     */
    public GaugeUsage() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getName() == null || getName().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}
