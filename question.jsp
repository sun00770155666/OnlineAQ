<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        function check() {
            var title = document.getElementById("text1");
            var desc = document.getElementById("text2");
            if (title.value == null || title.value == "") {
                alert("必须填写问题！");
                return false;
            }
            if (desc.value == null || desc.value == "") {
                alert("必须填写问题描述！");
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
        h1 {
            text-align: center;
            letter-spacing: 20px;
            font-size: 50px;
        }

        h2 {
            text-align: center;
        }

        a {
            color: purple;
            font-size: 30px;
            letter-spacing: 6px;
        }

        #form1 {
            text-align: center;
            line-height: 60px;
            font-size: 30px;
        }

        #text1 {
            margin-left: 20px;
            padding: 10px 17px;
            vertical-align: middle
        }

        #text2 {
            margin-left: 10px;
            margin-top: 10px;
            padding: 15px 30px;
            vertical-align: middle
        }

        #sub {
            margin-top: 30px;
            padding: 15px 40px;
        }
    </style>
    <title>Insert title here</title>
</head>
<body>
<h1>我要提问</h1>
<h2><a href="question_showQuestions">返回首页</a></h2>
<div id="div1">
    <s:form action="question_save" method="post" theme="simple" id="form1" onsubmit="return check()">
        <div>问题：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="quest.title" id="text1"/></div>
        <div>问题描述：<s:textarea name="quest.detailDesc" id="text2"></s:textarea></div>
        <s:submit value="保存问题" id="sub"/>
    </s:form>
</div>
</body>
</html>