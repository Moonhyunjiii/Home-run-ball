<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/payStyle.css'/>" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>결제 실패</title>
  </head>

  <body>
    <div id="info" class="box_section" style="width: 600px">
      <img width="100px" src="https://static.toss.im/lotties/error-spot-no-loop-space-apng.png" />
      <h2>결제를 실패했어요</h2>

      <div class="p-grid typography--p" style="margin-top: 50px">
        <div class="p-grid-col text--left"><b>에러메시지</b></div>
        <div class="p-grid-col text--right" id="message"></div>
      </div>
      <div class="p-grid typography--p" style="margin-top: 10px">
        <div class="p-grid-col text--left"><b>에러코드</b></div>
        <div class="p-grid-col text--right" id="code"></div>
      </div>
<!--      개발자 가이드 -->
<!--      <div class="p-grid">-->
<!--        <button class="button p-grid-col5" onclick="location.href='https://docs.tosspayments.com/guides/payment/integration';">연동 문서</button>-->
<!--        <button class="button p-grid-col5" onclick="location.href='https://discord.gg/A4fRFXQhRu';" style="background-color: #e8f3ff; color: #1b64da">실시간 문의</button>-->
<!--      </div>-->
    </div>

    <script>
      const urlParams = new URLSearchParams(window.location.search);

      const codeElement = document.getElementById("code");
      const messageElement = document.getElementById("message");

      codeElement.textContent = urlParams.get("code");
      messageElement.textContent = urlParams.get("message");
    </script>
  </body>
</html>
