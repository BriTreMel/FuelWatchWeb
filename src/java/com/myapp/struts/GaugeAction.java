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
public class GaugeAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private final static String FAILURE = "failure";
    
    PreparedStatement prepStat;
    String ret;
    int vol = 0;

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
        
        GaugeUsage formBean = (GaugeUsage) form;
       
        int product_id = formBean.getProduct_id();
        
        Connection conn = null;
        
        ret = FAILURE;
        
        try{
            
            String URL = "jdbc:mysql://82.141.235.157:3306/FuelWatchDB";

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection(URL, "melanie", "britremel");

                String sql = ("select (customer_oil_data.volume_level/product.tank_size)*100 from product Join customer_oil_data on customer_oil_data.product_id = product.product_id join customer on customer.customer_id = product.customer_id where product.product_id = ? Order by customer_oil_data.input_time desc limit 1");
                
                PreparedStatement ps = conn.prepareStatement(sql);
                System.out.println("Success");
                ps.setInt(1, product_id);
                
                ResultSet rs = ps.executeQuery();
                
                while(rs.next()){
                    
                    vol = rs.getInt(1);
                    formBean.setVolume_level(vol);
                    ret = SUCCESS;
                
                
                }
        
        }catch(Exception e){
            System.err.println(e);
        }finally {

                if (conn != null) {

                    try {

                        conn.close();

                    } catch (Exception e) {

                    }

                }

            }
        
       // formBean.setGauge_percent(500/100*formBean.getVolume_level());
        
        return mapping.findForward(SUCCESS);
    }
}
