<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增业务</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/res/layui-v2.5.6/layui/css/layui.css">
    <script src="/res/layui-v2.5.6/layui/layui.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

</head>
<body>
    <h1>新增业务</h1>
    <form action="" method="post">
    业务类型： <select id="typeSelect" name="">
        <option value="1" >信用卡</option>
        <option value="2" >开户</option>
        <option value="3" >储蓄卡</option>
    </select>
    <br>
    排队号：<input type="text" name="" /> <br>
        备注信息：<textarea name="" cols="30" rows="10"></textarea>
        <br>
        <input type="submit" value="确认增加">
    </form>

    <div>
        请选择你的英雄：<select id="heroSelect" name="">
        <option value="1" >韩信</option>
        <option value="2" >赵云</option>
        <option value="3" >貂蝉</option>
    </select>
    </div>


<script>
    $(function () {
        //使用 高级版的  ajax axios 异步请求
        // 为给定 ID 的 user 创建请求
        axios.get('/type/selectAll')
            .then(function (response) {  //ajax中的success
                console.log(response.data.data); //  vue !!!
                //response.data 第一个date是和ajax的date， 第二个date是遍历date
                $("#typeSelect").empty();
                $.each(response.data.data,function (index,item) {
                    //console.log(item.typeNames)
                    var typeNames = item.typeName;
                    var optionDom = $("<option value='1'>"+typeNames+"</option>")
                    $("#typeSelect").append(optionDom);//ajax异步下拉框

                    //支持 Promise 比ajax这回调的牛逼
                });

            })
            .catch(function (error) {   // ajax中的error
                console.log(error);
            });





            //发送ajax 得到数据后渲染到 select 框中
            //异步 刷新 layui 的下拉框
        //方法1：
        // $.ajax({
        //   url: '/type/selectAll',
        //   type: 'post',
        //   dataType: 'json',
        //   success: function (res) {
        //       console.log(res);
        //       //如果有数据 可以用 这个 $("#typeSelect").empty() 把下拉框下面的数据 清空
        //       //给id为typeSelect 的 遍历 渲染数据
        //       //var select = $("#typeSelect");
        //       $.each(res.data, function (index, item) {
        //           //方法1：
        //           //select.append(new Option(item.typeName,item.id));  //在下拉菜单里添加元
        //       });
        //   }
        // });

        //方法2：
        // $.ajax({      //axios是ajax的大哥
        //     url:'/type/selectAll',
        //     type:'post',
        //     dataType:'json',
        //     success:function (res) {
        //         console.log(res.data)
        //         //       //如果有数据 可以用 这个 $("#typeSelect").empty() 把下拉框下面的数据 清空
        //         $("#typeSelect").empty();//把下拉框下面的数据清空
        //         //给id为 typeSelect 渲染数据
        //         $.each(res.data,function (index,item) {
        //             //console.log(item.typeNames)
        //             var typeNames = item.typeName;
        //             var optionDom = $("<option value='1'>"+typeNames+"</option>")
        //             $("#typeSelect").append(optionDom);//ajax异步下拉框
        //
        //             //支持 Promise 比ajax这回调的牛逼
        //         });
        //     }
        // });

        // jquery 的数据遍历！！  $.each(数组，方法 （数组索引，具体的值）{方法执行的体} )
        // int age=5 String name="张三"
        // 在js当中 大括号就是 对象，对象都可以成为json 中括号都是数组（集合）
        // 中括号可以包含很多的大括号 这叫对象的集合
        // var names=new Array();
        // names.push("唐僧");
        // names.push("悟空");
        // names.push("八戒");
        // names.push("沙僧");
        // names.push("小白龙");
        // console.log(names);
        // $("#heroSelect").empty(); //清空数据
        // $.each(names,function (index,value) {
        //    console.log(index)
        //    console.log(value)
        //     console.log("============================")
        //     $("#heroSelect").append("<option value='1' >"+value+"</option>")
        // });

        //作业： 自已写一个葫芦娃的数组
        // ul ---li ， 把以上的 葫芦娃的数据 遍历到 li标签当中


    });

</script>
</body>
</html>
