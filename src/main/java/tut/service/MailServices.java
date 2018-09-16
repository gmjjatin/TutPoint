package tut.service;

import java.util.Properties;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class MailServices {

public static	Logger log=Logger.getLogger(MailServices.class.getCanonicalName());
public static String fromAddress="admn.tutpoint@gmail.com";

public void sendWelcomeMail(String toAddress, String mailSubject,String mailBody) {
	Properties props=new Properties();
	Session session=Session.getDefaultInstance(props,null);
	try {
		javax.mail.Message msg=new MimeMessage(session);
		msg.setFrom(new InternetAddress(fromAddress));
		InternetAddress to=new InternetAddress(toAddress);
		msg.addRecipient(Message.RecipientType.TO, to);
		msg.setSubject(mailSubject);
		msg.setText(mailBody);
		Transport.send(msg);
	
	
	
	} catch (AddressException addressException) {
	}catch (MessagingException messagingException) {
	}
	
}
	
public void sendForgotPasswordMail(String toAddress, String mailSubject,String mailBody) {
	Properties props=new Properties();
	Session session=Session.getDefaultInstance(props,null);
	try {
		javax.mail.Message msg=new MimeMessage(session);
		msg.setFrom(new InternetAddress(fromAddress));
		InternetAddress to=new InternetAddress(toAddress);
		msg.addRecipient(Message.RecipientType.TO, to);
		msg.setSubject(mailSubject);
		msg.setText(mailBody);
		Transport.send(msg);
	
	
	
	} catch (AddressException addressException) {
	}catch (MessagingException messagingException) {
	}
	
}

	
}
