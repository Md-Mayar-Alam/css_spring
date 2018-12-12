<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="header" tagdir="/WEB-INF/tags/header"%>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/footer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<c:set var="pageType" value="home" scope="application" />
	<head>
		<header:headHelper />

		<header:headResourceIncluder />
	</head>
	<body>
		<div id="body-main" class="mayar homepage">
			<noscript class="noscriptClass">
				Javascript not supporting message
				<p>
					<strong>
						<spring:message code="javascript.notsupported.message"></spring:message>
					</strong>
				</p>
			</noscript>
			
			<header:homepageHeader/>
			
			<p>nameList= ${nameList}</p>
			<div class="nameList">
				<c:forEach items="${nameList}" var="name">
					<p>Value is= ${name}</p>
				</c:forEach>
				<c:forEach items="${list}" var="listNew">
					<p>List item is= ${listNew }</p>
				</c:forEach>
			</div>
			
			<!-- Code For Footer -->
			<footer:homepageFooter />
		</div>
	</body>
</html>