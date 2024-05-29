<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        .productManageSalesInformation-container {
            width: 100%;
            margin: 20px 0px;
            display: inline-block;
            text-align: center;
        }

        .productManageSalesInformation-container td {
            text-align: left;
            padding-left: 20px;
        }

        .productManageSalesInformation-container input[type="text"],
        .productManageSalesInformation-container input[type="date"] {
            color: gray;
            background-color: white;
            border: 1px solid #ccc;
            height: 100%;
            font-size: 12px;
            padding: 5px;
        }

        #min_od_qty, #max_od_qty{
            width: 80px;
        }

        .productManageSalesInformation-container input[type="date"] {
            width: 120px;
            text-align: center;
        }

        .productManageSalesInformation-container input[type="text"]::placeholder {
            color: gray;
        }

        strong {
            font-weight: bold;
            color: #1b64da;
        }

        textarea {
            width: 100%;
            height: 200px;
        }


        .buttons {
            margin: 20px;
            text-align: center;
        }

        .registerBtn, .cancelBtn {
            padding: 10px;
            font-size: 13px;
            border-radius: 4px;
            border: 1px solid #000000;
            cursor: pointer;
        }
        .registerBtn {
            color: white;
            background-color: #585858;
        }

        .cancelBtn {
            color: #000000;
            background-color: white;
        }

        .cancelBtn:hover {
            background: #0b7dda;
            color: white;
        }

        .registerBtn:hover {
            background: #0b7dda;
        }
    </style>
    <title>SalesInformation</title>
    <% String msg = (String) request.getAttribute("msg"); %>
    <% if (msg != null && !msg.isEmpty()) { %>
    <script>
        alert("<%= msg %>");
    </script>
    <% } %>
