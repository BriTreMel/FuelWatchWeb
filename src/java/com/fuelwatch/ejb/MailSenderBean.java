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
package com.fuelwatch.ejb;

import javax.ejb.Stateless;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Trevor O'Dwyer
 */
@Stateless
public class MailSenderBean {
    
    public void sendEmail(String fromEmail, String username, String password,
            String toEmail, String subject, String message){
        
        try {
            Properties props = System.getProperties();
            props.put("mail.smtp.host","smtp.gmail.com");
            props.put("mail.smtp.auth","true");
            props.put("mail.smtp.port","465");
            props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.port","465");
            props.put("mail.smtp.socketFactory.fallback","false");
            
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(true);
            
            Message mailMessage = new MimeMessage(mailSession);
            
            mailMessage.setFrom(new InternetAddress(fromEmail));
            mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            mailMessage.setContent(message,"text/html");
            mailMessage.setSubject(subject);
            
            Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", username, password);
            
            transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
            
            
        } //end of void sendEmail
        catch (Exception ex) {
            Logger.getLogger(MailSenderBean.class.getName()).log(Level.SEVERE, null, ex);
        }//end of catch
    
    
    }

    
}
