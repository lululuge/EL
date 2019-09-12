<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el</title>
</head>
<body>
    <%
        request.setAttribute("name", "luzan");
        session.setAttribute("age", 25);
    %>

    ${requestScope.name}
    ${sessionScope.age}
</body>
</html>
