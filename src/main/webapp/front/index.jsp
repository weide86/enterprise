<%@ page import="com.enterprise.entity.ArticleCategory" %>
<%@ page import="com.enterprise.entity.Article" %>

<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/front/common/common.jsp" %>
<style>
    <%--.banners{--%>
        <%--padding: 130px 0px;width: 1240px;margin:0 auto;--%>
    <%--}--%>
    <%--.banners_li {--%>
        <%--width: 33.33%;--%>
        <%--text-align: left;--%>
    <%--}--%>
    <%--.banners ul li {--%>
        <%--box-sizing: border-box;--%>
        <%--float: left;--%>

    <%--}--%>
    <%--.banners_li a {--%>
        <%--display: block;--%>
        <%--text-align: center;--%>
        <%--border-right: 1px solid #E1E1E1;--%>
    <%--}--%>
    <%--a{--%>
        <%--text-decoration: none;--%>
        <%--color: #777777;--%>
    <%--}--%>
    <%--.banners_li a div {--%>
        <%--display: inline-block;--%>
        <%--cursor: pointer;--%>
        <%--zoom: 1;--%>
    <%--}--%>
    <%--.banners_li a h3 {--%>
        <%--font-size: 20px;--%>
        <%--color: #333333;--%>
        <%--line-height: 28px;--%>
        <%--text-align: left;--%>
        <%--cursor: pointer;--%>
    <%--}--%>
    <%--.banners_li a p {--%>
        <%--font-size: 14px;--%>
        <%--color: #939393;--%>
        <%--line-height: 28px;--%>
        <%--text-align: left;--%>
        <%--cursor: pointer;--%>
    <%--}--%>
    <%--.banners_li_last a {--%>
        <%--border-right: none;--%>
    <%--}--%>
    .photo{
        width:130px;
        height: 110px;
        float:left;
        margin-right: 20px;
    }
    .photo img{
        width:100%;
        height: 100%;
    }
</style>

<body>
<%@include file="/front/common/navigation.jsp" %>
<%@include file="/front/common/indexSlide.jsp" %>

<div class="warp_main">
    <div class="warp_left">
    <div class="warp_left_box">
    <h3>信息分类</h3>
    <ul>
    <c:forEach var="item" items="<%=SystemManage.getInstance().getArticleCategory()%>">
    <li <c:if test="${!empty code && code eq item.code}">class="active"</c:if> ><a href="<%=path%>/indexArticle/${item.code}">${item.catename}</a></li>
    </c:forEach>
    </ul>
    </div>
    </div>
    <div class="warp_right">
        <div class="breadcrumb">
            <a href="<%=path%>/index">最新消息</a>
            <%-->--%>
            <%--<a href="<%=path%>/indexArticle">信息分类</a>--%>
            <%--<%--%>
                <%--String code = (String)request.getAttribute("code");--%>
                <%--for (Article acl : SystemManage.getInstance().getArticle()) {--%>
                    <%--System.out.println(acl.getId());--%>
                <%--}--%>
                <%--if (code != null && code.length() != 0 ) {--%>
                    <%--for (ArticleCategory ac : SystemManage.getInstance().getArticleCategory()) {--%>
                        <%--if ((ac.getCode()).equals(code)) {--%>
            <%--%>--%>
            <%--><a href="<%=path%>/indexArticle/<%=ac.getCode()%>"><%=ac.getCatename()%>--%>
        <%--</a>--%>
            <%--<%--%>
                            <%--break;--%>
                        <%--}--%>
                    <%--}--%>
                <%--}--%>
            <%--%>--%>
        </div>
        <div style="overflow: hidden;">

            <c:forEach var="item" items="${pager.list}">
                <div class="photo">
                    <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath() %>${item.image}"/>
                </div>
                <div class="article_item">
                    <h2><a href="<%=path%>/article/${item.id}">${item.title}</a></h2>
                    <p class="article_item_message">
                            ${item.createtime} | 分类：${item.catename} | 浏览量：${item.hit}
                    </p>
                    <a href="article/${item.id}"><span>${item.description}…</span></a>
                </div>
            </c:forEach>
        </div>
        <div style="margin-top: 20px;">
            <%@include file="/front/common/page.jsp" %>
        </div>
    </div>
</div>

<%--<div class="banners" >--%>
    <%--<ul>--%>
        <%--<li class="banners_li">--%>
            <%--<a href="<%=path%>/article/JiaGeRiBao">--%>
                <%--<div>--%>
                    <%--<h3>粮食价格</h3>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%--<li class="banners_li">--%>
            <%--<a href="<%=path%>/article/XingYeZiXun">--%>
                <%--<div>--%>
                    <%--<h3>粮食资讯</h3>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%--<li class="banners_li">--%>
            <%--<a href="<%=path%>/article/JiaoYuPeiXun">--%>
                <%--<div>--%>
                    <%--<h3>教育培训</h3>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%--<li class="banners_li">--%>
            <%--<a href="<%=path%>/article/JiaZhengFuWu">--%>
                <%--<div>--%>
                    <%--<h3>家政服务</h3>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%--<li class="banners_li">--%>
            <%--<a href="<%=path%>/article/QiCheFuWu">--%>
                <%--<div>--%>
                    <%--<h3>汽车服务</h3>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%--<li class="banners_li banners_li_last">--%>
            <%--<a href="<%=path%>/article/ErShouShiChang">--%>
                <%--<div>--%>
                    <%--<h3>二手市场</h3>--%>
                <%--</div>--%>
            <%--</a>--%>
        <%--</li>--%>
    <%--</ul>--%>
<%--</div>--%>
<%@include file="/front/common/foot.jsp" %>
