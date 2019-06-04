
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
   <!-- <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script> -->
    <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <title>Title</title>
</head>
<body>
    <form action="<%=request.getContextPath()%>/hi/adduser" method="post">
        姓名：<input type="text" name ="name" id="name"> 性别：<input type="text" name="age" id ="age">
        <input type="button" value="提交" onclick="aa();">

    </form>
</body>
<script>
    function aa(){
        var name =document.getElementById("name").value;
        var age =document.getElementById("age").value;
        $.ajax({
            url:"<%=request.getContextPath()%>/hi/adduser1",
            dataType:"json",
            type:"post",
            data: {
                name : name,
                age :age
            },
            success : function(data){
                alert(data.name);
            }
        })
    }
</script>
</html>
