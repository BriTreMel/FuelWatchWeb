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
public class OilAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private final static String FAILURE = "failure";
    
    PreparedStatement prepStat;
    String ret;
    int vol =0;
    int[] volumes = new int[14];
   // int[] volume_level = new int[14];
    int i=1;
    int level;
    int vols[] = new int[14];

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
        
         //get the product data
        
        OilUsage formBean = (OilUsage) form;
        int product_id = formBean.getProduct_id();
       // int vols[] = formBean.getVols();
        //int volume_level = formBean.getVolume_level();
       // int volumes[] = new int[20];
        //int i = 0;
        //System.out.println("Success");
       // formBean.setVolume_level(vol);
        Connection conn = null;
        
        ret = FAILURE;
        
        try{
            
            String URL = "jdbc:mysql://82.141.235.157:3306/FuelWatchDB";

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection(URL, "melanie", "britremel");

                String sql = ("SELECT volume_level FROM customer_oil_data WHERE"
                +" product_id = ? "
                + "ORDER BY input_time DESC "
                + "LIMIT 14");
                
                PreparedStatement ps = conn.prepareStatement(sql);
                System.out.println("Success");
                ps.setInt(1, product_id);
                
                ResultSet rs = ps.executeQuery();
                
                while (rs.next()) {

                    
                    vol = rs.getInt(1);
                   // vols[i]=rs.getInt(1);
                   // volumes[i] = rs.getInt(1);
                   // volumes[i]=vol;
                    volumes[i] = vol;
                    
                   // formBean.setVolume_level(vol);
                  //  formBean.setVols(vols);
                    
                  /*  for(int i=0; i<=14; i++){
                    
                    }*/
                   // vols[i] = formBean.getVolume_level();
                    //formBean.setVols(vols);
                    //formBean.setVols(volumes);
                   // volumes[i] = formBean.getVolume_level();
                    //vols[i] = formBean.getVolume_level();
                   // formBean.setVolume_level[i](volumes[i]);
                   //formBean.setVolume_level(2);
                   //volumes[i] = vol;
                   //System.out.println(volumes);
                  System.out.println(volumes[i]);
                   //System.out.println(vols[i]);
                   i++;
                   ret = SUCCESS;
                  // volume_level = formBean.getVolume_level();
                    

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
         formBean.setVol1(volumes[1]);
         formBean.setVol2(volumes[2]);
         formBean.setVol3(volumes[3]);
         formBean.setVol4(volumes[4]);
         formBean.setVol5(volumes[5]);
       
        
        return mapping.findForward(SUCCESS);
    }
}
