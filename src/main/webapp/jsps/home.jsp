<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f3f8ff;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #2c3e50;
        }

        header {
            text-align: center;
            padding: 20px;
            background-color: #0077cc;
            color: white;
        }

        .container {
            padding: 30px;
            max-width: 800px;
            margin: auto;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 12px;
        }

        .info-box {
            background-color: #eef5ff;
            padding: 15px 20px;
            margin: 20px 0;
            border-left: 5px solid #0077cc;
        }

        .footer {
            text-align: center;
            font-size: 14px;
            padding: 20px;
            background-color: #f0f0f0;
        }

        a.button {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #0077cc;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: background 0.3s;
        }

        a.button:hover {
            background-color: #005fa3;
        }

        .contact {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
            margin: 30px 0;
        }

        .contact img {
            width: 100px;
        }

        .contact-info {
            font-weight: bold;
        }

    </style>
</head>
<body>
    <header>
        <h1>Welcome to KK DevOps</h1>
        <h2>KK FUNDA</h2>
    </header>

    <div class="container">
        <div class="info-box">
            <h3>Server Side IP Address</h3>
            <p>
                <%
                    String ip = "";
                    InetAddress inetAddress = InetAddress.getLocalHost();
                    ip = inetAddress.getHostAddress();
                    out.println("Server Host Name: " + inetAddress.getHostName() + "<br>");
                    out.println("Server IP Address: " + ip);
                %>
            </p>
        </div>

        <div class="info-box">
            <h3>Client Side IP Address</h3>
            <p>
                <%
                    out.print("Client IP Address: " + request.getRemoteAddr() + "<br>");
                    out.print("Client Host Name: " + request.getRemoteHost());
                %>
            </p>
        </div>

        <div class="contact">
            <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
            <div class="contact-info">
                KK FUNDA,<br>
                Martha Halli, Bangalore<br>
                +91-9676831734<br>
                kkeducationblr@gmail.com<br>
                <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
            </div>
        </div>

        <div style="text-align: center;">
            <p>Service:</p>
            <a href="services/employee/getEmployeeDetails" class="button">Get Employee Details</a>
        </div>
    </div>

    <div class="footer">
        <p>KK FUNDA Training & Development Center.</p>
        <p><small>© 2024 by <a href="https://www.google.com/">KK FUNDA</a></small></p>
    </div>
</body>
</html>