</head>
<body>
<jsp:include page="../../adminMenu.jsp" flush="false"/>
<div id="main">
    <div class="w3-dark-grey header-container">
        <div class="w3-dark-grey header-button">
            <button id="openNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_open()">&#9776;</button>
            <button id="closeNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_close()" style="display:none">&times;</button>
        </div>
        <div id="headline" class="header-title">판매 정보 일괄변경</div>
    </div>

    <div class="w3-container productManageSalesInformation-container">

    <form id="registerForm" action="<c:url value='/admin/product/manage'/>" method="post">
        <div class="product_content">
            <table>
                <tr>
                    <td colspan="3">
                        총 <strong>${selectedProductCount}</strong>개 제품의 판매 정보를 일괄 변경합니다.
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="checkbox" id="selectAll"><label for="selectAll">전체 선택</label>
                    </td>
                </tr>
                <tr>
                    <th style="width:50px;">
                        <input type="checkbox" name="selectedContent" id="minOrderQuantity" value="min_od_qty">
                    </th>
                    <th style="width: 200px;">
                        <label for="minOrderQuantity">최소 주문 수량</label>
                    </th>
                    <td>
                        <input type="text" id="min_od_qty" name="min_od_qty" size="4" value="1" >개 이상
                    </td>
                </tr>
                <tr>
                    <th style="width: 50px;">
                        <input type="checkbox" name="selectedContent" id="maxOrderQuantity" value="max_od_qty">
                    </th>
                    <th style="width: 200px;">
                        <label for="maxOrderQuantity">최대 주문 수량</label>
                    </th>
                    <td>
                        <input type="text" id="max_od_qty" name="max_od_qty" size="4" value="9999">개 이하
                    </td>
                </tr>
                <tr>
                    <th style="width: 50px;">
                        <input type="checkbox" name="selectedContent" id="salesStartDate" value="sls_strt_dt">
                    </th>
                    <th style="width: 200px;">
                        <label for="salesStartDate">판매 예정일</label>
                    </th>
                    <td>
                        <input type='date' id="sls_strt_dt" name='sls_strt_dt' />
                    </td>
                </tr>
                <tr>
                    <th style="width: 50px;">
                        <input type="checkbox" name="selectedContent" id="productManufactureDate" value="pd_mnf_date">
                    </th>
                    <th style="width: 200px;">
                        <label for="productManufactureDate">제품 제조년월</label>
                    </th>
                    <td>
                        <input type='date' id="pd_mnf_date" name='pd_mnf_date' />
                    </td>
                </tr>
            </table>
            <input type="hidden" name="productList" value="${productList}">
            <input type="hidden" name="selectedContent" value="${selectedContent}">
        </div>
        <div class="buttons">
            <button type="submit" class="registerBtn" id="registerBtn">선택항목 일괄변경</button>
            <button type="button" class="cancelBtn" id="cancelBtn">취소</button>
        </div>
    </form>
    </div>
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function() {
        /*입력한 값의 앞, 뒤에 있는 공백 제거*/
        $("input").on('blur', function () {
            $(this).val($.trim($(this).val()));
        });

        /*전체 선택을 클릭하는 경우 발생하는 함수*/
        $("#selectAll").click(function() {
            /*전체 선택이 체크되어 있다면 나머지 체크박스도 체크되게 한다.*/
            if($("#selectAll").is(":checked")) $("input[name=selectedContent]").prop("checked", true);
            /*그렇지 않다면 나머지 체크박스가 체크되지 않게 한다.*/
            else $("input[name=selectedContent]").prop("checked", false);
        });

        /*체크 박스 하나만을 선택했을 때 발생하는 함수*/
        $("input[name=selectedContent]").click(function() {
            /*total에 체크박스의 전체 개수를 저장한다.*/
            let total = $("input[name=selectedContent][type=checkbox]").length;
            /*checked에 체크가 된 체크박수의 개수를 저장한다.*/
            let checked = $("input[name=selectedContent]:checked").length;

            /*전체 체크박스의 수와 체크된 체크박스의 개수가 다르면 전체 선택이 체크되지 않게 한다.*/
            if(total != checked) $("#selectAll").prop("checked", false);
            /*전체 체크박스의 수와 체크된 체크박스의 개수가 동일하다면 전체 선택이 체크되게 한다.*/
            else $("#selectAll").prop("checked", true);
        });

        $("#registerBtn").on("click",function(event){
            let checked = $("input[name=selectedContent]:checked").length;
            if (checked == 0) {
                alert("하나 이상의 항목을 선택해주세요.");
                event.preventDefault();
            }

            /*아무것도 선택하지 않았으면 값을 입력해달라고 경고창 띄우기*/
        });

        let selectedContent = {};
        $('input:checkbox[name="selectedContent"]').each(function() {
            if (this.checked) {
                selectedContent[$(this).attr('id')] = $('input[name="' + $(this).attr('id') + '"]:checked').val();
            }
        });

        /* 최소 주문 수량(minQty)에 입력된 값이 숫자인지 1이상의 정수인지 확인한다. */
        $('#min_od_qty').on('blur', function () {
            let minQty = $(this).val();
            if (isNaN(minQty) || minQty.trim() === '') {
                alert("최소 주문 수량은 숫자만 입력할 수 있습니다.");
                return $(this).val('');
            }

            /*입력 받은 값을 실수로 변환한다.*/
            minQty = parseFloat(minQty);
            /*입력 받은 값을 정수로 변환한다.*/
            let integerInput = parseInt(minQty);

            /*무게가 1보다 작거나 실수면 경고창이 뜬다.*/
            if (minQty < 1 || minQty !== integerInput) {
                alert("최소 주문 수량은 1이상의 정수만 입력할 수 있습니다.")
                return $(this).val('');
            }
        });

        /* 최대 주문 수량(maxQty)에 입력된 값이 숫자인지 1이상의 양수인지 확인한다 */
        $('#max_od_qty').on('blur', function () {
            let maxQty = $(this).val();
            if (isNaN(maxQty) || maxQty.trim() === '') {
                alert("최대 주문 수량은 숫자만 입력할 수 있습니다.");
                return $(this).val('');
            }

            /*입력 받은 값을 실수로 변환한다.*/
            maxQty = parseFloat(maxQty);
            /*입력 받은 값을 정수로 변환한다.*/
            let integerInput = parseInt(maxQty);

            if (maxQty < 1 || maxQty !== integerInput) {
                alert("최대 주문 수량은 1이상의 정수만 입력할 수 있습니다.")
                return $(this).val('');
            }
        });

        /*만약 최소 주문 수량이 최대 주문 수량보다 크다면 경고창이 뜬다.*/
        $('#min_od_qty, #max_od_qty').on('blur', function() {
            let minQty = $('#min_od_qty').val();
            let maxQty = $('#max_od_qty').val();

            if (minQty && maxQty) {
                let minQtyInt = parseInt(minQty);
                let maxQtyInt = new Number(maxQty);

                /*만약 주문 최소 수량이 주문 최대 수량보다 크다면 경고창 발생하고 주문 최소 수량을 초기화한다.*/
                if (maxQtyInt < minQtyInt) {
                    alert("주문 최소 수량이 주문 최대 수량보다 많을 수 없습니다.");
                    $('#min_od_qty').val('');
                }
            }
        });

        /*만약 판매 예정일이 제품 제조년월보다 과거면 에러가 발생한다.*/
        $('#sls_strt_dt, #pd_mnf_date').on('blur', function() {
            let saleStartDate = $('#sls_strt_dt').val();
            let productManufactureDate = $('#pd_mnf_date').val();

            if (saleStartDate && productManufactureDate) {
                let saleStartDateObj = new Date(saleStartDate);
                let productManufactureDateObj = new Date(productManufactureDate);

                if (saleStartDateObj < productManufactureDateObj) {
                    alert("판매 예정일은 제품 제조년월보다 이전일 수 없습니다.");
                    $('#sls_strt_dt').val('');
                }
            }
        });
    });

    // 취소 버튼 클릭하면 뒤로 가기
    document.getElementById("cancelBtn").addEventListener("click", function() {
        window.history.back();
    });
</script>
</script>
</body>
</html>