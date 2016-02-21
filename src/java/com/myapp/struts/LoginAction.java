package com.myapp.struts;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
 * @author mel76
 */
public class LoginAction extends org.apache.struts.action.Action {

    private static final String SUCCESS = "success";

    private final static String FAILURE = "failure";

    String ret;

    @Override

    public ActionForward execute(ActionMapping mapping, ActionForm form,

            HttpServletRequest request, HttpServletResponse response)

            throws Exception {

        // extract user data

        LoginForm formBean = (LoginForm) form;

        String email = formBean.getEmail();

        String password = formBean.getPassword();

        Connection conn = null;
                   
        ret = FAILURE;
   
        try {

            String URL = "jdbc:mysql://82.141.235.157:3306/FuelWatchDB";

            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection(URL, "melanie", "britremel");

            String sql = "SELECT * FROM customer WHERE";

            sql += " email = ? AND password = ?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);

            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                email = rs.getString(1);
                         

                ret = SUCCESS;

                System.out.println("Success");
              

            }

        } catch (Exception e) {

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

            return mapping.findForward(FAILURE);

        }

        return mapping.findForward(SUCCESS);

    }

}
