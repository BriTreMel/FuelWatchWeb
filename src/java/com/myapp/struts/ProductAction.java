/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Trevor O'Dwyer
 */
public class ProductAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private final static String FAILURE = "failure";
    PreparedStatement prepStat;
    String ret;

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        //extract the data
        ProductForm formBean =(ProductForm)form;
        int product_id = formBean.getProduct_id();
        int customer_id = formBean.getCustomer_id();
        int customer_min_level = formBean.getCustomer_min_level();
        String serial_number = formBean.getSerial_number();
        String fuel_type_id = formBean.getFuel_type_id();
        int tank_type_id = formBean.getTank_type_id();
        Connection conn = null;
        
        ret = FAILURE;
        
        try{
            String URL = "jdbc:mysql://82.141.235.157:3306/FuelWatchDB";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, "melanie","britremel");
            
                try{
                    
                    String query ="INSERT INTO product(product_id,customer_id,customer_min_level,serial_number,fuel_type_id,tank_type_id)VALUES(?,?,?,?,?,?)";
                    prepStat = (PreparedStatement)conn.prepareStatement(query);
                    prepStat.setInt(1,product_id);
                    prepStat.setInt(2,customer_id);
                    prepStat.setInt(3,customer_min_level);
                    prepStat.setString(4,serial_number);
                    prepStat.setString(5,fuel_type_id);
                    prepStat.setInt(6, tank_type_id);
                   
                    prepStat.executeUpdate();
                    ret = SUCCESS;
                
                }
                catch(Exception e){
                    System.err.println(e);
                }

        
        }finally{
            if(conn != null){
                try{conn.close();}catch(Exception e){}
            
            }
            
        }        
        //Perform Validation
        if(ret.equals(FAILURE)){
            //formBean.setRegError();
            return mapping.findForward(FAILURE);
        
        }else if(ret.equals(SUCCESS)){
            
            return mapping.findForward(SUCCESS);
        
        }
        return null;
    }
}
