<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Initializing a variable for all css files -->
<c:set var="cssUrl" scope="application" value="/CSS_Spring/resources/css" />

<!-- Initializing a variable for all js files -->
<c:set var="jsUrl" scope="application" value="/CSS_Spring/resources/js" />

<c:set var="jqueryVar" scope="application" value="/CSS_Spring/resources/js/jQuery/3.3.1" />

<!-- Javascript Variables -->
<script>
	var contextPath="<%=request.getContextPath() %>";
	
	var Mayar = Mayar || {};	/* declaring an object Mayar means if  Mayar has a falsy
								value (like null , undefined, 0 ,""), we assign Mayar
								an empty Object {} */
	Mayar.rootJsUrl="${jsUrl}";
	Mayar.rootCssUrl="${cssUrl}";
	
</script>