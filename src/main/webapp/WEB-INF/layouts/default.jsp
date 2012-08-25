﻿<%--
  默认模板
  User: baitao.jibt@gmail.com
  Date: 12-8-24
  Time: 下午15:51
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset='utf-8'>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta name="robots" content="index, follow"/>
    <meta name="keywords" content=""/>
    <meta name="title" content=""/>
    <meta name="description" content=""/>
    <title><sitemesh:title/> - 山东省金融信息工程技术研究中心</title>
    <link rel="shortcut icon" href="${ctx}/static/favicon.ico" type="image/x-icon" />
    <link href="${ctx}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/css/style.min.css" rel="stylesheet" type="text/css" />
    <script src="${ctx}/static/js/jquery.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <sitemesh:head/>
</head>
<body>
<div class="container">
    <%@ include file="/WEB-INF/layouts/header.jsp" %>
    <sitemesh:body/>
    <!-- 友情链接 -->
    <div class="row">
    <span class="span13">
        <ul id="friLnk" class="unstyled">
            <li class="friLnkT"><strong>友情链接</strong></li>
            <c:forEach items="${links}" var="link" begin="0" step="1">
                <li style="display:inline-block;*display:inline"><a href="${link.url}" target="_blank">${link.title}</a></li>
            </c:forEach>
        </ul>
    </span>
    </div>
    <%@ include file="/WEB-INF/layouts/footer.jsp" %>
</div>
</body>
</html>