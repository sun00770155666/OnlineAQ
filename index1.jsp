<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <style type="text/css">

        /* h1{text-align:center;letter-spacing: 20px;font-size: 50px;} */
        h2 {
            text-align: center;
            margin-bottom: 300px;
        }

        h2 a {
            color: purple;
            font-size: 30px;
            letter-spacing: 8px;
        }

        table {
            text-align: center;
            margin: 0px auto;
            font-size: 30px;
            margin-top: 25px;
        }

        #tr1 td {
            background: #ADDBE8;
            padding-left: 10px;
        }

        #ss {
            text-align: center;
            font-size: 21px;
            margin-top: 15px;
        }
    </style>
</head>

<body>
当前系统目录：<%=application.getRealPath("/") %><br>
session Id:<%=session.getId() %>
</body>
</html>
