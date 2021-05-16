
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!--头部开始-->
<div class="top">
    <c:if test="${username!=null}">
        <span style="color: black;font-size: 20px;font-weight: bold;">欢迎：${username}</span>
    </c:if>
    <c:if test="${username==null}">
        <script type="text/javascript">
            alert("请先登录！");
            window.location.href="login.jsp";
        </script>
    </c:if>
    <div class="top-1">
        <ul class="nav nav-pills">
            <li><a href="index.jsp">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="shopping.jsp">&nbsp;&nbsp;&nbsp;商城&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="cart.jsp">&nbsp;&nbsp;&nbsp;购物车&nbsp;&nbsp;&nbsp;</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    &nbsp;&nbsp;&nbsp;个人账户&nbsp;&nbsp;&nbsp;<span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="userinformation.jsp">个人信息</a></li>
                    <li><a href="order.jsp">个人订单</a></li>
                    <li><a href="useraddcommodit.jsp">发布商品</a></li>
                </ul>
            </li>
            <li><a href="#">&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;</a></li>
            <c:if test="${username!=null}">
            <li><a href="/LoginOut">&nbsp;&nbsp;&nbsp;退出登录&nbsp;&nbsp;&nbsp;</a></li>
            </c:if>

            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
    </div>
    <div class="top-2">
        <input type="text" placeholder="请输入要查询物品的信息" class="input-top" id="findname">
    </div>
    <div class="top-3">
        <a href="javascript:findcommoditbyname();" class="button-top"><span>搜索</span></a>
    </div>
</div>
    <!--头部结束-->
