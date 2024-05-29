<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="icon" type="image/x-icon"
          href="/img/icon_logo.png">

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>


    <style>
        .container {
            width: 550px;
            margin: auto;
            text-align: left;
            position: relative;
            left: -130px;
        }

        .special-class {
            width: 400px;
            padding: 10px;
            margin-bottom: 7px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        #edit {
            margin-top: -1px;
            border: none;
            cursor: pointer;
            background-color: white;
            outline: none;
            font-size: 13px;
            margin-right: 310px;
            font-weight: bold;
        }

        .infoLabel {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 13px;
            color: gray;
        }

        #loginTitle {
            font-size: 20px;
            margin-bottom: 40px;
            margin-top: 40px;
        }

        span {
            color: gray;
        }

        #roadAddress,
        #jibunAddress,
        #detailAddress {
            width: 400px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        #zip {
            width: 75px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        #zipBtn {
            float: right;
            margin-right: 150px;
        }

        #c_birth {
            padding: 9px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            width: 400px;
            box-sizing: border-box;
        }


        #ad {
            display: flex;
            justify-content: space-between;
        }

        #check {
            margin-bottom: 20px;
            font-size: 13px;
            margin-left: 395px;
            width: 500px;
            display: inline-block;
            font-weight: bold;
        }

        #delete {
            cursor: pointer;
        }

        #choice{
            font-size: 11px;
        }

        .choiceLabel {
            cursor: pointer;
        }

        .oneLine{
            display: flex;
            justify-content: space-between;
        }

        #det, #phn{
            font-size: 12px;
            margin-top: 15px;
        }

        #phn{
            margin-right: 37px;
        }

        .modal {
            display: none; /* 기본적으로 숨김 */
            position: fixed; /* 위치 고정 */
            z-index: 1; /* 다른 요소 위에 표시 */
            left: 0;
            top: 0;
            width: 100%; /* 화면 전체 너비 */
            height: 100%; /* 화면 전체 높이 */
            overflow: auto; /* 스크롤 가능하도록 */
            background-color: rgba(0, 0, 0, 0.4); /* 배경색과 투명도 설정 */
            font-size: 13px;
        }

        /* 모달 내용 스타일 */
        .modal-content {
            background-color: #fefefe; /* 모달 내용 배경색 */
            margin: 15% auto; /* 중앙 정렬 */
            padding: 20px;
            border: 1px solid #888;
            width: 500px; /* 모달 내용 너비 */
            height: 340px;
        }


        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        #dropTitle {
            font-size: 18px;
            margin-top: 13px;
        }

        #dropPwd {
            width: 250px;
            height: 30px;
            display: block;
            margin-bottom: 40px;
            font-size: 12px;
        }

        #dropBtn {
            width: 100%;
            padding: 10px;
            margin-top: 40px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            background-color: gray;
            color: whitesmoke;
        }

        #dropOk {
            margin-top: 7px;
            font-size: 12px;
        }


        #dropDiv {
            display: flex;
            justify-content: center;
            font-size: 13px;
            float: left;
            margin-top: 5px;
        }

        #nowPwd {
            margin-top: 40px;
            margin-bottom: 5px;
        }

        #pp {
            margin-bottom: 3px;
        }

        #pp, #pp2{
            font-size: 11px;
        }

    </style>

    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet" />
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet" />
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
</head>

