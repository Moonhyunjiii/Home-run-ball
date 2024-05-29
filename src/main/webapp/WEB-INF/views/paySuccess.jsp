<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/payStyle.css'/>"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>결제 성공</title>
</head>
<body>
<section style="display: flex; justify-content: center; align-items: center">
    <div class="box_section" style="width: 600px; margin-top: 5%">
        <img width="100px" src="https://static.toss.im/illusts/check-blue-spot-ending-frame.png"/>
        <h2>결제를 완료했어요</h2>
        <div class="p-grid typography--p" style="margin-top: 10px">
            <div class="p-grid-col text--left"><b>결제일자</b></div>
            <div class="p-grid-col text--right" id="requestedAt"></div>
        </div>
        <div class="p-grid typography--p" style="margin-top: 10px">
            <div class="p-grid-col text--left"><b>주문명</b></div>
            <div class="p-grid-col text--right" id="orderName"></div>
        </div>
        <div class="p-grid typography--p" style="margin-top: 10px">
            <div class="p-grid-col text--left"><b>결제수단</b></div>
            <div class="p-grid-col text--right" id="method"></div>
        </div>
        <div class="p-grid typography--p" style="margin-top: 50px">
            <div class="p-grid-col text--left"><b>결제금액</b></div>
            <div class="p-grid-col text--right" id="amount"></div>
        </div>
        <div class="p-grid typography--p" style="margin-top: 10px">
            <div class="p-grid-col text--left"><b>주문번호</b></div>
            <div class="p-grid-col text--right" id="orderId"></div>
        </div>
        <div class="p-grid typography--p" style="margin-top: 10px; display: none">
            <div class="p-grid-col text--left"><b>paymentKey</b></div>
            <div class="p-grid-col text--right" id="paymentKey" style="white-space: initial; width: 250px"></div>
        </div>
        <!--      dev:: 참고용-->
        <div id="response" style="white-space: initial; display: none"></div>
        <!--    개발자 가이드  -->
        <!--      <div class="p-grid" style="margin-top: 30px">-->
        <!--        <button class="button p-grid-col5" onclick="location.href='https://docs.tosspayments.com/guides/payment/integration';">연동 문서</button>-->
        <!--        <button class="button p-grid-col5" onclick="location.href='https://discord.gg/A4fRFXQhRu';" style="background-color: #e8f3ff; color: #1b64da">실시간 문의</button>-->
        <!--      </div>-->
        <div class="wrapper__parent" style="flex-direction: row; justify-content: center">
            <a href="/">
                <button class="button" id="btnBackToHome">홈 화면</button>
            </a>
            <a href="/orderDetail">
                <button class="button" id="btnGotoOrderDetail">주문상세</button>
            </a>
        </div>
    </div>
</section>
<script>
  const paymentKeyElement = document.querySelector("#paymentKey");
  const orderIdElement = document.querySelector("#orderId");
  const amountElement = document.querySelector("#amount");
  const responseElement = document.querySelector("#response");
  /* 추가 출력사항 */
  const requestedAtElement = document.querySelector("#requestedAt");
  const orderNameElement = document.querySelector("#orderName");
  const methodElement = document.querySelector("#method");
  /* 리다이렉트 버튼 */
  /*      const btnBackToHome = document.querySelector("#btnBackToHome");
        const btnGotoOrderDetail = document.querySelector("#btnGotoOrderDetail");
        const BASE_URL = "http://127.0.0.1:9090/";
  */


  /* TODO: 쿼리스트링 값, 결제 요청 보낸 데이터 정학성 체크로 결제금액 조작 여부 확인 */
  const urlParams = new URLSearchParams(window.location.search);

  /* 서버로 결제승인에 필요한 결제 정보 requestData 전송 */
  async function confirm() {
    let requestData = {
      paymentKey: urlParams.get("paymentKey"),
      orderId: urlParams.get("orderId"),
      amount: urlParams.get("amount"),
    };
    /* POST:confirn() */
    const response = await fetch("/confirm", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(requestData),
    });

    const json = await response.json();

    if (!response.ok) {
      /* TODO: 결제 실패 비즈니스 로직을 구현하세요. */
      window.location.href = `/payFail?message=${json.message}&code=${json.code}`;
    }
    return json;
  }

  /* 홈 이동 */
  btnBackToHome.addEventListener("click", function () {
    document.location.href = BASE_URL;
  });

  /* 해당 주문상세 이동 */
  btnGotoOrderDetail.addEventListener("click", function () {
    /*        const response = fetch("/orderDetail", {
              method: "GET",
              headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify(requestData),
            });
    */
    console.log(" !! btnGotoOrderDetail !! ")
  });

  confirm().then(function (data) {
    /* 응답 정보 모두 출력 */
    responseElement.innerHTML = `<pre>${'${JSON.stringify(data, null, 4)}'}</pre>`;
    /* 추가 */
    requestedAtElement.textContent = data.requestedAt;
    orderNameElement.textContent = data.orderName;
    methodElement.textContent = data.method;
  });

  /* 쿼리스트링 값 */
  orderIdElement.textContent = urlParams.get("orderId");
  amountElement.textContent = urlParams.get("amount") + "원";
  paymentKeyElement.textContent = urlParams.get("paymentKey");
</script>
</body>
</html>
