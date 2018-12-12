<%@ taglib prefix="header" tagdir="/WEB-INF/tags/header"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!-- Including jquery.min.js or some common used files here -->
<script type="text/javascript" src="${jqueryVar}/jquery.min.js"></script>


<%-- <h2 class="homePageHeader">Inside homePageHeader</h2>
<h2 class="welcomeMessage">${welcomeMessage }</h2> --%>
<div id="eheader">
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
	
	<!-- Code For Searching -->
	<div id="navSearchContainer">
		<div class="row">
			<div class="col-md-4">
				<button id="allProducts">
					<strong>All Products</strong>
				</button>
			</div>
			<!-- class="searchContainer" -->
			<div class="col-md-4">
				<input type="text" id="search">
			</div>
			
			<div class="col-md-4">
				<input type="text" id="search">
			</div>
		</div>
	</div>
	
	<div class="row">
			<div class="col-md-4">
				<p>Hello</p>
			</div>
			<!-- class="searchContainer" -->
			<div class="col-md-4">
				<p>Hello</p>
			</div>
			
			<div class="col-md-4">
				<p>Hello</p>
			</div>
		</div>
</div>



<c:forEach items="${nameList}" var="name1">
	<p>Name is = ${name1}</p>
</c:forEach>

