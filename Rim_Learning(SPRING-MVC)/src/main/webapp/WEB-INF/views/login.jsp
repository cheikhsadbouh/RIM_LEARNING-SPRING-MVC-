<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

my custom 
<c:url value="/login" var="s"/>
<form method="POST" action="${s} " >


<input type="text" name="u"/>
<input type="text"  name="p"/>
<input type="submit"  value="submit"/>
<!--  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />  -->
</form>

<c:if test="${param.error != null}">
<font color="red">
<span>error in username or password</span>
</font>
</c:if>

</body>
</html>