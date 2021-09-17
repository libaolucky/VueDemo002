<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/9/17
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加产品</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

</head>
<body>
    <h1>添加产品</h1>
    <div id="app" style=" width:800px;height: 1024px; border:1px solid green">
      请添加水果名称：<input type="text" placeholder="名称不能超过7个字符" v-model:value="zilength">
        <span v-model:value="zilength">字符长度是：{{zilength.length}}</span>

        <div id="len" v-if="zilength.length > 7" v-model:value="zilength">
            <span style="color: #00FFFF">您的名称大于7，请重新输入名称！</span>
        </div>
            <%--<script>--%>
                <%--var ll=document.getElementById("len");--%>
                <%--if(ll>7)--%>
                    <%--alert("您的名称大于7，请重新输入名称！");--%>
            <%--</script>--%>

      <br>
        修改前值为：芒果，修改后值为： <br>

        请添加水果价格：<input type="text" v-model:value="price">分 number <br>
        请添加水果数量：<input type="text" v-model:value="number">个
        <input type="button" value="-" @click="jian(number)">
        <input type="text" v-model:value="number">
        <input type="button" value="+" @click="jia(number)"><br>
        因为是number所以没有长度：{{number}}  <br>
        自动算水果价格：<span style="color: red">{{ price /100 * number }}</span> 元
        <br>

        请添加水果简介：<br>
        <textarea name="" cols="25" rows="15"> </textarea>
        <br>
        <div id="boxzi">
            请添加水果有无包装盒：
            <input type="radio"  value="有" v-model="picked" >有
            <input type="radio" value="没有" v-model="picked">没有  &nbsp;
            <span>{{ picked }}</span>
        </div>
        请添加水果状态（下拉）：
        <select id="" name="" v-on:click="showHuluWa()" v-model="selected">
            <option v-for="(item,index) in status" :key="status.id" v-bind:value="item.id">{{item.name}}</option>
        </select>
        选中的水果状态是：{{selected}} <br>

        请添加水果口味（多选）： <br>
        <input type="checkbox" value="1" v-model="checkedNames">酸甜  <br>
        <input type="checkbox"  value="2" v-model="checkedNames">酸   <br>
        <input type="checkbox"  value="3" v-model="checkedNames">甜   <br>
        <input type="checkbox"  value="4" v-model="checkedNames">苦涩   <br>
        <input type="checkbox"  value="5" v-model="checkedNames">臭中香如榴莲  <br>
        <span>选中的口味代码: {{ checkedNames }}</span>

    </div>



<script>
    var vm=new Vue({
        el:'#app',
        data:{
            zilength:0,
            price:0,
            number:0,
            picked:'',
            status: [],
            selected:'',
            checkedNames: []
        },
        methods: {
            Cishu:function () {
                    alert("您的名称大于7，请重新输入名称！");
            },
            jia:function (number) {
                if(this.number >0) {
                    this.number++;
                }
            },
            jian:function (number) {
                if(this.number >0) {
                    this.number--;
                }
            },
            showHuluWa: function () {
                var arr=[
                    {
                        id: 1,
                        name: "新鲜"
                    },
                    {
                        id: 2,
                        name: "蔫了"
                    },
                    {
                        id: 3,
                        name: "腐烂"
                    }
                ];
                this.status=arr;
            }
        }
    })
</script>

</body>
</html>
