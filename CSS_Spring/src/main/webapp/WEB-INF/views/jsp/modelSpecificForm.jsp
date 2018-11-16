<%@ taglib prefix="header" tagdir="/WEB-INF/tags/header" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<header:headHelper />
	</head>
	<body>
		<div>
			<spring:message code="site.owner.name"></spring:message>
			<spring:message code="NotEmpty.userForm.name"></spring:message>
		</div>		
	</body>
</html>