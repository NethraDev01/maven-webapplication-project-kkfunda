<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>KK FUNDA Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon">

    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f8fb;
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top: 40px;
        }
        h1, h2, h3 {
            color: #003366;
            text-align: center;
        }
        p {
            font-size: 16px;
        }
        hr {
            border: 0;
            border-top: 2px solid #ccc;
            margin: 20px 0;
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
        }
        .logo {
            display: block;
            margin: 20px auto;
            width: 100px;
        }
        .contact {
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to AWS DevOps with SRE in TELUGU</h1>
        <h2>KK FUNDA</h2>
        <hr>

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

        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" class="logo">

        <div class="contact">
            KK FUNDA,<br>
            Martha Halli, Bangalore,<br>
            +91-9676831734, kkeducationblr@gmail.com<br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </div>

        <hr>

        <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>

        <hr>

        <div class="footer">
            <p>KK FUNDA Training, Development Center.</p>
            <p><small>Copyrights 2024 by <a href="https://www.google.com/">KK FUNDA</a></small></p>
        </div>
    </div>

</body>
</html>
