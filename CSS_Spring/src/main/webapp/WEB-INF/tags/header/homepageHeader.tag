<%@ taglib prefix="header" tagdir="/WEB-INF/tags/header"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!-- Including jquery.min.js or some common used files here -->
<script type="text/javascript" src="${jqueryVar}/jquery.min.js"></script>


<%-- <h2 class="homePageHeader">Inside homePageHeader</h2>
<h2 class="welcomeMessage">${welcomeMessage }</h2> --%>

<div id="topRibbon">
	<div class="headerContainer">
		<sec:authorize ifNotGranted="ROLE_GUEST_CHECKOUT">
			<div id="authNav">
				<header:headerLinks />
			</div>
				
			<div id="userAuthLinks">
				<header:headerAuthenticationLinks />
			</div>
		</sec:authorize>
	</div>
</div>



<c:forEach items="${nameList}" var="name1">
	<p>Name is = ${name1}</p>
</c:forEach>

