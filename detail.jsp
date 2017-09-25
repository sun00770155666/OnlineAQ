<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/style.css" type="text/css"></link>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        function check() {
            var title = document.getElementById("ans");
            if (title.value == null || title.value == "") {
                alert("必须填写回答！");
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
        * {
            margin: 0px auto;
        }

        div {
            font-size: 25px;
            line-height: 20px;
        }

        #nb, #nn, #nc {
            font-size: 25px;
            line-height: 45px;
        }

        div span {
            font-size: 25px;
            background: #94EE94;
        }

        dl dd {
            background: #94EE94;
            width: 400px;
            font-size: 25px;
            margin-left: 130px;
        }

        dt {
            font-size: 25px;
        }

        #nb {
            margin-left: 600px;
            margin-top: 50px;
        }

        #shang span {
            vertical-align: top;
            background: none;
            font-size: 25px;
        }

        textarea {
            padding: 30px 95px;
        }

        #xia {
            line-height: 60px;
        }

        #xia a {
            vertical-align: middle;
        }

        #xia input {
            margin-left: 190px;
            padding: 10px;
        }
    </style>
</head>
<body>
<s:include value="header.jsp"></s:include>
<div id="nb">
    <div id="nn">问题：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><s:property value="quest.title"/></span></div>
    <div id="nc">问题描述：<span><s:property value="quest.detailDesc"/></span></div>
    <dl>
        <dt>网友回答：
            <s:iterator value="ans" id="an" status="sum">
                <%-- <div id="sss" style="background:#94EE94;width:400px;"><span><s:property value="#an[1]" /></span><br><span><s:property value="#an[0]" /></span></div> --%>
        <dd><s:property value="#an[1]"/></dd>
        <dd><s:property value="#an[0]"/></dd>
        <br>
        </s:iterator>
        </dt>
    </dl>
    <form action="question_keep" method="post" id="form1" onsubmit="return check()">
        <s:hidden name="quest.id"></s:hidden>
        <div id="shang"><span>我来回答：</span><s:textarea name="answers" id="ans"></s:textarea></div>
        <p id="xia"><input type="submit" value="提交答案"/>&nbsp;&nbsp;&nbsp;<a href="question_showQuestions">返回首页</a></p>
    </form>
</div>
</body>
</html>