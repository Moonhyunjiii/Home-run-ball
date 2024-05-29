<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <style>
        <%@include file="/resources/css/adminMenu.css" %>
        <%@include file="/resources/css/adminDefaultTable.css" %>
        <%@include file="/resources/css/searchConditionForm.css"%>
        .productList-container {
            width: 100%;
            margin: 20px 0px;
            display: inline-block;
            text-align: center;
        }

        .productList-container tbody td:nth-of-type(1),
        .productList-container tbody td:nth-of-type(4),
        .productList-container tbody td:nth-of-type(5),
        .productList-container tbody td:nth-of-type(6),
        .productList-container tbody td:nth-of-type(7),
        .productList-container tbody td:nth-of-type(8),
        .productList-container tbody td:nth-of-type(9),
        .productList-container tbody td:nth-of-type(10),
        .productList-container tbody td:nth-of-type(11){
            text-align: center;
        }
        strong {
            font-weight: bold;
            color: #1b64da;
        }
    </style>
    <title>제품 목록</title>
    <% String msg = (String) request.getAttribute("msg"); %>
    <% if (msg != null && !msg.isEmpty()) { %>
    <script>
        alert("<%= msg %>");
    </script>
    <% } %>
</head>
<body>
<jsp:include page="../adminMenu.jsp" flush="false"/>
<div id="main">
    <div class="w3-dark-grey header-container">
        <div class="w3-dark-grey header-button">
            <button id="openNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_open()">&#9776;</button>
            <button id="closeNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_close()" style="display:none">&times;</button>
        </div>
        <div id="headline" class="header-title">제품 목록</div>
    </div>
    <jsp:include page="../searchConditionForm.jsp" flush="false" />
<%--    <div class="w3-container search-container">
        <form action="<c:url value="/admin/stock/searchList"/>" class="search-form" method="get">

        </form>
    </div>--%>
    <div class="w3-container productList-container">
    <table>
        <thead>
            <tr>
                <td colspan="12">[총 <strong>${productCount}</strong>개]</td>
            </tr>
            <tr>
                <th class="pd_id">제품ID</th>
                <th class="pd_name">제품명</th>
                <th class="mdl_name">모델명</th>
                <th class="pd_type_cd">제품유형</th>
                <th class="pd_type_det_cd">제품상세유형</th>
                <th class="brd_cd">브랜드</th>
                <th class="pd_chr_cd">제품 특성</th>
                <th class="qlt_cd">제품품질</th>
                <th class="pd_is_show">제품노출여부</th>
                <th class="pd_stat_hist_cd">제품 상태 이력</th>
                <th class="frst_reg_dt">제품 최초 등록일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="productDto" items="${productList}">
                <tr>
                    <td class="pd_id">${productDto.pd_id}</td>
                    <td class="pd_name">${productDto.pd_name}</td>
                    <td class="mdl_name">${productDto.mdl_name}</td>
                    <td class="pd_type_cd">${productDto.pd_type_cd}</td>
                    <td class="pd_type_det_cd">${productDto.pd_type_det_cd}</td>
                    <td class="brd_cd">${productDto.brd_cd}</td>
                    <td class="pd_chr_cd">${productDto.pd_chr_cd}</td>
                    <td class="qlt_cd">${productDto.qlt_cd}</td>
                    <td class="pd_is_show">${productDto.pd_is_show}</td>
                    <td class="pd_stat_hist_cd">${productDto.pd_stat_hist_cd}</td>
                    <td class="frst_reg_dt"><fmt:formatDate value="${productDto.frst_reg_dt}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>