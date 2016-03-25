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
public class ProductForm extends org.apache.struts.action.ActionForm {
    
    private String name;
    private int product_id;

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public void setCustomer_min_level(int customer_min_level) {
        this.customer_min_level = customer_min_level;
    }

    public int getProduct_id() {
        return product_id;
    }
    private int customer_id;
    private int customer_min_level;
    private String serial_number;
    private String fuel_type_id;
    private int tank_type_id;
    private String regError;
    
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
    public int getCustomer_id() {
        return customer_id;
    }

    /**
     * @param i
     */
    public void setCustomer_id(int i) {
        customer_id = i;
    }
    
    public int getCustomer_min_level(){
        return customer_min_level;
    }
    
    public void setCusotomer_min_level(int i){
        customer_min_level=i;
    }
    
    public String getSerial_number(){
        return serial_number;
    }
    
    public void setSerial_number(String serial_number){
        this.serial_number = serial_number;
    }
    
    public String getFuel_type_id(){
        return fuel_type_id;
    }
    public void setFuel_type_id(String fuel_type_id){
        this.fuel_type_id = fuel_type_id;
    }
    
    public int getTank_type_id(){
        return tank_type_id;
    }
    public void setTank_type_id(int i){
        tank_type_id = i;
    }
    
    private int tank_size;
    
    public int getTank_size(){
        return tank_size;
    }
    
    private void setTank_size(int tank_size){
        this.tank_size = tank_size;
    
    }

    /**
     *
     */
    public ProductForm() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     *
     * @param regError
     
    public void setRegError(String regError) {
        this.regError = "<span style='color:red'>Error on insert</span>";
    }
    */
    

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getSerial_number() == null || getSerial_number().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }

    
}
