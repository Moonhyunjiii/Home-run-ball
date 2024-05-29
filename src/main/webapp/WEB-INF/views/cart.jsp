<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/cart.css'/>" rel="stylesheet"/>
    <%--   다니님 header, footer --%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet" />
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet" />
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>
    <title>장바구니</title>
</head>
<body class="cart">
<script>
    let msg = "${msg}";
    if(msg=="CART_CNT_OVER") alert("대량주문은 전화문의 부탁드립니다.")
    if(msg=="UPDATE_ERR") alert("수량변경에 실패하였습니다.")
    if(msg=="DEL_ERR") alert("삭제에 실패하였습니다.")
    if(msg=="INSERT_ERR") alert("장바구니 담기에 실패하였습니다.")
</script>
<jsp:include page="header.jsp"/>
<div class="head_cart">장바구니</div>
<div class="cart__title">
    <div class="cart__title__detail">
        <a href="/cart/list">장바구니 > </a>
        <a href="#" class="cart__title_a">주문서</a>
        <a href="#" class="cart__title_a"> > 주문완료</a>
    </div>
</div>
<main>

    <table class="cart_tale">
        <colgroup>
            <col width="5%"/>
            <col width="15%"/>
            <col width="30%"/>
            <col width="10%"/>
            <col width="20%"/>
            <col width="10%"/>
            <col width="10%"/>
        </colgroup>
        <thead>
        <tr>
            <th><input type="checkbox" id="allChk" checked="checked"/></th>
            <th scope="col">
                <div>이미지</div>
            </th>
            <th scope="col">
                <div>상품정보</div>
            </th>
            <th scope="col">
                <div>판매가</div>
            </th>
            <th scope="col">
                <div>수량</div>
            </th>
            <th scope="col">
                <div>배송구분</div>
            </th>
            <th scope="col">
                <div>선택</div>
            </th>
        </tr>
        </thead>
        <tbody>
        <c:choose>
            <c:when test="${msg == 'CART_EMPTY'}">
                <td colspan="7"></td>
            </c:when>
            <c:otherwise>
                <c:forEach var="cartDto" items="${list}">
                    <tr class="product-row">
                        <td><input type="checkbox" class="chk" checked="checked" name="checkboxlength"/></td>
                        <td>
                            <a href="/product/detail?pd_id=${cartDto.pd_id}">
                                <img src="/img/product/${cartDto.pd_type_cd}/main/${cartDto.mn_img_fn}"
                                     alt="이미지 준비 중 입니다"
                                     onerror="this.onerror=null; this.src='/img/product/${cartDto.pd_type_cd.toLowerCase()}/main/${cartDto.mn_img_fn}';">
                            </a>
                        </td>
                        <td>
                            <a href="/product/detail?pd_id=${cartDto.pd_id}">${cartDto.pd_name}</a>
                            <div name="size">사이즈: ${cartDto.pd_clsf_code}</div>
                        </td>
                        <td><span name="price" class="priceFormat">${cartDto.sls_prc}</span></td>
                        <td>
                            <div class="quantity_control">
                                <form action="/cart/update" method="post" id="update_form">
                                    <input type="hidden" name="c_id" id="update_c_id" data-cid="${cartDto.c_id}" value="${cartDto.c_id}"/>
                                    <input type="hidden" name="pd_id" id="update_pd_id" data-pdid="${cartDto.pd_id}"  value="${cartDto.pd_id}"/>
                                    <input type="hidden" name="pd_clsf_code" id="update_pd_clsf_code" data-sizecd="${cartDto.pd_clsf_code}" value="${cartDto.pd_clsf_code}"/>
                                    <button class="quantity_btn minus_btn"><i class="fas fa-minus"></i></button>
                                    <input type="text" name="cart_cnt" id="update_count" value="${cartDto.cart_cnt}" readonly/>
                                    <button class="quantity_btn plus_btn"><i class="fas fa-plus"></i></button>

                                        <%--                                    <button class="quantity_modify_btn"  >변경</button>--%>
                                </form>
                            </div>
                        </td>
                        <td>
                            <span>무료배송</span>
                        </td>
                        <td>
                                <%-- c_id 고객번호, pd_id 제품코드, pd_clsf_code 사이즈 가 일치하는것을 선택해서 삭제 --%>
                            <button type="button" class="deleteBtn" data-cid="${cartDto.c_id}"
                                    data-pdid="${cartDto.pd_id}" data-sizecd="${cartDto.pd_clsf_code}">삭제
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
        <div>
            <%-- CartController 의 remove 메서드로 데이터를 넘긴다 선택삭제 --%>
            <form action="/cart/remove" method="post" class="delete_form">
                <input type="hidden" name="c_id" class="delete_c_id" value="${c_id}"/>
                <input type="hidden" name="pd_id" class="delete_pd_id" value="${pd_id}"/>
                <input type="hidden" name="pd_clsf_code" class="delete_pd_clsf_code" value="${pd_clsf_code}"/>
            </form>
        </div>
        </tbody>
        <tfoot>
        <tr class="tb__left">
            <%--            <td colspan="1">--%>
            <%--                <div><span>[기본배송]</span></div>--%>
            <%--            </td>--%>
            <td colspan="7">
                <c:if test="${msg == 'CART_EMPTY'}"><h1 class="nonCart">장바구니에 담긴 상품이 없습니다.</h1></c:if>
                <form action="" id="removeAllForm">
                    <button type="button" id="delete_All_Btn" class="removeAllBtn">장바구니 비우기</button>
                </form>
            </td>

        </tr>

        <tr>
            <td colspan="7" class="btnStyle">
                <form action="" id="orderForm" method="post">
                    <button type="button" class="order_Btn" id="order_Select_Btn">선택상품 주문</button>
                    <button type="button" class="order_Btn" id="order_All_Btn">전체상품 주문</button>
                </form>
            </td>
        </tr>
        </tfoot>
    </table>
