<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
</head>
<body>
<style>
    .center-table {
        margin: 0 auto;
        width: 70%;
        text-align: center;
    }
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 1px solid lightgray;
        padding: 8px;
        text-align: center;
    }
</style>

<div class="center-table">
    <table>
        <%-- 모두 cust_adr_list 테이블에 있음 --%>
        <tr>
            <%-- c_id : 고객 번호--%>
            <td>고객 C_ID</td>
            <td>${sessionScope.c_id}</td>
        </tr>
        <tr>
            <%-- rcver : 고객명 / --%>
            <td>이름(장소명)</td>
            <td>${deliveryDto.rcver}(${deliveryDto.adr_name})</td>
        </tr>
        <tr>
            <td>연락처</td>
            <td>${deliveryDto.rcver_phn}</td>
        </tr>
        <tr>
            <td>주소</td>
            <td>${deliveryDto.rcver_adr}</td>
        </tr>
        <tr>
            <td colspan="2">
                <%-- 여기서 배송지 변경 버튼 누르면, deliveryList.jsp 페이지로 이동해야한다. --%>
                <button id="changeAdrList" onclick="redirectToDeliveryList()">배송지 변경</button>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%-- 이건 나중에 dlv 테이블의 dlv_memo 컬럼에 저장시켜야한다. --%>
                <input type="text" id="deliveryMemo" placeholder="배송메모">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">다음에도 사용할게요.</label>
            </td>
        </tr>
    </table>

</div>


</body>
<script>
    function redirectToDeliveryList() {
        window.location.href = "/delivery/deliveryList";
    }
</script>
</html>