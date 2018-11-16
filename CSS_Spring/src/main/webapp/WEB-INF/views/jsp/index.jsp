<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<spring:url value="/resources/css/homeCss.css" var="coreCss" />
		<link href="${coreCss}" rel="stylesheet" />
	</head>

	<body>
		<div class="homeClass">
			<h2>Hello World!</h2>
			<a href="/CSS_Spring/homepage">Go To Homepage</a>
		</div>
	</body>
</html>