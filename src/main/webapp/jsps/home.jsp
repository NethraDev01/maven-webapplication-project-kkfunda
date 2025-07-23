<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>KK FUNDA Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon">
</head>
<body>
    <h1 align="center">Welcome to KK DevOps AWS with SRE</h1>
    <h2 align="center">KK FUNDA</h2>
    <hr><br>

    <h3>Server Side IP Address</h3>
    <p>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String serverIP = inetAddress.getHostAddress();
            String serverHost = inetAddress.getHostName();
        %>
        Server Host Name :: <%= serverHost %><br>
        Server IP Address :: <%= serverIP %>
    </p>

    <h3>Client Side IP Address</h3>
    <p>
        Client IP Address :: <%= request.getRemoteAddr() %><br>
        Client Name Host :: <%= request.getRemoteHost() %>
    </p>
    <hr>

    <div style="text-align: center;">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" width="100"><br><br>
        <strong>
            KK FUNDA,<br>
            Martha Halli, Bangalore,<br>
            +91-9676831734, kkeducationblr@gmail.com<br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </strong>
    </div>

    <hr>

    <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>

    <hr>
    <p align="center">KK FUNDA Training, Development Center.</p>
    <p align="center"><small>Copyrights 2024 by <a href="https://www.google.com/">KK FUNDA</a></small></p>
</body>
</html>
