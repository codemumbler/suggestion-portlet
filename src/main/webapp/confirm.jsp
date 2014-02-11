<%@ include file="/init.jsp" %>
<%
    String smtpHost = portletPreferences.getValue("smtpHost", "mailinator.com");
    String fromAddress = portletPreferences.getValue("fromAddress", "fromAddress@mailinator.com");
    String toAddress = portletPreferences.getValue("toAddress", "toAddress@mailinator.com");
    String subject = portletPreferences.getValue("subject", "My suggestion");
    String body = renderRequest.getParameter("body");

    try {
        Emailer.sendEmail(smtpHost, fromAddress, toAddress, subject, body);
%><%=portletPreferences.getValue("confirmationText","Thank you for the feedback!")%><%
    } catch (MessagingException me) { %>
Your feedback failed to submit, there was a problem with the email service.  Please try again later.
<%    } %>

