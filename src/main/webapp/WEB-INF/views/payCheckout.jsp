<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<% response.setHeader("Access-Control-Allow-Origin", "*"); %>--%>

<%--<div class="title__pay">결제정보</div>--%>
<div class="wrapper__parent">
    <%-- 테스트값 입력 영역(dev) --%>
    <div class="wrapper" style="display: none">

        <div class="box_section">

            <div class="pay_col">
                <div class="test">
                    <label for="testAmount">금&nbsp;&nbsp;&nbsp;액
                        <input id="testAmount" class="test" type="text" name="testAmount" value="" placeholder="테스트 금액">
                    </label>
                </div>
                <div class="test">
                    <label for="testCoupon">쿠&nbsp;&nbsp;&nbsp;폰
                        <input id="testCoupon" class="test" type="text" name="testCoupon" value="" placeholder="테스트 쿠폰">
                    </label>
                </div>
                <div class="test">
                    <label for="orderName">주문명
                        <input id="orderName" class="test" type="text" name="orderName" value="" placeholder="테스트 주문명">
                    </label>
                </div>
            </div>
            <div class="pay_col">
                <div class="test">
                    <label for="customerEmail">이메일
                        <input id="customerEmail" class="test" type="text" name="customerEmail" value=""
                               placeholder="테스트 이메일">
                    </label>
                </div>
                <div class="test">
                    <label for="customerName">고객명
                        <input id="customerName" class="test" type="text" name="customerName" value=""
                               placeholder="테스트 고객명">
                    </label>
                </div>
                <div class="test">
                    <label for="customerMobilePhone">연락처
                        <input id="customerMobilePhone" class="test" type="text" name="customerMobilePhone" value=""
                               placeholder="테스트 연락처">
                    </label>
                </div>
            </div>
        </div>
    </div>
    <!-- 주문서 영역 -->
    <div class="wrapper">
        <div class="box_section" style="padding: 40px 30px 50px 30px; margin-top: 30px;">
            <!-- 결제 UI -->
            <div id="payment-method"></div>
            <!-- 이용약관 UI -->
            <div id="agreement"></div>
            <!-- 쿠폰 체크박스 -->
            <div class="checkable typography--p" style="padding-left: 25px">
                <label for="coupon-box" class="checkable__label typography--regular">
                    <input id="coupon-box" class="checkable__input" type="checkbox" aria-checked="true" disabled/>
                    <span class="checkable__label-text">0원 쿠폰 적용</span>
                </label>
            </div>
            <!-- 결제하기 버튼 -->
            <button class="button" id="btnPayment" style="margin-top: 30px" disabled>결제하기</button>
        </div>
    </div>
</div>
<%--<script type="text/javascript" src="<c:url value='/javascript/checkout.js'/>"></script>--%>
<script>
  const btnPayment = document.querySelector("#btnPayment");
  const coupon = document.querySelector("#coupon-box");
  /* TODO: 임시로 customerKey 생성. billing 기능을 위해 남겨둠  */
  const generateRandomString = () => window.btoa(Math.random()).slice(0, 20);
  /* 추가 */
  const testAmountElement = document.querySelector("#testAmount");
  const testCouponElement = document.querySelector("#testCoupon");

  /* TODO: 수정 및 cors 이슈 해결 필요 */
  let amount = 0;

  /*
  * @docs https://docs.tosspayments.com/reference/widget-sdk#sdk-설치-및-초기화
  * ------  결제위젯 초기화 ------
  * TODO: 구매자의 고유 아이디를 불러와서 customerKey로 설정하세요. 이메일・전화번호와 같이 유추가 가능한 값은 안전하지 않습니다.
  */
  const widgetClientKey = "test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm";
  const customerKey = generateRandomString();
  const paymentWidget = PaymentWidget(widgetClientKey, customerKey); /* 회원 결제 */
  /* const paymentWidget = PaymentWidget(widgetClientKey, PaymentWidget.ANONYMOUS); //비회원 결제 */

  /* ------  결제 UI 렌더링 ------ */
  /* @docs https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods선택자-결제-금액-옵션 */
  paymentMethodWidget = paymentWidget.renderPaymentMethods(
      "#payment-method",
      {value: amount},
      /* 렌더링하고 싶은 결제 UI의 variantKey */
      /* @docs https://docs.tosspayments.com/guides/payment-widget/admin#멀티-결제-ui */
      {variantKey: "DEFAULT"}
  );
  /* ------  이용약관 UI 렌더링 ------ */
  /* @docs https://docs.tosspayments.com/reference/widget-sdk#renderagreement선택자-옵션 */
  paymentWidget.renderAgreement("#agreement", {variantKey: "AGREEMENT"});

  /*  ------  결제 UI 렌더링 완료 이벤트 ------ */
  paymentMethodWidget.on("ready", function () {
    btnPayment.disabled = false;
    coupon.disabled = false;
  });

  /* ------  쿠폰 결제 시 금액 업데이트 ------ */
  /* @docs https://docs.tosspayments.com/reference/widget-sdk#updateamount결제-금액 */
  coupon.addEventListener("change", function () {
    if (coupon.checked) {
      paymentMethodWidget.updateAmount(amount - testCouponElement.value);
    } else {
      paymentMethodWidget.updateAmount(amount);
    }
  });
  /* 테스트베드 이벤트 */
  testAmountElement.addEventListener("change", function () {
    // amount = testAmountElement.value;
    amount = testAmountElement.value;
    paymentMethodWidget.updateAmount(amount);
  });
  testCouponElement.addEventListener("change", function () {
    document.querySelector(
        ".checkable__label-text").innerHTML = testCouponElement.value + "원 쿠폰 적용";
  });

  /* ------ '결제하기' 버튼 누르면 결제창 띄우기 ------ */
  /* @docs https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보 */
  btnPayment.addEventListener("click", function () {
    /* 결제를 요청하기 전에 orderId, amount를 DB에 저장헤서 정합성 체크  */
    amount = document.querySelector("#amount").value;
    paymentMethodWidget.updateAmount(amount);

    let od_name = document.querySelector('#dlv-rcver').textContent;
    console.log("[btnPayment] " + amount +"|"+od_name);

    paymentWidget.requestPayment({
      orderId: generateRandomString(),
      orderName: document.querySelector("body > section.order__items > div.tb__order > form > table > tbody > tr:nth-child(1) > td:nth-child(2) > a").textContent,
      successUrl: window.location.origin + "/success",
      failUrl: window.location.origin + "/fail",
      customerEmail: 'hrkwon82@gmail.com',
      customerName: od_name
      /* ,customerMobilePhone: '01012345678' // 핸드폰결제 미사용 */
    });
  });

  /*결제 성공시(200) order테이블 insert*/
  if (window.location.pathname === "/success") {
    // 결제가 성공하면 주문을 처리하는 코드 실행
    $.ajax({
      url: "<c:url value='/order'/>?c_id=${c_id}",
      type: "POST",
      success: function (response) {
        // 성공적으로 처리되었을때
        console.log("주문이 성공적으로 처리되었습니다.");
      }
    });
  }

</script>