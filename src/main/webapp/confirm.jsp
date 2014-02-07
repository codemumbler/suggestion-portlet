<%@ page import="com.sun.jersey.api.client.Client" %>
<%@ page import="com.sun.jersey.api.client.ClientResponse" %>
<%@ page import="com.sun.jersey.api.client.WebResource" %>
<%@ page import="com.sun.jersey.api.representation.Form" %>
<%@ include file="/init.jsp" %>
<%
    String smtpHost = portletPreferences.getValue("smtpHost", "mailinator.com");
    String fromAddress = portletPreferences.getValue("fromAddress", "fromAddress@mailinator.com");
    String toAddress = portletPreferences.getValue("toAddress", "toAddress@mailinator.com");
    String subject = portletPreferences.getValue("subject", "My suggestion");
    String emailServiceURL = portletPreferences.getValue("emailServiceURL", "http://example.com/rest/email-service/send");


    String body = renderRequest.getParameter("body");

    Client client = Client.create();
    WebResource webResource = client.resource(emailServiceURL);
    Form form = new Form();
    form.add("smtpHost", smtpHost);
    form.add("from", fromAddress);
    form.add("to", toAddress);
    form.add("subject", subject);
    form.add("body", body);

    ClientResponse clientResponse = webResource.post(ClientResponse.class, form);

    if (clientResponse.getStatus() != 200) { %>
Your feedback failed to submit, there was a problem with the email service.  Please try again later.
    <%} else { %>
<%=portletPreferences.getValue("confirmationText","Thank you for the feedback!")%>
<%    } %>

