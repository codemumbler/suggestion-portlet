<%@ include file="/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationURL"/>

<%
    String smtpHost = portletPreferences.getValue("smtpHost", "mailinator.com");
    String fromAddress = portletPreferences.getValue("fromAddress", "fromAddress@mailinator.com");
    String toAddress = portletPreferences.getValue("toAddress", "toAddress@mailinator.com");
    String subject = portletPreferences.getValue("subject", "My suggestion");
    String emailServiceURL = portletPreferences.getValue("emailServiceURL", "http://example.com/rest/email-service/send");

    String introductionText = portletPreferences.getValue("introductionText", "Send us your Feedback:");
    String confirmationText = portletPreferences.getValue("confirmationText", "Thank you for the feedback!");
%>

<aui:form action="<%= configurationURL %>" method="post" name="fm">
    <aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
    <aui:fieldset label="preferences">
        <aui:input label="SMTP host name:" name="preferences--smtpHost--" value="<%=smtpHost%>"/>
        <aui:input label="Email REST Service URL:" name="preferences--emailServiceURL--" value="<%=emailServiceURL%>"/>
        <aui:input label="From address:" name="preferences--fromAddress--" value="<%=fromAddress%>"/>
        <aui:input label="To address:" name="preferences--toAddress--" value="<%=toAddress%>"/>
        <aui:input label="Subject:" name="preferences--subject--" value="<%=subject%>"/>

        <aui:input label="Intro HTML/Text:" type="textarea" name="preferences--introductionText--" value="<%=introductionText%>"/>
        <aui:input label="Confirmation HTML/Text:" type="textarea" name="preferences--confirmationText--" value="<%=confirmationText%>"/>
    </aui:fieldset>
    <aui:button-row>
        <aui:button type="submit"/>
    </aui:button-row>
</aui:form>
