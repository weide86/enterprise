<%--
  Created by IntelliJ IDEA.
  User: Cesiumai
  Date: 2016/6/15
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>
<style>

    .nav{
        list-style: none outside none;
    }
    .nav li {
        width: 77px;
        height: 107px;
        float: left;
        line-height: 107px;
        font-size: 17px;
        color: #262626;
        margin-left: 8px;
        margin-right: 8px;
        text-align: center;
    }
    .nav li a {
        text-decoration: none;
        color: inherit;
        padding-top: 10px;
        font-family: Microsoft Yahei;
    }


    .nav li a:hover{
        border-top: 3px solid #424C55;

    }
</style>
<div style="width:1200px;height: 107px;margin: 0 auto;">
    <div style="width: 200px;height: 107px;float: left;margin-top: 10px;">
        <a href="">
        <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath() %><%=SystemManage.getInstance().getSystemSetting().getLogo() %>"
             width="201" height="70"/>
            </a>
    </div>
    <div style="width: 1000px;height: 107px;float: right;overflow: hidden">
        <%--<div style="width: 768px;height: 107px;float: right;overflow: hidden">--%>
        <ul class="nav">
            <li>
                <a href="<%=path%>/index">首 页</a>
            </li>
            <li>
                <a href="<%=path%>/about">关于我们</a>
            </li>
            <li>
                <a href="<%=path%>/contact">联系我们</a>
            </li>
            <li>
                <a href="<%=path%>/article/FangWuXinXi">房屋信息</a>
            </li>
            <li>
                <a href="<%=path%>/article/JiaZhengFuWu">家政服务</a>
            </li>
            <li>
                <a href="<%=path%>/article/QiCheFuWu">汽车服务</a>
            </li>
            <li>
                <a href="<%=path%>/article/ErShouShiChang">二手市场</a>
            </li>
            <li>
                <a href="http://wwww.cctin.com/front/common/register.html" target="_blank">发布信息</a>
            </li>
            <li style="width:110px;">
                <a href="http://wwww.cctin.com/front/common/zhidu.html" target="_blank">信息审核制度</a>
            </li>
            <li>
                <a href="http://wwww.cctin.com/front/common/login.html" target="_blank">登录</a>
            </li>

        </ul>
    </div>
</div>