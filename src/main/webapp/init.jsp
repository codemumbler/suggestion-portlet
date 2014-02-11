<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%@ taglib prefix="aui" uri="http://alloy.liferay.com/tld/aui" %>
<%@ taglib prefix="liferay-theme" uri="http://liferay.com/tld/theme" %>

<%@ page import="com.liferay.portal.kernel.util.Constants" %>
<%@ page import="com.sun.jersey.api.client.Client" %>
<%@ page import="com.sun.jersey.api.client.ClientResponse" %>
<%@ page import="com.sun.jersey.api.client.WebResource" %>
<%@ page import="com.sun.jersey.api.representation.Form" %>
<%@ page import="com.creativesci.liferay.suggestion.Emailer" %>
<%@ page import="javax.mail.MessagingException" %>

<portlet:defineObjects/>

<liferay-theme:defineObjects />