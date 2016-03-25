package com.myapp.struts;

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

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author mel76
 */
public class LoginForm extends org.apache.struts.action.ActionForm {
    private String email;
    private String password;

    public void setError(String error) {
        this.error = error;
    }
    private String error;
    public String getError() {
        return error;
    }
    public void setError() {
        this.error =
        "<span style='color:red'>Please provide valid entries for both fields</span>";
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String string) {
        email = string;
    }
    public LoginForm() {
        super();
    }
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getEmail() == null || getEmail().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.email.required' key to your resources
        }
        return errors;
    }
}
