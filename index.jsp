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
<s:include value="header.jsp"></s:include>

<h2><a href="question.jsp">我要提问</a></h2>
<div>
    <table cellpadding="0" cellspacing="15" border="0">
        <tr id="tr1">
            <td>序号</td>
            <td>问题</td>
            <td>回答次数</td>
            <td>最后修改</td>
            <td>操作</td>
        </tr>
        <s:iterator value="questionList" id="quest" status="sum">
            <tr <s:if test="#sum.even">bgColor="#94EE94"</s:if>>
                <td id="ss"><s:property value="#quest.id"/></td>
                <td><a href="question_findDetail?quest.id=${quest.id}"
                       <s:if test="#quest.answerCount==0">style="color:red;"</s:if>><s:property
                        value="#quest.title"/></a></td>
                <td><s:property value="#quest.answerCount"/></td>
                <td><s:property value="#quest.lastModified"/></td>
                <td><a href="question_showAll?quest.id=${quest.id}">修改</a>&nbsp;
                    <a href="question_delete?quest.id=${quest.id}">删除</a></td>
            </tr>
        </s:iterator>
    </table>
    <div id="ss">
        共发现<s:property value="page.totalCount"/>条&nbsp;&nbsp;<s:property value="page.index"/>/<s:property
            value="page.totalPageCount"/>页&nbsp;&nbsp;&nbsp;
        <s:if test="page.index!=1">
            <a href="question_showQuestions?page.index=1">首页</a>
            <a href="question_showQuestions?page.index=${page.index-1}">上一页</a>
        </s:if>
        <s:else>
            <a href="javascript:void(0);" style="background-color:#eaeaea; color:#555555;">首页</a>
            <a href="javascript:void(0);" style="background-color:#eaeaea; color:#555555;">上一页</a>
        </s:else>
        <s:if test="page.index<page.totalPageCount">
            <a href="question_showQuestions?page.index=${page.index+1}">下一页</a>
            <a href="question_showQuestions?page.index=${page.totalPageCount}">尾页</a>
        </s:if>
        <s:else>
            <a href="javascript:void(0);" style="background-color:#eaeaea; color:#555555;">下一页</a>
            <a href="javascript:void(0);" style="background-color:#eaeaea; color:#555555;">尾页</a>
        </s:else>
    </div>
</div>
当前系统目录：<%=application.getRealPath("/") %><br>
session Id:<%=session.getId() %>
</body>
</html>
