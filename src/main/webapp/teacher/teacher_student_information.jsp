<%@ page contentType="text/html;charset=UTF-8" language="java" %>   <%--jsp--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    <%--jstl--%>
<%
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath() + "/";
%>  <%--取base--%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>" />
    <title>教师信息</title>
    <link rel="stylesheet" href="layuimini/lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="layuimini/css/public.css" media="all">
    <script src="layuimini/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="layuimini/lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
</head>
<body>

    <script type="text/javascript">
        $.ajax({
            url: 'student/queryStudent.do',
            data: {sid:${param.sid}},
            type: 'post',
            datatype: 'json',
            success: function (student) {
                $("#sname").html(student.sname);
                $("#snum").html(student.snum);
                $("#ssex").html(student.ssex);
                $("#sage").html(student.sage);
                $("#cname").html(student.cname);
                $("#sstatus").html(student.sstatus);
                $("#sremark").html(student.sremark);
                $("#idcard").html(student.idcard);
                $("#phone").html(student.phone);
                $("#address").html(student.address);
                $("#entime").html(student.entime);
            }
        });
    </script>

    <div>
        <h1 align="center">个人信息档案</h1>
        <table class="layui-table">
            <colgroup>
                <col width="200">
                <col>
            </colgroup>
            
            <tbody>
                <tr>
                    <td>姓名:</td>
                    <td id="sname"></td>
                </tr>
                <tr>
                    <td>学号:</td>
                    <td id="snum"></td>
                </tr>
                <tr>
                    <td>性别:</td>
                    <td id="ssex"></td>
                </tr>
                <tr>
                    <td>年龄:</td>
                    <td id="sage"></td>
                </tr>
                <tr>
                    <td>班级:</td>
                    <td id="cname"></td>
                </tr>
                <tr>
                    <td>状态:</td>
                    <td id="sstatus"></td>
                </tr>
                <tr>
                    <td>备注:</td>
                    <td id="sremark"></td>
                </tr>
                <tr>
                    <td>身份证号码:</td>
                    <td id="idcard"></td>
                </tr>
                <tr>
                    <td>手机号码:</td>
                    <td id="phone"></td>
                </tr>
                <tr>
                    <td>家庭住址:</td>
                    <td id="address"></td>
                </tr>
                <tr>
                    <td>进校时间:</td>
                    <td id="entime"></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>