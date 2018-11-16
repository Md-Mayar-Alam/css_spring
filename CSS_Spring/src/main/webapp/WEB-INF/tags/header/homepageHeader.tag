<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Including jquery.min.js or some common used files here -->
<script type="text/javascript" src="${jqueryVar}/jquery.min.js"></script>


<h2 class="homePageHeader">Inside homePageHeader</h2>

<h2 class="welcomeMessage">${welcomeMessage }</h2>
<c:forEach items="${nameList}" var="name1">
	<p>Name is = ${name1}</p>
</c:forEach>