</main>
<jsp:include page="footer.jsp"/>
<script>
    $(document).ready(function () {
        /* 각 단가의금액의 Format형식 #,##0 */
        $('.priceFormat').each(function () {
            let value = $(this).text();
            value = value.replace(/,/g, '');
            const numbericValue = parseInt(value);
            const formatValue = numbericValue.toLocaleString('ko-KR');
            $(this).text(formatValue + '원');
        })

        /* 선택주문하기 버튼을 누를경우 주문으로 넘기기 */
        <%--$('#order_Select_Btn').on("click", function (){--%>
        <%--    let selectedItems = [];--%>
        <%--    let orderForm = $('#orderForm');--%>

        <%--    // 선택된 각 체크박스의 부모 요소인 <tr>을 찾아 그 안의 데이터를 가져옴--%>
        <%--    $('input:checkbox[name=checkboxlength]:checked').each(function(){--%>
        <%--        let c_id = $(this).closest('tr').find('.deleteBtn').data("cid");--%>
        <%--        let pd_id = $(this).closest('tr').find('.deleteBtn').data("pdid");--%>
        <%--        let pd_clsf_code = $(this).closest('tr').find('.deleteBtn').data("sizecd");--%>
        <%--        selectedItems.push({--%>
        <%--            c_id: c_id,--%>
        <%--            pd_id: pd_id,--%>
        <%--            pd_clsf_code: pd_clsf_code--%>
        <%--        });--%>
        <%--    });--%>

        <%--    selectedItems.forEach(function(item) {--%>
        <%--        $('<input>').attr({--%>
        <%--            type: 'hidden',--%>
        <%--            name: 'selectedItems',--%>
        <%--            value: JSON.stringify(item)--%>
        <%--        }).appendTo(orderForm);--%>
        <%--    });--%>

        <%--    orderForm.attr("action", "<c:url value='/order'/>?c_id=${c_id}");--%>
        <%--    orderForm.attr("method", "post");--%>
        <%--    orderForm.submit();--%>
        <%--})--%>

        /* 주문하기버튼을 누를경우 주문으로 넘기기 */
        $('#order_All_Btn').on("click", function () {
            let orderForm = $('#orderForm');
            orderForm.attr("action", "<c:url value='/order'/>");
            orderForm.attr("method", "post");
            orderForm.submit();
        })

        /* 컬럼 체크박스 선택시 전체체크 or 해제 */
        $('#allChk').on("click", function () {
            const isChecked = $(this).prop('checked');
            $(".chk").prop('checked', isChecked)
        });
        /* 개별 체크박스 선택 */
        $('.chk').on("click", function () {
            /* 체크박스 전체갯수 구하기*/
            let chk = $('input:checkbox[name=checkboxlength]').length;
            /* 체크박스 선택된갯수 구하기 */
            let cnt = $('input:checkbox[name=checkboxlength]:checked').length;

            /* 선택check(cnt)의 전체check(chk)와 일치할경우 allChk */
            if (cnt === chk) {
                $("#allChk").prop('checked', true);
            } else {
                $("#allChk").prop('checked', false);
            }
        })

        /* 고객의 장바구니 한건 삭제 */
        $('.deleteBtn').on("click", function () {
            if (!confirm("삭제하시겠습니까?")) return;
            /* data-cid 를 찾아서 c_id에 저장 */
            let c_id = $(this).data("cid");
            let pd_id = $(this).data("pdid");
            let pd_clsf_code = $(this).data("sizecd");
            /* class delete_c_id 태그를 찾아서 c_id를 controller에 넘겨준다 */
            $(".delete_c_id").val(c_id);
            $(".delete_pd_id").val(pd_id);
            $(".delete_pd_clsf_code").val(pd_clsf_code);
            $(".delete_form").attr("action", "<c:url value='/cart/remove'/>").submit();
        })

        /* 한명의 고객의 장바구니 전체삭제 */
        $('#delete_All_Btn').on("click", function () {
            let removeAllForm = $('#removeAllForm');
            removeAllForm.attr("action", "<c:url value='/cart/removeAll'/>?c_id=${c_id}");
            removeAllForm.attr("method", "post");
            removeAllForm.submit();
        });


        /* 장바구니 수량 변경 동작 CartController로 보내는 함수를 작성한다 */
        let cartCntChangeFunc =
            function () {
                $(document).on('click', function () {
                    let form = $(this).closest('#update_form');
                    let c_id = $(this).data("cid");
                    let pd_id = $(this).data("pdid");
                    let pd_clsf_code = $(this).data("sizecd");
                    let cart_cnt = form.find('input[name="cart_cnt"]').val();
                    form.find('input[name="c_id"]').val(c_id);
                    form.find('input[name="pd_id"]').val(pd_id);
                    form.find('input[name="pd_clsf_code"]').val(pd_clsf_code);
                    form.find('input[name="cart_cnt"]').val(cart_cnt);
                    form.attr("action", "<c:url value='/cart/update'/>");
                    form.submit();
                })
            }

        /* plus 수량변경 */
        $('.plus_btn').on('click change', function() {
            /* 수량 input 태그를 찾아서 현재 수량을 가져온다. */
                let quantityInput = $(this).siblings('input[name="cart_cnt"]');
                /* 수량의 value를 parseInt해준다 */
                let quantity = parseInt(quantityInput.val());
                if (quantity <=100){
                    quantity++;
                    /* 증가된 수량을 input 태그에 설정한다.*/
                    quantityInput.val(quantity);
                    cartCntChangeFunc();
                }
                /* form에 제출되지 않도록 false로 둔다 */
                // return false;
            }
        );

        /* minus 수량변경 */
        $('.minus_btn').on(
            'click', function () {
                let quantityInput = $(this).siblings('input[name="cart_cnt"]');
                let quantity = parseInt(quantityInput.val());
                if (quantity > 1) {
                    quantity--;
                    quantityInput.val(quantity);
                    cartCntChangeFunc();
                }
            }
        )


    })
</script>
</body>
</html>