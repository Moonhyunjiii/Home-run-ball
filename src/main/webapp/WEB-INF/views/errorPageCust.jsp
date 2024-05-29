<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Open+Sans">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>
    <title> 잠시 기다려주세요 </title>
    <style>
      @keyframes blinkingText {
        0% {
          opacity: 0;
        }
        49% {
          opacity: 0;
        }
        50% {
          opacity: 1;
        }
      }

      @media (min-width: 600px) {
        body {
          font-size: 16px;
        }
      }

      @media (min-width: 900px) {
        body {
          font-size: 24px;
          font-weight: 400;
        }
      }
    </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<section style="margin: 10px; height: 40vh; display: flex; justify-content: center; align-items: center; flex-direction: column">
    <div style="width: 70ch; height: 25ch;">
        <div style="text-align: center;">
            <span style="background-color: #bbb; color: #000084;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;
        </div>
        <div style="text-align: center;">
            <span style="background-color: #bbb; color: #000084;">&nbsp;E&nbsp;R&nbsp;R&nbsp;</span><span style="background-color: #605f5f; color: #000084;">&nbsp;</span>
        </div>
        <div style="text-align: center;">
            <span style="background-color: #bbb; color: #000084;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="background-color: #605f5f; color: #000084;">&nbsp;</span>
        </div>
        <div style="text-align: center;">
            &nbsp;<span style="background-color: #605f5f; color: #000084;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        </div>
        <div style="text-align: left;">&nbsp;</div>
        <div style="text-align: left;">
            A fatal exception has occurred at C0DE:HMRNBL in 0xOEUAL.
        </div>
        <div style="text-align: left;">The current request will be terminated.</div>
        <div style="text-align: left;">&nbsp;</div>
        <div style="text-align: left;">* Press any key to return to the previous page.</div>
        <div style="text-align: left;">
            * Press CTRL+ALT+DEL to restart your computer. You will
        </div>
        <div style="text-align: left;">
            &nbsp;&nbsp;lose any unsaved information in all applications.
        </div>
        <div style="text-align: left;">&nbsp;</div>
        <div style="text-align: center;">
            Press any key to continue...<span style="animation: blinkingText 0.8s infinite;">&#9608;</span>
        </div>
    </div>
    <div style="display: flex; flex-direction: column; align-items: flex-start;">
        <h1>잘못된 접근입니다. </h1>
        <p>${errorMessage}</p>
        <h1>문제가 지속되는 경우 고객센터로 연락바랍니다. (1540-0000) </h1>
        <a href="/"> Go back to Home</a>
    </div>
</section>


<jsp:include page="footer.jsp" flush="false"/>
</body>
</html>
