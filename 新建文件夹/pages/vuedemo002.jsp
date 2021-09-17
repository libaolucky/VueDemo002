<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/9/16
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
</head>
<body>
    <div id="app">
        <%--vue 需要一个 跟目录标签 叫 app--%>
        <%--讲解一个概念，双向绑定，数据和页面的 展示的数据效果 是一起的，保持一致的；--%>
        <%--当 vue 中 data的数据发生了改变，那么展示的效果也发生了改变--%>
        姓名（以前这么写的）：<input type="text" value="白白"> <br>
             <%--vue的核心是把数据渲染到 html中，分为标签和文本，--%>
            <%--那么文本是用 插值表达式--%>
            姓名：{{name}} <br>

            <%--下面就是渲染到标签中--%>
            <%--v-bind 是绑定标签中的属性的，一经过绑定，数据就是动态的了，就要写data的key--%>
        vue-姓名：<input type="text" v-bind:value="name"> <br>
        vue-姓名 v-bind的缩写：<input type="text" :value="name"> <br>
            <%--以上是数据的单向绑定， 数据绑定到了 显示效果--%>

            vue-姓名 双向的绑定：<input type="text" v-model:value="name"> <br>
            <%--v-model 双向绑定 作用在 4个 范围上：--%>
                <%--input 标签， select 标签， textarea 标签  ， components组件--%>
        <%--v-model 是 v-bind 单向绑定的升级版，其本质是 一个 语法糖，什么是 语法糖？--%>
        <%--java中 for 循环就是 一个语法糖，for 循环的本质就是 while循环 ，语法糖就是简化了代码的书写--%>

            <%--只渲染一次的指令是 ， v-once--%>
            姓名：<span v-once>{{name}}</span>  <br>



    </div>


    <script>
        var wm=new Vue({
           el:"#app",
           data:{
               name:"白白111"
           }
        });
    </script>

</body>
</html>