<body>
<jsp:include page="header.jsp"/>
<jsp:include page="myPageHeader.jsp"/>
<div id="myform">
    <form action="/mypage/info" method="POST" onsubmit="return formCheck()">
        <div class="container">
            <h1 id="loginTitle">Edit Profile</h1>
            <p id="check-result"></p>
            <label class="infoLabel">이메일*</label>
            <input class="special-class" type="text" id="c_email" name="c_email" value="<%= session.getAttribute("c_email")%>" disabled>
            <label class="infoLabel">이름*</label>
            <input class="special-class" type="text" name="c_name" value="<%= session.getAttribute("c_name")%>"disabled>
            <label class="infoLabel">주소</label>
            <div id="ad">
                <input type="text" id="zip" name="c_zip" value="<%= session.getAttribute("c_zip")%>" readonly>
                <input type="button" id="zipBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ></div>
            <input type="text" id="roadAddress" name="c_road_a" value="<%= session.getAttribute("c_road_a")%>" readonly>
            <input type="text" id="jibunAddress" name="c_jibun_a" maxlength="30" value="<%= session.getAttribute("c_jibun_a")%>" readonly>
            <span id="guide" style="color:#999;display:none"></span>
            <div class="oneLine"><input type="text" id="detailAddress" name="c_det_a" maxlength="30" value="<%= session.getAttribute("c_det_a")%>"><p id="det">건물명 + 상세주소</p></div><br>
            <label class="infoLabel">휴대폰</label>
            <div class="oneLine"><input class="special-class" type="text" id="c_phn" name="c_phn" maxlength="12" value="<%= session.getAttribute("c_phn")%>"><p id="phn">-제외</p></div>
            <label class="infoLabel">성별*</label>
            <input class="special-class" type="text" name="c_gnd" value="<%= session.getAttribute("c_gnd")%>"disabled>
            <label class="infoLabel" id="aa">생년월일</label>
            <input type="date" id="c_birth" name="c_birth" min="1900-01-01" max="2023-12-31" value="<%= session.getAttribute("c_birth")%>" ><br><br>
          <div id="choice">
            <a class="infoLabel">SMS 수신</a>
            <input type="radio" id="sms_agr" name="sms_agr" value="Y" <%= session.getAttribute("sms_agr").equals("Y") ? "checked" : "" %>>
            <label for="sms_agr" class="choiceLabel">수신함</label>
            <input type="radio" id="sms_no" name="sms_agr" value="N" <%= session.getAttribute("sms_agr").equals("N") ? "checked" : "" %>>
            <label for="sms_no" class="choiceLabel">수신 안함</label><br><br>

            <a class="infoLabel">이메일 수신</a>
            <input type="radio" id="email_agr" name="email_agr" value="Y" <%= session.getAttribute("email_agr").equals("Y") ? "checked" : "" %>>
            <label for="email_agr" class="choiceLabel">수신함</label>
            <input type="radio" id="email_no" name="email_agr" value="N" <%= session.getAttribute("email_agr").equals("N") ? "checked" : "" %>>
            <label for="email_no" class="choiceLabel">수신 안함</label>
          </div><br><br><br><br><br>


            <div id="check">
     <button id="edit">수정</button> <a id="delete" onclick="openModal()">회원탈퇴</a>
            </div>
      </div>
    </form>
</div>

<div id="myModal" class="modal">

    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>

        <h4 id="dropTitle">회원 탈퇴</h4><br>

        <p id="nowPwd">비밀번호</p>
        <input id="dropPwd" type="password" placeholder="현재 사용중인 비밀번호를 적어주세요" maxlength="15">

        <p id="pp">회원 탈퇴시 계정 복구가 불가능하며 회원님의 개인 정보는 탈퇴 시점으로</p>
        <p id="pp2">3개월 동안 보관됩니다. 보관된 데이터는 3개월 뒤 자동으로 삭제됩니다.</p>


        <div id="dropDiv">
            <input type="checkbox" id="one">
            <label for="one" id="dropOk">동의</label><br><br>
        </div>
        <button id="dropBtn">탈퇴</button>
    </div>

</div>
<%--</div>--%>
<jsp:include page="footer.jsp" flush="false" />


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {

                var roadAddr = data.roadAddress;
                var extraRoadAddr = '';

                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                    extraRoadAddr += data.bname;
                }

                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                document.getElementById('zip').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
            }
        }).open();
    }

    function formCheck() {
        var isPhn = newPhnCheck();
        if (!isPhn) {
            return false;
        }
        return confirm("변경사항을 마무리하시고 적용하시겠습니까?")
    }

    function newPhnCheck() {
        var newPhn = document.getElementById("c_phn").value;

        var newPhnPattern = /^[0-9]{11,12}$/;

        if (!newPhnPattern.test(newPhn)) {
            alert("휴대폰 번호는 숫자 11~12자로 입력이 가능합니다.")
            return false;
        }
        return true;
    }


function test(){
alert("테스트중입니다!")
}

    function openModal() {
        document.getElementById("myModal").style.display = "block";
    }

    // 모달 닫기 함수
    function closeModal() {
        document.getElementById("myModal").style.display = "none";
    }

</script>
</body>
</html>