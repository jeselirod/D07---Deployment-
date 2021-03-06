<%--
 * action-2.jsp
 *
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<fieldset>
<legend><spring:message code="administrator.FixUp" /></legend>
<b><spring:message code="administrator.max" /></b>: ${fixUpMax }<br/>
<b><spring:message code="administrator.min" /></b>: ${fixUpMin }<br/>
<b><spring:message code="administrator.avg" /></b>: ${fixUpAvg }<br/>
<b><spring:message code="administrator.desv" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${fixUpDesv }"></fmt:formatNumber>

</fieldset>

<fieldset>
<legend><spring:message code="administrator.FixUpApp" /></legend>
<b><spring:message code="administrator.max" /></b>: ${fixUpAppMax }<br/>
<b><spring:message code="administrator.min" /></b>: ${fixUpAppMin }<br/>
<b><spring:message code="administrator.avg" /></b>: ${fixUpAppAvg }<br/>
<b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${fixUpAppDesv }"></fmt:formatNumber>
</fieldset>

<fieldset>
<legend><spring:message code="administrator.FixUpPrice" /></legend>
<b><spring:message code="administrator.max" /></b>: ${fixUpPriceMax }<br/>
<b><spring:message code="administrator.min" /></b>: ${fixUpPriceMin }<br/>
<b><spring:message code="administrator.avg" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${fixUpPriceAvg }"></fmt:formatNumber>
<br/>
<b><spring:message code="administrator.desv" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${fixUpPriceDesv }"></fmt:formatNumber>
<br/>
</fieldset>

<fieldset>
<legend><spring:message code="administrator.ApplicationPrice" /></legend>
<b><spring:message code="administrator.max" /></b>: ${applicationPriceOfferedMax }<br/>
<b><spring:message code="administrator.min" /></b>: ${applicationPriceOfferedMin }<br/>
<b><spring:message code="administrator.avg" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${applicationPriceOfferedAvg }"></fmt:formatNumber>
<br/>
<b><spring:message code="administrator.desv" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${applicationPriceOfferedDesv }"></fmt:formatNumber>
<br/>
</fieldset>

<fieldset>
<legend><spring:message code="administrator.Application" /></legend>
<b><spring:message code="administrator.PendingApp" /></b>: ${ratioPendingApp }<br/>
<b><spring:message code="administrator.AcceptedApp" /></b>: ${ratioAcceptedApp }<br/>
<b><spring:message code="administrator.RejectedApp" /></b>: ${ratioRejectedApp }<br/>
<b><spring:message code="administrator.PendingAppStatus" /></b>: ${rationPendingAppStatus }<br/>
</fieldset>

<fieldset>
<legend><spring:message code="administrator.FixUpComplaint" /></legend>
<b><spring:message code="administrator.max" /></b>: ${fixUpComplaintMax }<br/>
<b><spring:message code="administrator.min" /></b>: ${fixUpComplaintMin }<br/>
<b><spring:message code="administrator.avg" /></b>: ${fixUpComplaintAvg }<br/>
<b><spring:message code="administrator.desv" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${fixUpComplaintDesv }"></fmt:formatNumber>
<br/></fieldset>

<fieldset>
<legend><spring:message code="administrator.Report" /></legend>
<b><spring:message code="administrator.max" /></b>: ${reportNoteMax }<br/>
<b><spring:message code="administrator.min" /></b>: ${reportNoteMin }<br/>
<b><spring:message code="administrator.avg" /></b>: ${reportNoteAvg }<br/>
<b><spring:message code="administrator.desv" /></b>: <b><spring:message code="administrator.desv" /></b>: <fmt:formatNumber type="number" maxIntegerDigits = "2" value ="${reportNoteDesv }"></fmt:formatNumber>
<br/></fieldset>

<fieldset>
<legend><spring:message code="administrator.customerFix" /></legend>
<jstl:forEach var="item" items="${customerFix}">
<jstl:out value="${item[0]}"></jstl:out>

<jstl:out value="${item[1]}"></jstl:out>
<br/>
</jstl:forEach>
<br/></fieldset>

<fieldset>
<legend><spring:message code="administrator.Handy10percent" /></legend>
${handyWorker10percent}
<br/></fieldset>
