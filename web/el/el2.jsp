<%@ page import="cn.luge.domain.User" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el</title>
</head>
<body>
    <%
        User user = new User();
        user.setName("luzan");
        user.setAge(24);
        user.setBirthday(new Date());
        request.setAttribute("u", user);
        List list = new ArrayList();
        list.add(user);
        request.setAttribute("list", list);
        Map map = new HashMap();
        map.put("gender", "男");
        map.put("user", user);
        request.setAttribute("map", map);
    %>

<%--    ${requestScope.u}--%>
    ${requestScope.u.birthday}<br>
    ${requestScope.u.birthday.month}<br>
    ${requestScope.u.birStr}<br>
    ${requestScope.list[0]}<br>
    ${requestScope.list[0].name}<br>
    ${map.gender}<br>
    ${map["gender"]}<br>
    ${map.user.name}<br>
    ${empty list}
    ${not empty map}
</body>
</html>
