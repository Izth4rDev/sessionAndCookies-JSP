
<%@ page contentType="text/html;charset=UTF-8"%>

<%
    String username = null;
    String sessionId = null;

    Cookie[] cookies = request.getCookies();

    if(cookies != null){
        for(Cookie cookie: cookies){
            if(cookie.getName().equals("userName")){
                username = cookie.getValue();
            }
            if(cookie.getName().equals("sessionId")){
                sessionId = cookie.getValue();
            }
        }
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Bienvenido !!!!!</h1>
    <p><%=username%></p>
    <p><%=sessionId%></p>
</body>
</html>
