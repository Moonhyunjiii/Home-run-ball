<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet" />
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet" />
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>
    <title>테스트 페이지</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<p>제품 테스트페이지입니다.</p>
<p>바로구매와 찜하기는 3차 개발예정입니다.</p>
<%--<p>${stkOptInfo.pd_id}</p>--%>
<%--<p>${stkOptInfo.pd_clsf_cd}</p>--%>
<jsp:include page="footer.jsp"/>
</body>
</html>
