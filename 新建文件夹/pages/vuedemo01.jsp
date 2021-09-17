<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/9/15
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第一个vue demo</title>
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

</head>
<body>
<div>
学习 插值 表达式 {{}}
 vue 常用在 单个页面项目中，什么叫做单个页面项目，常用于 手机移动端，指的是整个项目 只有1个页面
通过 锚点  来 调转 没有 a ，这个锚点的跳转就叫做路由
    单个页面项目的  优缺点：
 优点： 都是html， 代码运行流畅, 可以有很多组件，可以重复使用
 缺点： 不利于seo 百度的收录
</div>

    <h1>讲解 jquery和 vue的不同</h1>
    <div>
        jquery:他是 dom 驱动的，所有看到的页面都要 一行一行的 把代码 写出来；不是自动的， 是手动的
    <h2 id="jq-helloWord">
         <%--对比一下，在div中 插入数据  你好，世界--%>
    </h2>
    </div>

    <div id="app">
        vue 因为是单页面的，所以 必须只有1个跟标签，以上的 h1 和 div都不归vue负责<br>
        插值表达式：1.可以直接调用 js中的方法
                  2.他可以进行计算
                  3.可以用 加号 做拼接 就是和加法计算不同
                  4. 插值表达式，显示 对象的格式是  xxx点yyy
                   5.插值表达式 可以做三目（三元）运算 非常重要
        <h2>
            {{}} 双括弧是 插值表达式 <br>
            {{sayHello}} <br>
            {{sayHello}} 的长度是 {{sayHello.length}}  <br>
            {{sayEating}} <br>
            {{lightLine}} <br>
            {{apple.pname}} 的价格是： {{apple.price /100}} 元/斤
            {{apple.pname}} 的价格是： {{apple.price +''+ 100}} 元/斤 <br>
            <%--当前 {{apple.pname}} 的价格我 {{apple.price / 100 >2.5 ? '太贵了，买不起' :'好便宜啊，剁手，买买买'  }} <br>--%>
               使用 v-if , 当前 {{apple.pname}} 的价格我   <br>
            <%--指令中的属性里面不能用 插值表达式--%>
            <%--<div v-if="apple.price /100  >2.5 ">--%>
                <%--<span style="color: red">太贵了，买不起</span>--%>
            <%--</div>--%>
            <%--<div v-else>--%>
                <%--<span style="color: green">好便宜啊，剁手，买买买</span>--%>
            <%--</div>--%>

            练习： 2.5 太贵了， 大于 2 考虑一下 黄色  大于0 可以买  绿色
            <div v-if="apple.price /100 > 2.5">
                <span style="color: red">太贵了，买不起</span>
            </div>
            <div v-else-if="apple.price /100 > 2 && apple.price /100 <= 2.5">
                <span style="color: yellow">考虑一下</span>
            </div>
            <div v-else>
                <span style="color: green">可以买</span>
            </div>


            <%--刚刚学完 vue的插值表达式，那么 知道 vue的根本核心是这样的， 把数据显示到前端--%>
            <%--如果只使用 插值表达式 显示数据，那么 他的 显示数据的内容 大概是4种，如果想要--%>
            <%--达到效果更加强的效果，那么 插值表达式 是 不能满足的，所以 就有了新的方式，叫做 指令--%>
            <%--因为 前端界面是html的， 插值表达式 他只能 对文本信息做出数据的渲染，，， 没有对标签做出数据的增强--%>
            <%--那么我们要学习更强的，就叫做 指令！！！！  用来弥补和增强 插值表达式的不足--%>
            <%--比如说  动态改变 金钱的颜色， 超过2.5是红色，低于2.5元是绿色--%>
             <%--上面的 改变颜色 不太好 做出来，所以 我们 引出了 指令，指令是作用在 html标签上的--%>
            <%--指令（Directives） 是带有 v- 前缀的特殊 attribute， 指令 attribute 的值预期是单个 JavaScript 表达式（v- for是例外情况，稍后我们将）--%>
            <%--指令的职责是，当表达式的值改变时，将其产生的连带 影响，响应式的做用于 DOM--%>

           <%--学习下面的指令，  v-text ， v-html--%>
            <%--v-text:就是插值表达式--%>
            <span v-text="apple.pname"></span>的价格是：{{apple.price /100}} 元/斤 <br>
            <%--v-text 的优点， 可以显示出 data数据中的 所有数据--%>
            <span v-text="vtext"></span> <br>  <%-- v-text 不编译文本中的 html信息--%>
            <span v-html="vhtml"></span> <br> <%--  v-text 编译文本中的 html信息  一般这个用的多 场景是：显示年龄超过50 变红色--%>
            <span>{{vtext}}</span> <br> <%--  插值表达式 也不编译文本中的 html信息--%>
            <%--{{vtext}} 想要正常的显示 {{}} 中的内容 是不行的--%>
            <span v-pre>{{vtext}}</span> <br>
            <%--v-cloak 会隐藏编译的--%>


        </h2>

    </div>




<script>
    //使用 jquery
    $(function () {
        // js的思想，是找到id xx 的DOM,给他添加数据
        //如果我想修改 显示效果，改成 你好，超市  ，就需要改变 jq的代码
        //那么久比较麻烦， 因为 你好，世界 ，没有 存统一的变量的地方
        //jquery: 缺点：就是数据没有统一的 位置可以存储
        $("#jq-helloWord").text("你好，世界！");
    })

    //学习 vue, vue 和java很像很像
        var vm=new Vue({
            // new Vue() 括号中，小括号中，一般放的都是 {}，而大括号就是json ，对象，k-v结构
            //这个大括弧中， 放的就是 vue的选项，选项在vue官网可以看到， 选项有多少中呢？
            // 作业2： 写出 vue 选项的 思维导图！！
            el:'#app'  // 把html中的div id为app的dom 作为 挂载点
                     //什么叫做挂载点： vue 是以数据驱动的， new vue 中都是诞生数据
                    //有了数据， 就需要 一个 dom，显示数据，  张三是元数据，
            ,data:{
                sayHello:"你好世纪",
                sayEating:"加油,干饭人",
                lightLine:"发射动感光波",
                apple:{
                    pid:15,
                    pname:"红富士", // vue是数据驱动  什么是数据驱动？ 就是数据一改 ，前端就进行改变
                    price:250  //250 分单价元 ---显示给前端后， 显示成 元
                },
                vtext:'<h1>你看我是标题吗？</h1>',
                vhtml:'<h1>你看我是标题吗？</h1>'
            }
        });

</script>


</body>
</html>
