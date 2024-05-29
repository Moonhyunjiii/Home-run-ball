<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        .productList-container tbody td:nth-of-type(1),
        .productList-container tbody td:nth-of-type(2),
        .productList-container tbody td:nth-of-type(5),
        .productList-container tbody td:nth-of-type(6),
        .productList-container tbody td:nth-of-type(7),
        .productList-container tbody td:nth-of-type(8),
        .productList-container tbody td:nth-of-type(9),
        .productList-container tbody td:nth-of-type(10),
        .productList-container tbody td:nth-of-type(11),
        .productList-container tbody td:nth-of-type(12){
            text-align: center;
        }
        strong {
            font-weight: bold;
            color: #1b64da;
        }

        .sendBtnSmall:hover {
            background: #0b7dda;
        }
    </style>
    <title>제품 관리 페이지</title>
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
        <div id="headline" class="header-title">제품 정보 일괄 변경</div>
    </div>
    <jsp:include page="../searchConditionForm.jsp" flush="false" />

    <div class="w3-container productList-container">
    <%--<h1 style="text-align: center">제품 목록</h1>--%>
        <table>
            <thead>
            <tr>
                <td colspan="12">[총 <strong>${productCount}</strong>개]</td>
            </tr>
            <tr>
                <td colspan="12">
                    <select class="search-option" id="productNumber" name="productNumber">
                        <option value="selectedProduct">선택한 제품의</option>
                        <option value="allProduct">검색 결과 전체 제품의</option>
                    </select>
                    <select class="search-option" id="changeContent" name="changeContent">
                        <option value="option">- 구분 -</option>
                        <option value="exposureSetting">표시 설정</option>
                        <option value="basicInformation">기본 정보</option>
                        <option value="salesInformation">판매 정보</option>
                        <option value="imageRegistration">이미지 등록</option>
                    </select>
                    을
                    <button type="button" class="sendBtnSmall" onclick="openPopup()">일괄 변경</button>
                </td>
            </tr>
            <tr>
                <th>선택</th>
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
                    <td><input type="checkbox" name="selectedProduct"></td>
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
        <input type="hidden" id="popupInput" name="popupInput">
    </div>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <script>
        function openPopup() {
            let changeContent = document.getElementById("changeContent").value;
            switch (changeContent) {
                case "option":
                    /*구분을 선택한 경우 변경항목을 선택해달라는 경고창 띄우기*/
                    alert("변경항목을 선택해주세요.");
                    break;
                case "exposureSetting":
                    /*exposureSetting에 해당하는 새로운 창 열기*/
                    exposureSettingWindow();
                    break;
                case "basicInformation":
                    /*basicInformation에 해당하는 새로운 창 열기*/
                    basicInformationWindow();
                    break;
                case "salesInformation":
                    /*salesInformation에 해당하는 새로운 창 열기*/
                    salesInformationWindow();
                    break;
                case "imageRegistration":
                    /*imageRegistration에 해당하는 새로운 창 열기*/
                    imageRegistrationWindow();
                    break;
                default:
                    alert("다시 선택해주세요");
                break;
            }
        }

        function exposureSettingWindow() {
            /*폼을 동적으로 생성한다.*/
            let form = $('<form id="popupForm" action="<c:url value='/admin/product/manage/exposure'/>" method="post"></form>');

            /*체크된 제품의 리스트를 저장하기 위해 변수를 선언한다.*/
            let selectedProductList = [];

            /*체크된 제품의 제품ID를 가져와서 폼에 추가한다.*/
            $("input:checkbox[name=selectedProduct]:checked").each(function () {
                selectedProductList.push($(this).closest('tr').find('.pd_id').text());
            });

            /*제품ID를 문자열로 결합하여 폼 데이터에 추가한다.*/
            form.append('<input type="hidden" name="pd_id" value="' + selectedProductList.join(',') + '">');

            /*productNumber의 값을 찾아서 저장한다.*/
            productNumber = document.getElementById("productNumber").value;
            form.append('<input type="hidden" name="productNumber" value="' + productNumber + '">');

            /*폼을 body에 추가한다.*/
            $(document.body).append(form);

            /*폼을 전송한다.*/
            form.submit();

            /*폼을 제거한다.*/
            form.remove();
        }

        function basicInformationWindow() {
            /*폼을 동적으로 생성한다.*/
            let form = $('<form id="popupForm" action="<c:url value='/admin/product/manage/basicInformation'/>" method="post"></form>');

            /*체크된 제품의 리스트를 저장하기 위해 변수를 선언한다.*/
            let selectedProductList = [];

            /*체크된 제품의 제품ID를 가져와서 폼에 추가한다.*/
            $("input:checkbox[name=selectedProduct]:checked").each(function () {
                selectedProductList.push($(this).closest('tr').find('.pd_id').text());
            });

            /*제품ID를 문자열로 결합하여 폼 데이터에 추가한다.*/
            form.append('<input type="hidden" name="pd_id" value="' + selectedProductList.join(',') + '">');

            /*productNumber의 값을 찾아서 저장한다.*/
            productNumber = document.getElementById("productNumber").value;
            form.append('<input type="hidden" name="productNumber" value="' + productNumber + '">');

            /*폼을 body에 추가한다.*/
            $(document.body).append(form);

            /*폼을 전송한다.*/
            form.submit();

            /*폼을 제거한다.*/
            form.remove();
        }

        function salesInformationWindow() {
            /*폼을 동적으로 생성한다.*/
            let form = $('<form id="popupForm" action="<c:url value='/admin/product/manage/salesInformation'/>" method="post"></form>');

            /*체크된 제품의 리스트를 저장하기 위해 변수를 선언한다.*/
            let selectedProductList = [];

            /*체크된 제품의 제품ID를 가져와서 폼에 추가한다.*/
            $("input:checkbox[name=selectedProduct]:checked").each(function () {
                selectedProductList.push($(this).closest('tr').find('.pd_id').text());
            });

            /*제품ID를 문자열로 결합하여 폼 데이터에 추가한다.*/
            form.append('<input type="hidden" name="pd_id" value="' + selectedProductList.join(',') + '">');

            /*productNumber의 값을 찾아서 저장한다.*/
            productNumber = document.getElementById("productNumber").value;
            form.append('<input type="hidden" name="productNumber" value="' + productNumber + '">');

            /*폼을 body에 추가한다.*/
            $(document.body).append(form);

            /*폼을 전송한다.*/
            form.submit();

            /*폼을 제거한다.*/
            form.remove();
        }

        function imageRegistrationWindow() {
            /*폼을 동적으로 생성한다.*/
            let form = $('<form id="popupForm" action="<c:url value='/admin/product/manage/imageRegistration'/>" method="post"></form>');

            /*체크된 제품의 리스트를 저장하기 위해 변수를 선언한다.*/
            let selectedProductList = [];

            /*체크된 제품의 제품ID를 가져와서 폼에 추가한다.*/
            $("input:checkbox[name=selectedProduct]:checked").each(function () {
                selectedProductList.push($(this).closest('tr').find('.pd_id').text());
            });

            /*제품ID를 문자열로 결합하여 폼 데이터에 추가한다.*/
            form.append('<input type="hidden" name="pd_id" value="' + selectedProductList.join(',') + '">');

            /*productNumber의 값을 찾아서 저장한다.*/
            productNumber = document.getElementById("productNumber").value;
            form.append('<input type="hidden" name="productNumber" value="' + productNumber + '">');

            /*폼을 body에 추가한다.*/
            $(document.body).append(form);

            /*폼을 전송한다.*/
            form.submit();

            /*폼을 제거한다.*/
            form.remove();
        }

        function makeForm() {
            /*폼을 동적으로 생성한다.*/
            let form = $('<form id="popupForm" action="<c:url value='/admin/product/manage'/>" method="post"></form>');

            /*체크된 제품의 리스트를 저장하기 위해 변수를 선언한다.*/
            let selectedProductList = [];

            /*체크된 제품의 제품ID를 가져와서 폼에 추가한다.*/
            $("input:checkbox[name=selectedProduct]:checked").each(function () {
                selectedProductList.push($(this).closest('tr').find('.pd_id').text());
            });

            /*제품ID를 문자열로 결합하여 폼 데이터에 추가한다.*/
            form.append('<input type="hidden" name="pd_id" value="' + selectedProductList.join(',') + '">');

            /*productNumber의 값을 찾아서 저장한다.*/
            productNumber = document.getElementById("productNumber").value;
            form.append('<input type="hidden" name="productNumber" value="' + productNumber + '">');

            /*changeContent의 값을 찾아서 저장한다.*/
            changeContent = document.getElementById("changeContent").value;
            form.append('<input type="hidden" name="changeContent" value="' + changeContent + '">');

            /*팝업창에 입력한 popupInput 값을 찾아서 저장한다.*/
            popupInput = document.getElementById("popupInput").value;
            form.append('<input type="hidden" name="popupInput" value="' + popupInput + '">');

            /*폼을 body에 추가한다.*/
            $(document.body).append(form);

            /*폼을 전송한다.*/
            form.submit();

            /*폼을 제거한다.*/
            form.remove();
        }
    </script>
</div>
</body>
</html>