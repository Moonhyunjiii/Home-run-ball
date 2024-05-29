<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        .productRegister-container {
            width: 100%;
            margin: 20px 0px;
            display: inline-block;
            text-align: center;
        }

        .productRegister-container td {
            text-align: left;
            padding-left: 20px;
        }

        .productRegister-container select {
            outline: none;
            border: 1px solid #ccc;
            padding: 5px;
            font-size: 13px;
            text-align: center;
        }

        .productRegister-container select > option {
            text-align: center;
        }

        .productRegister-container input[type="text"],
        .productRegister-container input[type="date"] {
            color: gray;
            background-color: white;
            border: 1px solid #ccc;
            height: 100%;
            font-size: 13px;
            padding: 5px;
        }

        .productRegister-container input[type="text"] {
            width: 300px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: auto auto;
        }
        .grid-item:nth-child(1),
        .grid-item:nth-child(2),
        .grid-item:nth-child(3){
            height: 250px;
        }
        .grid-item:nth-child(4) {
            grid-column: 2 / 3;
            grid-row: 1 / 4;
        }

        .productRegister-container input[type="date"] {
            width: 120px;
            text-align: center;
        }

        .productRegister-container input[type="text"]::placeholder {
            color: gray;
        }

        .product_content {
            margin: 20px;
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
            border-radius: 4px;
            width: 100px;
            padding: 10px;
            font-size: 13px;
            cursor: pointer;
        }

        .registerBtn {
            border: 2px solid #2196F3;
            color: white;
            background-color: #2196F3;
        }

        .cancelBtn {
            border: 2px solid #2196F3;
            color: dodgerblue;
            background-color: white;
        }

        .registerBtn:hover {
            background: #0b7dda;
        }

        .cancelBtn:hover {
            background: #2196F3;
            color: white;
        }

        .clickButton {
            display: inline-block;
            height: 50px;
        }


        /* The container */
        .radio-container {
            position: relative;
            padding: 2px 30px 2px 25px;
            cursor: pointer;
            font-size: 13px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            /*    display: block;*/
            /*    margin-bottom: 12px;*/
        }

        /* Hide the browser's default radio button */
        .radio-container input {
            position: absolute;
            opacity: 0;
            cursor: pointer;
        }

        /* Create a custom radio button */
        .checkmark {
            position: absolute;
            top: 5px;
            left: 0px;
            height: 15px;
            width: 15px;
            background-color: #eee;
            border-radius: 50%;
        }

        /* On mouse-over, add a grey background color */
        .radio-container:hover input ~ .checkmark {
            background-color: #ccc;
        }

        /* When the radio button is checked, add a blue background */
        .radio-container input:checked ~ .checkmark {
            background-color: #2196F3;
        }

        /* Create the indicator (the dot/circle - hidden when not checked) */
        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        /* Show the indicator (dot/circle) when checked */
        .radio-container input:checked ~ .checkmark:after {
            display: block;
        }

        /* Style the indicator (dot/circle) */
        .radio-container .checkmark:after {
            top: 3.5px;
            left: 3.5px;
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: white;
        }

        span {
            color: #7e7e87;
        }
    </style>
    <title>제품 등록 화면</title>
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
            <button id="closeNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_close()" style="display:none">
                &times;
            </button>
        </div>
        <div id="headline" class="header-title">제품 등록 화면</div>
    </div>
    <div class="w3-container productRegister-container">
        <form id="registerForm" action="<c:url value='/admin/product/register'/>" method="post" enctype="multipart/form-data">
            <div class="grid-container">
                <div class="product_content grid-item">
                    <table style="width:100%">
                        <tr>
                            <th colspan="2">
                                표시 설정
                            </th>
                        </tr>
                        <tr>
                            <th>진열 상태</th>
                            <td>
                                <label class="radio-container" for="onShow">진열하기
                                    <input type='radio' id="onShow" name='pd_is_show' value='Y' required/>
                                    <span class="checkmark"></span>
                                </label>

                                <label class="radio-container" for="noShow">진열제외
                                    <input type='radio' id="noShow" name='pd_is_show' value='N'/>
                                    <span class="checkmark"></span>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <th>판매 상태</th>
                            <td>
                                <label class="radio-container" for="planSale">판매 예정
                                    <input type='radio' id="planSale" name='pd_stat_hist_cd' value='planSale' required/>
                                    <span class="checkmark"></span>
                                </label>

                                <label class="radio-container" for="onSale">판매 중
                                    <input type='radio' id="onSale" name='pd_stat_hist_cd' value='onSale'/>
                                    <span class="checkmark"></span>
                                </label>

                                <label class="radio-container" for="notSale">판매 안 함
                                    <input type='radio' id="notSale" name='pd_stat_hist_cd' value='notSale'/>
                                    <span class="checkmark"></span>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                제품분류 선택
                            </th>
                            <td>
                                <select class="search-option" id="pd_type_cd" name="pd_type_cd">
                                    <option disabled="" hidden="" selected="">제품 유형</option>
                                    <option value="GLV">글러브</option>
                                    <option value="PRO">보호장비</option>
                                    <option value="OGL">장갑</option>
                                    <option value="ACC">액세서리</option>
                                    <option value="BAT">배트</option>
                                    <option value="APP">의류</option>
                                    <option value="BAL">야구공</option>
                                    <option value="SHO">야구화</option>
                                </select>

                                <select class="search-option" id="pd_type_det_cd" name="pd_type_det_cd">
                                    <option disabled="" hidden="" selected="">제품 상세 유형</option>
                                    <option value="CAT">포수</option>
                                    <option value="INF">내야수</option>
                                    <option value="FIR">1루수</option>
                                    <option value="PIT">투수</option>
                                    <option value="OTF">외야수</option>
                                    <option value="BTR">타자</option>
                                    <option value="UMP">심판</option>
                                    <option value="DEF">수비</option>
                                    <option value="SLD">슬라이딩</option>
                                    <option value="NEC">목걸이</option>
                                    <option value="HAT">모자</option>
                                    <option value="FST">사계절상의</option>
                                    <option value="FSB">사계절하의</option>
                                    <option value="WTT">겨울용상의</option>
                                    <option value="WTB">겨울용하의</option>
                                    <option value="SMT">여름용상의</option>
                                    <option value="SMB">여름용하의</option>
                                    <option value="UNF">유니폼</option>
                                    <option value="OTR">아우터</option>
                                    <option value="SPK">스파이크_야구화</option>
                                    <option value="TRF">인조잔디_야구화</option>
                                </select>

                                <select class="search-option" id="brd_cd" name="brd_cd">
                                    <option disabled="" hidden="" selected="">브랜드</option>
                                    <option value="GLD">골드</option>
                                    <option value="KBT">구보타슬러거</option>
                                    <option value="NB">뉴발란스</option>
                                    <option value="DVD">다비드</option>
                                    <option value="DST">데상트</option>
                                    <option value="RAW">롤링스</option>
                                    <option value="MOR">모리모토</option>
                                    <option value="MIZ">미즈노</option>
                                    <option value="BKP">백퍼센트</option>
                                    <option value="VL">볼레</option>
                                    <option value="SSK">사사키</option>
                                    <option value="SKL">스카이라인</option>
                                    <option value="STM">스톰</option>
                                    <option value="WLP">월드페가수스</option>
                                    <option value="IPS">아이피셀렉트</option>
                                    <option value="ACS">아식스</option>
                                    <option value="ATM">아톰즈</option>
                                    <option value="UA">언더아머</option>
                                    <option value="WIL">윌슨</option>
                                    <option value="EVO">이보쉴드</option>
                                    <option value="IKJ">인코자바</option>
                                    <option value="ZET">제트</option>
                                    <option value="GF">지폼</option>
                                    <option value="PRS">프로스펙스</option>
                                    <option value="TTM">투더문</option>
                                    <option value="HD">하데나</option>
                                    <option value="HTK">하타케야마</option>
                                    <option value="44G">44글러브</option>
                                    <option value="ETC">기타</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 특성(선택)</th>
                            <td>
                                <input type="checkbox" id="npd" name="pd_chr_cd" value="N">
                                <label for="npd">신상품</label><br>
                                <input type="checkbox" id="hpd" name="pd_chr_cd" value="H">
                                <label for="hpd">인기 제품</label><br>
                                <input type="checkbox" id="rpd" name="pd_chr_cd" value="R">
                                <label for="rpd">추천 제품</label><br>
                                <input type="hidden" name="pd_chr_cd" value="">
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="product_content grid-item">
                    <table style="width:100%">
                        <tr>
                            <th colspan="2">판매 정보</th>
                        </tr>
                        <tr>
                            <th>최소 주문 수량</th>
                            <td>
                                <input type="text" id="min_od_qty" name="min_od_qty" size="4" value="1" required
                                       maxlength="4">개 이상
                            </td>
                        </tr>
                        <tr>
                            <th>최대 주문 수량</th>
                            <td>
                                <input type="text" id="max_od_qty" name="max_od_qty" size="4" value="9999"
                                       maxlength="4">개 이하
                            </td>
                        </tr>
                        <tr>
                            <th>판매 예정일</th>
                            <td>
                                <input type='date' id="sls_strt_dt" name='sls_strt_dt' required/>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 제조년월</th>
                            <td>
                                <input type='date' id="pd_mnf_date" name='pd_mnf_date' required/>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="product_content grid-item">
                    <table style="width:100%">
                        <tr>
                            <th colspan="2">이미지 등록</th>
                        </tr>
                        <tr>
                            <th>대표 이미지</th>
                            <td>
                                <input type="file" name="mn_img_f" required/>
                            </td>
                        </tr>
                        <tr>
                            <th>상세 이미지</th>
                            <td>
                                <input type="file" name="det_img_f" required/>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="product_content grid-item">
                    <table style="width:100%">
                        <tr>
                            <th colspan="2">기본 정보</th>
                        </tr>
                        <tr>
                            <th>제품ID</th>
                            <td>
                                <input type='radio' id="new" name='pd_id' value="new"/>
                                <label for="new">새로운 제품</label>
                                <input type='radio' id="same" name='pd_id' value="same" required/>
                                <label for="same">색깔만 다른 이전과 동일한 제품</label>
                            </td>
                        </tr>
                        <tr>
                            <th>제품명</th>
                            <td>
                                <input type="text" name="pd_name" class="pdNameCnt" maxlength="100"
                                       placeholder="하타케야마 포수미트 M2 양의지 강민호 스펙 글러브 블루/블랙/레드 H29" required>
                                <span id="pdNameCnt">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>모델명</th>
                            <td>
                                <input type="text" name="mdl_name" class="modelNameCnt" maxlength="100"
                                       placeholder="하타케야마 포수미트" required>
                                <span id="modelNameCnt">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>스포츠 유형</th>
                            <td>
                                <select name="sprt_type_cd">
                                    <option value="BASE">경식</option>
                                    <option value="SOFT">연식</option>
                                    <option value="CASL">캐주얼</option>
                                    <option value="TRA">훈련용</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>자체 제품 코드</th>
                            <td>
                                <input type="text" name="og_pd_num" class="originProductNum" maxlength="100" required>
                                <span id="originProductNum">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 상태</th>
                            <td>
                                <select name="qlt_cd" required>
                                    <option value="NEW">신제품</option>
                                    <option value="USE">중고제품</option>
                                    <option value="REF">리퍼제품</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 홍보문구</th>
                            <td>
                                <input type="text" name="pd_ad_cmt" class="productAdCommentCnt" size="50"
                                       maxlength="100" id="adComment" style="width: inherit" required/>
                                <span id="productAdCommentCnt">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>제조국</th>
                            <td>
                                <input type="text" name="origin" maxlength="10" class="originCnt" required>
                                <span id="originCnt">[0 / 10]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>제조사</th>
                            <td>
                                <input type="text" name="mfr" maxlength="10" class="mfrCnt" required>
                                <span id="mfrCnt">[0 / 10]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>시리즈</th>
                            <td>
                                <input type="text" name="srs_id" class="seriesIdCnt" maxlength="100" required>
                                <span id="seriesIdCnt">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>사용 연령대</th>
                            <td>
                                <input type='radio' id="adult" name='age_grp_cd' value='ADL' required/>
                                <label for="adult">성인</label>
                                <input type='radio' id="youth" name='age_grp_cd' value="YOU"/>
                                <label for="youth">유소년</label>
                            </td>
                        </tr>
                        <tr>
                            <th>사용 선수명(선택)</th>
                            <td>
                                <input type="text" name="player_name" class="playerNameCnt" maxlength="50"/>
                                <span id="playerNameCnt">[0 / 50]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 소재</th>
                            <td>
                                <input type="text" name="mtrl" class="materialCnt" maxlength="100" required>
                                <span id="materialCnt">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>시즌</th>
                            <td>
                                <input type="text" name="season" maxlength="10" required>
                            </td>
                        </tr>
                        <tr>
                            <th>무게(g)</th>
                            <td>
                                <input type="text" name="wgh" id="wgh" class="weighCnt" maxlength="100" required>
                                <span id="weighCnt">[0 / 100]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>색깔 코드</th>
                            <td>
                                <select id="clr_cd" name="clr_cd">
                                    <option value="00">흰색</option>
                                    <option value="01">흰색_회색</option>
                                    <option value="02">흰색_검은색</option>
                                    <option value="03">흰색_분홍색</option>
                                    <option value="04">흰색_빨간색</option>
                                    <option value="05">흰색_주황색</option>
                                    <option value="06">흰색_노란색</option>
                                    <option value="07">흰색_초록색</option>
                                    <option value="08">흰색_파란색</option>
                                    <option value="09">흰색_보라색</option>
                                    <option value="10">회색</option>
                                    <option value="11">회색_검은색</option>
                                    <option value="12">회색_분홍색</option>
                                    <option value="13">회색_빨간색</option>
                                    <option value="14">회색_주황색</option>
                                    <option value="15">회색_노란색</option>
                                    <option value="16">회색_초록색</option>
                                    <option value="17">회색_파란색</option>
                                    <option value="18">회색_보라색</option>
                                    <option value="20">검은색</option>
                                    <option value="21">검은색_분홍색</option>
                                    <option value="22">검은색_빨간색</option>
                                    <option value="23">검은색_주황색</option>
                                    <option value="24">검은색_노란색</option>
                                    <option value="25">검은색_초록색</option>
                                    <option value="26">검은색_파란색</option>
                                    <option value="27">검은색_보라색</option>
                                    <option value="30">분홍색</option>
                                    <option value="31">분홍색_빨간색</option>
                                    <option value="32">분홍색_주황색</option>
                                    <option value="33">분홍색_노란색</option>
                                    <option value="34">분홍색_초록색</option>
                                    <option value="35">분홍색_파란색</option>
                                    <option value="36">분홍색_보라색</option>
                                    <option value="40">빨간색</option>
                                    <option value="41">빨간색_주황색</option>
                                    <option value="42">빨간색_노란색</option>
                                    <option value="43">빨간색_초록색</option>
                                    <option value="44">빨간색_파란색</option>
                                    <option value="45">빨간색_보라색</option>
                                    <option value="50">주황색</option>
                                    <option value="51">주황색_노란색</option>
                                    <option value="52">주황색_초록색</option>
                                    <option value="53">주황색_파란색</option>
                                    <option value="54">주황색_보라색</option>
                                    <option value="60">노란색</option>
                                    <option value="61">노란색_초록색</option>
                                    <option value="62">노란색_파란색</option>
                                    <option value="63">노란색_보라색</option>
                                    <option value="70">초록색</option>
                                    <option value="71">초록색_파란색</option>
                                    <option value="72">초록색_보라색</option>
                                    <option value="80">파란색</option>
                                    <option value="81">파란색_보라색</option>
                                    <option value="88">하늘색</option>
                                    <option value="89">남색</option>
                                    <option value="90">보라색</option>
                                    <option value="91">금색</option>
                                    <option value="92">금색_검은색</option>
                                    <option value="97">카멜</option>
                                    <option value="98">탄색</option>
                                    <option value="99">갈색</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 요약 설명</th>
                            <td>
                                <input type="text" name="pd_smr_dsc" size="50" maxlength="200" id="textSummary"
                                       style="width: inherit" required/>
                                <span id="summaryLengthCheck">[0 / 200]</span>
                            </td>
                        </tr>
                        <tr>
                            <th>제품 상세 설명</th>
                            <td>
                                <textarea name="pd_det_dsc" id="textDescription" style="resize: none" maxlength="5000"
                                          required></textarea>
                                <span id="descriptionLengthCheck">[0 / 5000]</span>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="buttons">
                <button type="submit" class="registerBtn clickButton" id="registerBtn">제품 등록</button>
                <button type="button" class="cancelBtn clickButton" id="cancelBtn">취소</button>
            </div>
        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    $(document).ready(function () {
        /*입력한 값의 앞, 뒤에 있는 공백 제거*/
        $("input").on('blur', function () {
            $(this).val($.trim($(this).val()));
        });

        /*제조국 글자 수 세기*/
        $(".originCnt").keyup(function () {
            let content = $(this).val();
            $("#originCnt").text("[" + content.length + " / 10]"); /* 실시간 글자수 카운팅 */
            if (content.length > 10) {
                alert("최대 10자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 10));
                $('#originCnt').text("[10 / 10]");
            }
        });

        /*제조사 글자 수 세기*/
        $(".mfrCnt").keyup(function () {
            let content = $(this).val();
            $("#mfrCnt").text("[" + content.length + " / 10]"); /* 실시간 글자수 카운팅 */
            if (content.length > 10) {
                alert("최대 10자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 10));
                $('#mfrCnt').text("[10 / 10]");
            }
        });

        /*제품명 글자 수 세기*/
        $(".pdNameCnt").keyup(function () {
            let content = $(this).val();
            $("#pdNameCnt").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#pdNameCnt').text("[100 / 100]");
            }
        });

        /*모델명 글자 수 세기*/
        $(".modelNameCnt").keyup(function () {
            let content = $(this).val();
            $("#modelNameCnt").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#modelNameCnt').text("[100 / 100]");
            }
        });

        /*자체 제품 코드 글자 수 세기*/
        $(".originProductNum").keyup(function () {
            let content = $(this).val();
            $("#originProductNum").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#originProductNum').text("[100 / 100]");
            }
        });

        /*제품 홍보문구 글자 수 세기*/
        $(".productAdCommentCnt").keyup(function () {
            let content = $(this).val();
            $("#productAdCommentCnt").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#productAdCommentCnt').text("[100 / 100]");
            }
        });

        /*시리즈 글자 수 세기*/
        $(".seriesIdCnt").keyup(function () {
            let content = $(this).val();
            $("#seriesIdCnt").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#seriesIdCnt').text("[100 / 100]");
            }
        });

        /*제품 소재 글자 수 세기*/
        $(".materialCnt").keyup(function () {
            let content = $(this).val();
            $("#materialCnt").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#materialCnt').text("[100 / 100]");
            }
        });

        /*무게 글자 수 세기*/
        $(".weighCnt").keyup(function () {
            let content = $(this).val();
            $("#weighCnt").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#weighCnt').text("[100 / 100]");
            }
        });

        /*사용 선수명 세기*/
        $(".playerNameCnt").keyup(function () {
            let content = $(this).val();
            $("#playerNameCnt").text("[" + content.length + " / 50]"); /* 실시간 글자수 카운팅 */
            if (content.length > 50) {
                alert("최대 50자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 50));
                $('#playerNameCnt').text("[50 / 50]");
            }
        });

        /*홍보 문구의 길이가 100자가 넘지 않도록 제한하는 함수*/
        $("#adComment").keyup(function () {
            let content = $(this).val();
            $("#adLengthCheck").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
            if (content.length > 100) {
                alert("최대 100자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 100));
                $('#adLengthCheck').text("[100 / 100]");
            }
        });

        /*제품 요약의 텍스트 길이가 200자가 넘지 않도록 하는 함수*/
        $("#textSummary").keyup(function () {
            let content = $(this).val();
            $("#summaryLengthCheck").text("[" + content.length + " / 200]"); /* 실시간 글자수 카운팅 */
            if (content.length > 200) {
                alert("최대 200자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 200));
                $('#summaryLengthCheck').text("[200 / 200]");
            }
        });

        /*제품 상세 설명의 텍스트 길이가 5000자가 되지 않도록 제한하는 함수*/
        $("#textDescription").keyup(function () {
            let content = $(this).val();
            $("#descriptionLengthCheck").text("[" + content.length + " / 5000]"); /* 실시간 글자수 카운팅 */
            if (content.length > 5000) {
                alert("최대 5000자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 5000));
                $('#descriptionLengthCheck').text("[0 / 5000]");
            }
        });

        /* cancelBtn을 클릭하면 admin/main으로 이동한다. */
        $("#cancelBtn").on("click", function () {
            location.href = "<c:url value='/admin/main/'/>";
        });

        /* 무게(wgh)에 입력된 값이 숫자인지 1이상의 정수인지 확인한다. */
        $('#wgh').on('blur', function () {
            let weightInput = $(this).val();
            if (isNaN(weightInput) || weightInput.trim() === '') {
                alert("무게는 숫자만 입력할 수 있습니다.");
                return $(this).val('');
            }

            /*입력 받은 값을 실수로 변환한다.*/
            weightInput = parseFloat(weightInput);
            /*입력 받은 값을 정수로 변환한다.*/
            let integerInput = parseInt(weightInput);

            /*무게가 1보다 작거나 실수면 경고창이 뜬다.*/
            if (weightInput < 1 || weightInput !== integerInput) {
                alert("무게는 1이상의 정수만 입력할 수 있습니다.")
                return $(this).val('');
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
        $('#min_od_qty, #max_od_qty').on('blur', function () {
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
        $('#sls_strt_dt, #pd_mnf_date').on('blur', function () {
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
</script>
</body>
</html>