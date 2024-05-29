<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        <%@include file="/resources/css/adminMenu.css" %>
        <%@include file="/resources/css/adminDefaultTable.css" %>
        .mainInfo-container{
            margin: 20px;
        }
        table {
            width: 600px;
        }
    </style>
    <title>홈런볼 관리자 페이지</title>
</head>
<body>
<jsp:include page="adminMenu.jsp" flush="false"/>
<div id="main">
    <div class="w3-dark-grey header-container">
        <div class="w3-dark-grey header-button">
            <button id="openNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_open()">&#9776;</button>
            <button id="closeNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_close()" style="display:none">&times;</button>
        </div>
        <div id="headline" class="header-title">관리자를 위한 메인 페이지</div>
    </div>
    <div class="mainInfo-container">
        <table>
            <tr>
                <th colspan="3">매뉴얼</th>
            </tr>
            <tr>
                <th colspan="2">제품 대시보드</th>
                <td>제품관련 통계 조회</td>
            </tr>
            <tr>
                <th colspan="2">제품 목록</th>
                <td>등록된 모든 제품의 목록 조회</td>
            </tr>
            <tr>
                <th colspan="2">제품 등록</th>
                <td>신규 제품 등록 화면</td>
            </tr>
            <tr>
                <th rowspan="2">제품 관리</th>
                <th>제품 정보 일괄 변경</th>
                <td>제품 진열상태, 이미지 등 정보 변경</td>
            </tr>
            <tr>
                <th>진열 제외 제품 목록</th>
                <td>진열 제외 제품 목록 조회 및 상태 변경</td>
            </tr>
            <tr>
                <th rowspan="2">재고 관리</th>
                <th>재고 목록</th>
                <td>등록된 모든 재고의 목록 조회</td>
            </tr>
            <tr>
                <th>재고등록수정</th>
                <td>재고 등록 및 수정</td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>