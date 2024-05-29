<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet"/>
    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/order_det.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/payStyle.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/receiptStyle.css'/>" type="text/css" rel="stylesheet"/>

    <%--   다니님 header, footer --%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet"/>
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>

    <title>단일 주문내역조회</title>
    <%-- [혁락] css 수정 시작 --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css"/>
    <style>

    </style>
    <%-- [혁락] css 수정 끝 --%>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="myPageHeader.jsp"/>
<br><br>
<div class="head_order_det">단일 주문내역조회</div>
<main>
    <!-- 주문 목록 섹션 -->
    <div class="order-container">
        <div class="orders tb__order">
            <table class="order_det_table">
                <colgroup>
                    <col width="30%"/>
                    <col width="30%"/>
                    <col width="15%"/>
                    <col width="15%"/>
                    <col width="10%"/>
                </colgroup>

                <thead>
                <tr>
                    <th>상품정보</th>
                    <!-- 상품 정보 헤더 -->
                    <th>주문일자</th>
                    <!-- 주문일자 헤더 -->
                    <th>주문번호</th>
                    <!-- 주문번호 헤더 -->
                    <th>주문금액(수량)</th>
                    <!-- 주문금액(수량) 헤더 -->
                    <th>주문 상태</th>
                    <!-- 주문 상태 헤더 -->
                </tr>
                </thead>

                <c:choose>
                    <c:when test="${list == null}"> <%-- 결과값 확인이 필요한 경우 --%>
                        <tr>
                            <td class="product-msg" colspan="5">
                                <div>잠시 후 다시 요청해주세요. 같은 메세지가 반복되는 경우 고객센터로 연락바랍니다.(1540-0000)</div>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:choose>
                            <c:when test="${list.isEmpty()}"> <%-- 결과값이 없는 경우 --%>
                                <tr>
                                    <td class="product-msg" colspan="5">
                                        <div>조회 결과가 없습니다.</div>
                                    </td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <tbody>
                                <c:forEach var="orderdetDto" items="${list}" varStatus="status">
                                    <tr class="order-item-hist">
                                        <td class="product-info">
                                            <div>
                                                <a href="/product/detail?pd_id=${orderdetDto.pd_id}">
                                                    <img src="/img/product/${orderdetDto.pd_type_cd}/main/${orderdetDto.mn_img_fn}"
                                                         alt="썸네일" name="thumbnail"
                                                         onerror="this.onerror=null; this.src='/img/product/${orderdetDto.pd_type_cd.toLowerCase()}/main/${orderdetDto.mn_img_fn}';"/>
                                                </a>
                                            </div>
                                            <ul class="info">
                                                <!-- 브랜드 이름 -->
                                                <li class="brand">
                                                    <span>${orderdetDto.brd_name}</span>
                                                </li>
                                                <!-- 상품 이름 -->
                                                <li class="name">
                                                    <a href="#">${orderdetDto.pd_name}</a>
                                                </li>
                                                <!-- 상품 옵션 -->
                                                <li class="option">옵션/사이즈: ${orderdetDto.pd_clsf_cd}</li>
                                            </ul>
                                        </td>

                                        <!-- 주문일자 -->
                                        <td>
                                            <span data-oddt="${orderdetDto.od_dt}"
                                                  class="od_dt">${orderdetDto.od_dt}</span>
                                        </td>

                                        <!-- 주문번호 -->
                                        <td>
                                            <div class="order-number">
                                                <a href="#" class="open_od_id_modal">${orderdetDto.od_id}</a>
                                                <form id="orderForm" action="/orderDetail" style="display: none;">
                                                    <input type="hidden" data-odId="${orderdetDto.od_id}" name="orderId" id="orderId">
                                                </form>
                                            </div>
                                        </td>

                                        <!-- 주문금액 및 수량 -->
                                        <td>
                                            <div class="order-amount" data-order-id="20231208212440001">
                                                <span>${orderdetDto.sls_prc * orderdetDto.od_qty}</span>
                                                <span>${orderdetDto.od_qty} 개</span>
                                            </div>
                                        </td>

                                        <td class="order-status">
                                            <!-- 구매상태 링크 -->
                                            <div class="open-order-step-modal">
                                                <a href='javascript:void(0);'>${orderdetDto.od_stat_name}</a>
                                            </div>
                                            <!-- 배송조회 버튼 -->
                                            <button class="open-delivery-modal">배송조회</button>
                                            <c:if test="${not fn:contains(orderdetDto.od_stat_name, '취소')}">
                                                <%-- '취소' 있으면 버튼 출력 안함 --%>
                                            <!-- 주문취소 버튼 -->
                                                <!-- 주문취소 버튼 -->
                                                <form method="POST" action="/order/cancel" style="display:inline;">
                                                    <input type="hidden" name="od_id" value=${orderdetDto.od_id}>
                                                    <input type="hidden" name="pd_id" value=${orderdetDto.pd_id}>
                                                    <input type="hidden" name="pd_clsf_cd" value=${orderdetDto.pd_clsf_cd}>
                                                    <button class="cancel-order-confirm-modal" type="submit">주문취소</button>
                                                </form>
                                            </c:if>
                                        </td>
                                    </tr>
                                    <!-- 추가 주문 행을 여기에 추가 -->
                                    </tbody>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </c:otherwise>
                </c:choose>
            </table>
        </div>
    </div>

    <!-- 주문 단계 모달 -->
    <div id="orderStepModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <!-- 주문상태 헤더 -->
                <h2 class="order-step-header">
                    <span class="order-step-subheader">주문단계</span>
                    <!-- 주문단계 헤더 -->
                </h2>
                <!-- 모달 닫기 버튼 -->
                <span class="close">&times;</span>
                <!-- 모달 닫기 버튼 -->
            </div>
            <div class="modal-body">
                <table class="order-step-table">
                    <thead>
                    <tr>
                        <th>일자</th>
                        <!-- 일자 헤더 -->
                        <th>처리내역</th>
                        <!-- 처리내역 헤더 -->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>2024-05-08 22:13</td>
                        <td>주문 일시</td>
                    </tr>
                    <tr>
                        <td>2024-05-08 22:13</td>
                        <td>입금 확인</td>
                    </tr>
                    <tr>
                        <td>2024-05-08 22:13</td>
                        <td>출고 요청</td>
                    </tr>
                    <tr>
                        <td>2024-05-11 08:52</td>
                        <td>출고 처리 중</td>
                    </tr>
                    <tr>
                        <td>2024-05-11 10:16</td>
                        <td>출고 완료</td>
                    </tr>
                    <!-- 추가 주문 단계 행을 여기에 추가 -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- 배송 조회 모달 -->
    <div id="deliveryModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>배송조회</h2>
                <!-- 배송조회 헤더 -->
                <span class="close">&times;</span>
                <!-- 모달 닫기 버튼 -->
            </div>
            <div class="modal-body">
                <table class="delivery-info">
                    <tbody>
                    <tr>
                        <th>현재 상태</th>
                        <!-- 현재 상태 헤더 -->
                        <td>구매확정</td>
                    </tr>
                    <tr>
                        <th>송장 번호</th>
                        <!-- 송장 번호 헤더 -->
                        <td>682218726753 (CJ대한통운)</td>
                    </tr>
                    </tbody>
                </table>
                <table class="delivery-table">
                    <thead>
                    <tr>
                        <th>배송시간</th>
                        <!-- 배송시간 헤더 -->
                        <th>현재위치</th>
                        <!-- 현재위치 헤더 -->
                        <th>배송내용</th>
                        <!-- 배송내용 헤더 -->
                        <th>지점 연락처</th>
                        <!-- 지점 연락처 헤더 -->
                        <th>기사 연락처</th>
                        <!-- 기사 연락처 헤더 -->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>2024-05-13 13:54:02</td>
                        <td>강남개포주공</td>
                        <td>배송완료</td>
                        <td>010-9266-4597</td>
                        <td>010-8734-1963</td>
                    </tr>
                    <tr>
                        <td>2024-05-13 12:06:55</td>
                        <td>강남개포주공</td>
                        <td>배송출발 (배달예정시간 :14~16시)</td>
                        <td>010-9266-4597</td>
                        <td>010-8734-1963</td>
                    </tr>
                    <tr>
                        <td>2024-05-13 10:19:33</td>
                        <td>강남A</td>
                        <td>간선하차</td>
                        <td>031-751-1255</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2024-05-13 10:17:52</td>
                        <td>강남A</td>
                        <td>간선하차</td>
                        <td>031-751-1255</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2024-05-13 07:02:38</td>
                        <td>대전HUB</td>
                        <td>간선상차</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2024-05-13 06:56:06</td>
                        <td>대전HUB</td>
                        <td>간선상차</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2024-05-12 00:47:49</td>
                        <td>부천1</td>
                        <td>간선상차</td>
                        <td>032-528-1256</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2024-05-11 20:47:25</td>
                        <td>중산물류</td>
                        <td>집화처리</td>
                        <td>010-6565-8952</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- 영수증 모달 -->
    <div id="receiptModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>신용 · 체크카드 매출전표</h2>
                <div class="icons">
                    <i class="fas fa-copy icon" onclick="copyLink()"></i>
                    <i class="fas fa-print icon" onclick="printReceipt()"></i>
                    <span class="close" onclick="closeModal()">&times;</span>
                </div>
            </div>
            <div class="modal-body">
                <div class="info">
                    <div>
                        <span class="align-left">주문번호:</span>
                        <span class="align-right">123451234512345</span>
                    </div>
                    <div>
                        <span class="align-left">구매자:</span>
                        <span class="align-right">홈런볼</span>
                    </div>
                    <div>
                        <span class="align-left">구매상품:</span>
                        <span class="align-right">미즈노 반팔 하계티 네이비 32MAA15614NV</span>
                    </div>
                    <hr/>
                    <div>
                        <span class="align-left">카드종류:</span>
                        <span class="align-right">신한</span>
                    </div>
                    <div>
                        <span class="align-left">카드번호:</span>
                        <span class="align-right">51073776****472*</span>
                    </div>
                    <div>
                        <span class="align-left">할부:</span>
                        <span class="align-right">일시불</span>
                    </div>
                    <div>
                        <span class="align-left">승인번호:</span>
                        <span class="align-right">36952716</span>
                    </div>
                    <hr/>
                    <div>
                        <span class="align-left">승인:</span>
                        <span class="align-right">249,240원</span>
                    </div>
                    <div>
                        <span class="align-left">2023-11-02 16:43:37</span>
                    </div>
                    <div class="highlight">
                        <span class="align-left">취소:</span>
                        <span class="align-right">-</span>
                    </div>
                    <div>
                        <span class="align-left"></span>
                    </div>
                    <hr/>
                    <div>
                        <span class="align-left">공급가액:</span>
                        <span class="align-right">224,316원</span>
                    </div>
                    <div>
                        <span class="align-left">면세가액:</span>
                        <span class="align-right">0원</span>
                    </div>
                    <div>
                        <span class="align-left">부가세:</span>
                        <span class="align-right">24,924원</span>
                    </div>
                    <div>
                        <span class="align-left">과세제외액:</span>
                        <span class="align-right">0원</span>
                    </div>
                    <div class="total-amount">
                        <span class="align-left">합계:</span>
                        <span class="align-right">249,240원</span>
                    </div>
                </div>
            </div>

            <script>

              document.addEventListener('DOMContentLoaded', () => {
                const orderStepModal = document.querySelector('#orderStepModal');
                const deliveryModal = document.querySelector('#deliveryModal');
                const orderIdModal = document.querySelector('#orderIdModal');
                const closeModalButtons = document.querySelectorAll('.close');
                let modalContent = document.querySelectorAll('.modal-content');
                const openOrderStepModalButtons = document.querySelectorAll('.open-order-step-modal');
                const openDeliveryModalButtons = document.querySelectorAll('.open-delivery-modal');
                const openOrderIdModalButtons = document.querySelectorAll('.open-od_id-modal')
                const cancelOrderConfirmModal = document.querySelectorAll('.cancel-order-confirm-modal');

                /* 영수증 모달 */
                const receiptModal = document.querySelector('#receiptModal');
                const orderAmounts = document.querySelectorAll('.order-amount');

                /*주문상세내역 모달 열기 */
                openOrderIdModalButtons.forEach((button) => {
                  button.addEventListener('click', () => {
                    orderIdModal.style.display = 'flex';
                  })
                })

                /* 주문 단계 모달 열기 */
                openOrderStepModalButtons.forEach((button) => {
                  button.addEventListener('click', () => {
                    orderStepModal.style.display = 'flex';
                    modalContent.forEach((content) => {
                      content.style.maxWidth = '350px';
                    })
                  });
                });

                /* 배송 조회 모달 열기 */
                openDeliveryModalButtons.forEach((button) => {
                  button.addEventListener('click', () => {
                    deliveryModal.style.display = 'flex';
                    modalContent.forEach((content) => {
                      content.style.maxWidth = '1400px';
                    })
                  });
                });

                /* 영수증 모달 열기 */
                orderAmounts.forEach((orderAmount) => {
                  orderAmount.addEventListener('click', async () => {
                    modalContent.forEach((content) => {
                      content.style.maxWidth = '400px';
                    });
                    const orderId = orderAmount.getAttribute('data-order-id');
                    const receiptContent = document.querySelector('#receiptContent');
                    try {
                      /* TODO: json 값 불러오기 */
                      <%--const response = await fetch(`/receipt?order=${orderId}`);--%>
                      <%--const receiptHtml = await response.text();--%>
                      <%--receiptContent.innerHTML = receiptHtml;--%>
                      receiptModal.style.display = 'flex';
                    } catch (error) {
                      receiptContent.innerHTML = '영수증을 불러오는 데 실패했습니다.';
                      receiptModal.style.display = 'flex';
                    }
                  });
                });

                /* 배송취소 확인 모달 열기 */
                cancelOrderConfirmModal.forEach((button) => {
                  button.addEventListener('click', (event) => {
                    event.preventDefault();
                    /* TODO : [제품명][주문일자][주문금액] 확인 필요할까? */
                    let result = confirm("주문을 취소하시겠습니까?");
                    if (result) {
                          let form = button.closest('form');
                          form.submit();
                    }
                    ;
                  });
                });

                // 모달 닫기
                closeModalButtons.forEach((button) => {
                  button.addEventListener('click', () => {
                    button.closest('.modal').style.display = 'none';
                  });
                });

                window.addEventListener('click', (event) => {
                  if (event.target === orderStepModal || event.target === deliveryModal ||
                      event.target === receiptModal || event.target === orderIdModal) {
                    event.target.style.display = 'none';
                  }
                });

              });

              /* 영수증 링크 복사 */
              const copyLink = () => {
                const url = window.location.href;
                navigator.clipboard.writeText(url)
                .then(() => alert("링크가 복사되었습니다!"))
                .catch(err => alert("링크 복사에 실패했습니다."));
              };

              /* 영수증 프린트 */
              const printReceipt = () => {
                const printContents = document.querySelector('#receiptModal').innerHTML;
                const originalContents = document.body.innerHTML;

                /* 새로운 인쇄용 창 생성 */
                const printWindow = window.open('', '_blank', 'width=800,height=800');
                printWindow.document.write('<html><head><title>Print Receipt</title>');
                printWindow.document.write(
                    '<link href="<c:url value='/css/receiptStyle.css'/>" type="text/css" rel="stylesheet"/>'); // 필요한 스타일 추가
                printWindow.document.write(
                    '<link href="<c:url value='/css/order.css'/>" type="text/css" rel="stylesheet"/>'); // 필요한 스타일 추가
                printWindow.document.write('</head><body><div id="receiptModal" class="modal">');
                printWindow.document.write(printContents);
                printWindow.document.write('</div></body></html>');
                printWindow.document.close();

                /* 인쇄 완료 후 창 닫기 */
                printWindow.onload = () => {
                  printWindow.print();
                  printWindow.close();
                };

                /* 원 표시*/
                // Function to format the date
                const formatDate = (isoDateString) => {
                  const date = new Date(isoDateString);

                  // Format the date as yyyy.mm.dd
                  const formattedDate = date.toLocaleDateString('ko-KR', {
                    year: 'numeric',
                    month: '2-digit',
                    day: '2-digit'
                  }).replace(/\. /g, '.');

                  // Format the time as HH:MM
                  const formattedTime = date.toLocaleTimeString('ko-KR', {
                    hour: '2-digit',
                    minute: '2-digit',
                    hour12: false
                  });

                  return `${'${formattedDate}'} ${'${formattedTime}'}`;
                };

                // Function to format the price
                const formatPrice = (price) => `${'${price.toLocaleString("ko-KR")}'} 원`;

                // Apply formatting to each transaction
                document.querySelectorAll('.order-item-hist').forEach(transaction => {
                  const dateElement = transaction.querySelector('.order-date');
                  const priceElement = transaction.querySelector('.sls_prc');

                  const isoDateString = new Date(dateElement.textContent).toISOString();
                  const price = parseInt(priceElement.textContent, 10);

                  dateElement.textContent = formatDate(isoDateString);
                  priceElement.textContent = formatPrice(price);
                });

                /* TODO: od_dt 데이터 가져오기
                $(document).ready(function () {
                    $('.od_dt').each(function () {
                        let oddt = $(this).data("oddt"); /!* od_dt 데이터 가져오기 *!/
                        let today = new Date();
                        let dateFormat = today.getFullYear(oddt) + '.' + (today.getMonth(oddt) + 1) + '.' + today.getDate(oddt);
                        $(this).text(dateFormat);
                    })
                })
                */

                $(document).ready(function () {
                  $('.od_dt').each(function () {
                    let oddt = $(this).data("oddt"); // od_dt 데이터 가져오기

                    // Date 객체로 변환하기 위해 oddt를 파싱
                    let year = parseInt(oddt.substring(0, 4));
                    let month = parseInt(oddt.substring(5, 7)) - 1; // JavaScript에서 월은 0부터 시작합니다.
                    let day = parseInt(oddt.substring(8, 10));
                    let date = new Date(year, month, day);

                    // Date 객체를 원하는 형식으로 변환
                    let dateFormat = date.getFullYear() + '.' + (date.getMonth() + 1).toString().padStart(2, '0') + '.'
                        + date.getDate().toString().padStart(2, '0');
                    $(this).text(dateFormat);
                  });
                });
              }
            </script>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>


