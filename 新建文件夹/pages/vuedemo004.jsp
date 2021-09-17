<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/9/17
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/res/layui-v2.5.6/layui/css/layui.css">
    <script src="/res/layui-v2.5.6/layui/layui.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

</head>
<body>
<div id="app">
    <%--form:post 按 tab快捷键--%>
    <form action="https://www.baidu.com" method="post" @submit.prevent="onSubmit" id="myForm">
        账号：<input type="text" name="adminName"> <br>
        密码：<input type="password" name="adminPwd"> <br>
        <input type="submit" value="登录">
    </form>
</div>

<script>
    var vm=new Vue({
        el:'#app',
        methods:{
            onSubmit:function (e) {
                //凡是 事件 都可以有个 e e是事件的缩写
                console.log(e);
                console.log(e.target); //vue 的事件可以通过 e.target 拿到标签中的dom元素

                var form = document.getElementById("myForm");
                console.log(form);
                // 拿取form 表单中的数据
                //var formData=new FormData(form); //课下自已学习
                var formData = new FormData(e.target); //课下自已学习
                console.log(formData.get('adminName')); //脱离了jquery!!
                // 作业1：:引入 axios ，写入 ajax发送到 通过 post 发送给百度！！！
                axios.post('https://www.baidu.com')
                .then(function (response) {  //ajax中的success
                        console.log(response.data); //  vue !!!
                    })
                    .catch(function (error) {   // ajax中的error
                            console.log(error);
                        });
                    return false;
                }
            }
    })
</script>
</body>
</html>
