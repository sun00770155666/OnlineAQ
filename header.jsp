<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
    String path = request.getContextPath();
%>
<link type="text/css" rel="stylesheet" href="<%=path%>/css/style.css"/>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">
    //登录
    function doLogin() {
        var name = $('#loginName').attr('value');
        var pw = $('#loginPassword').attr('value');
        var url = 'question_login.action?username=' + name + '&password=' + pw;
        if (name != null && name != '' && pw != null && pw != '') {
            $.ajax({
                url: url,
                type: "post",
                dataType: "json",
                async: false,
                beforeSend: function (data) {
                    $("#loginButton").attr("disabled", true);
                },
                success: function (data) {
                    if (data.username != null) {
                        $("#msg").html("&nbsp;<br>");
                        var html = "欢迎 &nbsp; " + data.username + "&nbsp;&nbsp;&nbsp;<label class='ui-green'><input type='button' name='search' value='退   出' onclick='document.location=\"houseUser_loginout.action\"'/></label>";
                        $("#topLoginDiv").html(html);


                    } else {
                        $("#msg").html(data.message);
                        $("#msg").css("color", "red");
                    }

                    $("#loginButton").attr("disabled", false);
                }
            });
            window.location.reload();
        } else {
            alert("请输入用户名或密码！");
        }
    }

</script>

<div id="header" class="wrap">
    <div>
        <div id="msg" align="center">&nbsp;<br></div>
    </div>
    <div align="right">
        <form method="post" id="loginFrom" action="question_login">
            <s:if test="#session.loginUser==null">
                <div id="topLoginDiv" style="display: inline;font-size:1px;">
                    用户名:&nbsp;<s:textfield name="name" id="loginName" required="true" size="15"/>
                    &nbsp;密&nbsp;&nbsp;码:&nbsp;<s:password name="password" id="loginPassword" required="true"
                                                           size="15"/>
                    <label class="ui-green">
                        <input type="button" name="loginButton" id="loginButton" value="登录" onclick="doLogin();"/>
                    </label>
                </div>
            </s:if>
            <s:else>
                <div id="topLoginDiv" style="display: inline;font-size:1px;">
                    <label>
                        欢迎 &nbsp;<s:property value="#session.loginUser"/>
                    </label>
                    &nbsp;&nbsp;&nbsp;
                    <label class='ui-green'><input type='button' name='search' value='退   出'
                                                   onclick='document.location="question_loginout.action"'/></label>
                </div>
            </s:else>
        </form>
    </div>
</div>
<h1>在线问答</h1>