<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="header" tagdir="/WEB-INF/tags/header"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<header:headHelper />
		
		<!-- 1st Method to include css file -->
		<!-- Initializing a variable for all css files -->
		<%-- <spring:url value="/resources/css" var="cssUrl" />
		<link href="${cssUrl}/homepage.css" rel="stylesheet" /> --%>
		
		<!-- 2nd Method to include css using var from another tag -->
		<!-- cssUrl is coming from homepageVariables.tag -->
		<link href="${cssUrl}/homepage.css" rel="stylesheet" />
		
		<!-- 1st Method to include js file -->
		<%-- <spring:url value="/resources/js" var="jsUrl" />
		<script src="${jsUrl }/homepage.js"></script> --%>
		
		<!-- 2nd Method Including js using jsVar which is coming from homepageVariables.js -->
		<script type="text/javascript" src="${jsUrl}/homepage.js" ></script>
		
	</head>
	<body>
		<div id="body-main">
			<noscript class="noscriptClass">
				<p>Sorry, Your browser does not support Javascript</p>
			</noscript>
			<div id="eheader">
				<header:homepageHeader/>
			</div>
			<p>nameList= ${nameList}</p>
			<div class="nameList">
				<c:forEach items="${nameList}" var="name">
					<p>Value is= ${name}</p>
				</c:forEach>
				<c:forEach items="${list}" var="listNew">
					<p>List item is= ${listNew }</p>
				</c:forEach>
			</div>
		</div>
	</body>
</html>