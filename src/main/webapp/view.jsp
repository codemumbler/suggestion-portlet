<%@ include file="/init.jsp" %>

<h1>Your suggestion box</h1>
<hr/>
<portlet:renderURL var="confirmationURL">
    <portlet:param name="jspPage" value="/confirm.jsp" />
</portlet:renderURL>
<aui:form action="<%= confirmationURL %>" method="post" name="fm">
<table border="0">
    <tr>
        <td>
            <%=portletPreferences.getValue("introductionText", "Send us your Feedback:")%>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            <aui:input type="textarea" name="body" rows="10" cols="65" label="" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            <aui:button-row>
                <aui:button type="submit"/>
            </aui:button-row>
        </td>
    </tr>
</table>
</aui:form>