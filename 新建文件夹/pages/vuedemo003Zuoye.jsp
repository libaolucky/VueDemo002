<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/9/16
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>v-on v-show v-for </title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

</head>
<body>
    <%--<div id="app">--%>
        <%--v-on 后面接的是 html的事件， 而 v-bind 后面接的html中的属性--%>
        <%--<input type="button" value="点击在ul中显示 葫芦娃的列表" v-on:click="showHuluWa()">--%>
        <%--<ul>--%>
            <%--<li v-for="(item,index) in hulus" :key="hulus.id">{{item.name}}</li>--%>
        <%--</ul>--%>
    <%--</div>--%>

    <!--作业1: 把 葫芦娃数据渲染到 下拉框中,, 当点击 六娃, 后面 接上 文本, 显示 隐身.-->
    <div id="app">
        <select id="" name="" v-on:click="showHuluWa()" v-model="selected">
            <option >请选择</option>
            <option v-for="(item,index) in hulus" :key="hulus.id" v-bind:value="item.spell">{{item.name}}</option>
        </select> <br>
        娃娃的技能：<textarea name="" cols="20" rows="10">{{selected}}</textarea>
        <br>
    </div>

    <script>
        var vm=new Vue({
           el:"#app",
           data: {
               hulus: [],
               selected:' '
           },
            methods: {
                showHuluWa: function () {
                    var arr=[
                        {
                            id: 1,
                            name: "大娃",
                            spell: "变大，力大无穷"
                        },
                        {
                            id: 2,
                            name: "二娃",
                            spell: "千里眼，顺风耳"
                        },
                        {
                            id: 3,
                            name: "三娃",
                            spell: "铜头铁臂"
                        },
                        {
                            id: 6,
                            name: "六娃",
                            spell: "隐身"
                        }
                    ];
                    this.hulus=arr;
                }
            }
        });


    </script>

</body>
</html>
