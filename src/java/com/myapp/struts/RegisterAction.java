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

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class RegisterAction extends org.apache.struts.action.Action {

    private static final String SUCCESS = "success";
    private final static String FAILURE = "failure";
    PreparedStatement prepStat;
    String ret;

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
                // extract user data
        RegisterForm formBean = (RegisterForm) form;
        String fname = formBean.getFname();
        String sname = formBean.getSname();
        String add1 = formBean.getAdd1();
        String add2 = formBean.getAdd2();
        String add3 = formBean.getAdd3();
        String add4 = formBean.getAdd4();
        String eircode = formBean.getEircode();
        String contact1= formBean.getContact1();
        String contact2 = formBean.getContact2();
        String contact3 = formBean.getContact3();       
        String securityA= formBean.getSecurityA();
        String password = formBean.getPassword();
        String email = formBean.getEmail();
        //String fuelType = formBean.FuelType();
        Connection conn = null;
        
        ret = FAILURE;
        
        try {
            String URL = "jdbc:mysql://82.141.235.157:3306/FuelWatchDB";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, "melanie","britremel");

                    try {
            String query = "INSERT INTO customer (first_name, second_name, address_1, address_2, address_3, address_4, eircode, contact_1, contact_2, contact_3, email, password, security_answer )VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            prepStat = (PreparedStatement) conn.prepareStatement(query);
            prepStat.setString(1,fname);
            prepStat.setString(2,sname);
            prepStat.setString(3,add1);
            prepStat.setString(4,add2);
            prepStat.setString(5,add3);
            prepStat.setString(6,add4);
            prepStat.setString(7,eircode);
            prepStat.setString(8,contact1);
            prepStat.setString(9,contact2);
            prepStat.setString(10,contact3);
            prepStat.setString(11,email);     
            prepStat.setString(12,password);
            prepStat.setString(13,securityA);
        

            
            prepStat.executeUpdate();
            ret = SUCCESS;
        }
        catch(Exception e)
	{
		  System.err.println(e);
	}
            
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                }
            }
        }
        // perform validation
     
        if (ret.equals(FAILURE)) {

            formBean.setRegError();
            return mapping.findForward(FAILURE);
        }

        return mapping.findForward(SUCCESS);
    }
}
