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
import java.util.Arrays;
/**
 *
 * @author Trevor O'Dwyer
 */
public class OilUsage extends org.apache.struts.action.ActionForm {
    
    private String name;
    
    private int number;
    
    private int product_id;
    
    String regError;
    
    void setRegError() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String getRegError(){
        return regError;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
    
    //testing code
    private int vol1;
    public int getVol1() {
        return vol1;
    }

    public void setVol1(int vol1) {
        this.vol1 = vol1;
    }
    
    private int vol2;
    public int getVol2(){
        return vol2;
    }

    public void setVol2(int vol2) {
        this.vol2 = vol2;
    }
    
    private int vol3;
    public int getVol3() {
        return vol3;
    }

    public void setVol3(int vol3) {
        this.vol3 = vol3;
    }
    
    private int vol4;

    public int getVol4() {
        return vol4;
    }

    public void setVol4(int vol4) {
        this.vol4 = vol4;
    }
    
    private int vol5;
    public int getVol5() {
        return vol5;
    }

    public void setVol5(int vol5) {
        this.vol5 = vol5;
    }
   
    private int vol6;
    public int getVol6(){
        return vol6;
    }
    
    public void setVol6(int vol6){
        this.vol6 = vol6;
    }
    
    private int vol7;
    public int getVol7(){
        return vol7;
    }
    
    public void setVol7(int vol7){
        this.vol7 = vol7;
    }
    
    private int vol8;
    
    public int getVol8(){
        return vol8;
    }
    
    public void setVol8(int vol8){
        this.vol8 = vol8;
    }
    
    private int vol9;
    
    public int getVol9(){
        return vol9;
    }
    
    public void setVol9(int vol9){
        this.vol9 = vol9;
    }
    
    private int vol10;
    
    public int getVol10(){
        return vol10;
    }
    
    public void setVol10(int vol10){
        this.vol10 = vol10;
    }
    
    private int vol11;
    
    public int getVol11(){
        return vol11;
    }
    
    public void setVol11(int vol11){
        this.vol11 = vol11;
    }
    
    private int vol12;
    
    public int getVol12(){
        return vol12;
    }
    
    public void setVol12(int vol12){
        this.vol12 = vol12;
    }
    
    private int vol13;
    
    public int getVol13(){
        return vol13;
    }
    
    public void setVol13(int vol13){
        this.vol13 = vol13;
    } 
    
    
    
    
    
    

    
   
  /*  private int[] volume_level = new int[14];

    public int[] getVolume_level() {
        return volume_level;
    }

    public void setVolume_level(int[] volume_level) {
        this.volume_level = volume_level;
    }*/
    
    private int[] vols = new int[14];

    public int[] getVols() {
        return Arrays.copyOf(vols, vols.length);
    }

    public void setVols(int[] vols) {
        this.vols = Arrays.copyOf(vols, vols.length);
    }
    
    private int volume_level;

    public void setVolume_level(int volume_level) {
        this.volume_level = volume_level;
    }

    public int getVolume_level() {
        return volume_level;
    }

    public int getProduct_id() {
        return product_id;
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

    /**
     *
     */
    public OilUsage() {
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
