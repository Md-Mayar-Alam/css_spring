<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag import="com.enums.PageType" %>

<!-- Setting PageType Values -->
<c:set var="homePage" value="<%=PageType.HOME.getContext() %>" />
<c:set var="searchPage" value="<%=PageType.SEARCH.getContext() %>" />
<c:set var="accountPage" value="<%=PageType.ACCOUNT.getContext() %>" />

<!-- Always Include -->
<link rel="stylesheet" type="text/css" href="${cssUrl }/site.css" />
<%-- <link rel="stylesheet" type="text/css" href="${cssUrl }/bootstrap/3.3.7/bootstrap.min.css" /> --%>
<script type="text/javascript" src="${jsUrl }/site.js" ></script>

<c:choose>
	<c:when test="${pageType eq 'home'}">
		<link rel="stylesheet" type="text/css" href="${cssUrl }/homepage.css" />
		<script type="text/javascript" src="${jsUrl }/homepage.js" ></script>
	</c:when>
	
	<c:when test="${pageType eq 'search'}">
		<link rel="stylesheet" type="text/css" href="${cssUrl }/searchPage.css" />
		<script type="text/javascript" src="${jsUrl }/searchPage.js"></script>
	</c:when>
</c:choose>


<!-- 1st Method to include css file -->
<!-- Initializing a variable for all css files -->
<%-- <spring:url value="/resources/css" var="cssUrl" />
		<link href="${cssUrl}/homepage.css" rel="stylesheet" /> --%>

<!-- 2nd Method to include css using var from another tag -->
<!-- cssUrl is coming from homepageVariables.tag -->
<%-- <link href="${cssUrl}/homepage.css" rel="stylesheet" /> --%>

<!-- 1st Method to include js file -->
<%-- <spring:url value="/resources/js" var="jsUrl" />
		<script src="${jsUrl }/homepage.js"></script> --%>

<!-- 2nd Method Including js using jsVar which is coming from homepageVariables.js -->
<%-- <script type="text/javascript" src="${jsUrl}/homepage.js"></script> --%>