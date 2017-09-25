<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        function nb() {
            var bill = document.getElementById("bill");
            if (bill.value == 2) {
                $("#name").attr("readonly", "true");
                $("#price").attr("readonly", "true");
                $("#count").attr("readonly", "true");
                $("#name").attr("readonly", "true");
                $("#bill").attr("disabled", "disabled");
                $("#submit").attr("disabled", "disabled");
            }
        }
        function check() {

            var name = document.getElementById("name");
            var desc = document.getElementById("nam");
            var count = document.getElementById("count");
            var reg = /(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]([0-9])?$)/;
            if (name.value == null || name.value == "") {
                alert("问题名称不能为空！");
                return false;
            }
            if (desc.value == null) {
                alert("问题描述不能为空！");
                return false;
            }
            if (count.value == null || count.value == "") {
                alert("回答次数不能为空！");
                return false;
            }
            return true;
        }
        function back() {
            window.history.go(-1);
        }
    </script>
    <style type="text/css">
        table {
            text-align: center;
            width: 900px;
        }

        div {
            margin-left: 500px;
            margin-top: 60px;
        }

        table tr td {
            padding: 10px;
            font-size: 20px;
            width: 150px;
        }
    </style>

</head>
<body onload="nb()">
<div>
    <form action="question_update" method="post" id="form1" onsubmit="return check()">
        <s:hidden name="quest.id" id="id"></s:hidden>
        <table cellpadding="10" cellspacing="4" border="1">
            <%-- <tr>
             <td align="left">问题编号</td>
             <td><s:textfield  name="quest.id"  readonly="true"></s:textfield></td>
            </tr> --%>
            <tr>
                <td align="left">问题名称</td>
                <td><s:textfield name="quest.title" id="name"></s:textfield></td>
            </tr>
            <tr>
                <td align="left">问题描述</td>
                <td><s:textarea name="quest.detailDesc" id="nam"></s:textarea></td>
            </tr>
            <tr>
                <td align="left">回答次数</td>
                <td><s:textfield name="quest.answerCount" id="count"></s:textfield></td>
            </tr>
            <tr>
                <td colspan="2"><s:submit value="提交" id="submit"></s:submit><input type="button" value="返回"
                                                                                   onclick="back()"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>