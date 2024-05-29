<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tile Layout</title>
    <link href="<c:url value='/css/layout.css'/>" rel="stylesheet" />
    <link href="<c:url value='/css/reset.css'/>" rel="stylesheet"  />
    <link href="<c:url value='/css/header_footer.css'/>" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <title>Home-Run</title>
</head>
<body>
<div>
        <div class="header"><tiles:insertAttribute name="header" /></div>
        <div class="left"><tiles:insertAttribute name="left" /></div>
        <div class="right"><tiles:insertAttribute name="right" /></div>
<%--        <div id="main"><tiles:insertAttribute name="main" /></div>--%>
        <!-- content -->
        <div>    <%@include file="copyofindex.jsp"%></div>
<%--        <tiles:insertAttribute name="content"/>--%>
        <div class="footer"><tiles:insertAttribute name="footer" /></div>
</div>
</body>
</html>