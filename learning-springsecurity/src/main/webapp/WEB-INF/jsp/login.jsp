<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <c:url value="/login" var="loginUrl"/>
    <form action="${loginUrl}" method="post">   <!-- 1 -->
        <c:if test="${param.error != null}">     <!-- 2  -->
            <p>
                Invalid username and password.
            </p>
        </c:if>
        <c:if test="${param.logout != null}">    <!-- 3  -->
            <p>
                You have been logged out.
            </p>
        </c:if>
        <p>
            <label for="username">Username</label>
            <input type="text" id="username" name="username"/><!-- 4  -->
        </p>
        <p>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/><!-- 5  -->    </p>
        <input type="hidden"  
            name="${_csrf.parameterName}"
            value="${_csrf.token}"/><!-- 6  -->
        <button type="submit" class="btn">Log in</button>
    </form>
</body>
</html>