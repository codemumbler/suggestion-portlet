package com.creativesci.liferay.suggestion;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Emailer {

    public static void sendEmail(final String smtpHost, final String from, final String to, final String subject,
                                    final String body) throws MessagingException {
        final Properties props = new Properties();
        props.put("mail.smtp.host", smtpHost);

        final Session session = Session.getDefaultInstance(props, null);
        final MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(from));
        message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
        message.setSubject(subject);

        message.setContent(body, "text/html");

        Transport.send(message, message.getAllRecipients());
    }
}
