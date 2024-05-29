<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: left;
        }
        .product_register {
            border: 0.5rem outset cornflowerblue;
            box-shadow: 0 0 0 1rem lightgrey;
            margin-top: 50px;
        }
        .product_content {
            margin: 20px;
        }

        textarea {
            width: 100%;
            height: 200px;
        }

        .buttons {
            margin-top: 30pt;
        }

        .registerBtn {
            border-radius: 4px;
            border: none;
            color: white;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            background-color: #2196F3;
        }
        .registerBtn:hover {background: #0b7dda;}

        .cancelBtn {
            border-radius: 4px;
            border: 2px solid #2196F3;
            background-color: white;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            color: dodgerblue;
        }

        .cancelBtn:hover {
            background: #2196F3;
            color: white;
        }
    </style>
    <title>제품 등록 화면</title>
</head>
<body>
<jsp:include page="admin/adminMenu.jsp" flush="false" />
<h1>제품 등록 화면</h1>
    <form id="registerForm" action="<c:url value='/admin/product/register'/>" method="post">
        <div class="product_register">
            <div class="product_content">
                <table style="width:100%">
                    <tr>
                        <th colspan="2">
                            표시 설정
                        </th>
                    </tr>
                    <tr>
                        <th>진열 상태</th>
                        <td>
                            <input type='radio' id="onShow" name='pd_is_show' value='Y' required/>
                            <label for="onShow">진열하기</label>
                            <input type='radio' id="noShow" name='pd_is_show' value='N' />
                            <label for="noShow">진열제외</label>
                        </td>
                    </tr>
                    <tr>
                        <th>판매 상태</th>
                        <td>
                            <input type='radio' id="planSale" name='pd_stat_hist_cd' value='planSale' required/>
                            <label for="planSale">판매 예정</label>
                            <input type='radio' id="onSale" name='pd_stat_hist_cd' value='onSale' />
                            <label for="onSale">판매 중</label>
                            <input type='radio' id="notSale" name='pd_stat_hist_cd' value='notSale' />
                            <label for="notSale">판매 안 함</label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            상품분류 선택
                        </th>
                        <td>
                            <label for="pd_type_cd">제품 유형</label>
                            <select id="pd_type_cd" name="pd_type_cd">
                                <option value="GLV">글러브</option>
                                <option value="PRO">보호장비</option>
                                <option value="OGL">장갑</option>
                                <option value="ACC">액세서리</option>
                                <option value="BAT">배트</option>
                                <option value="APP">의류</option>
                                <option value="BAL">야구공</option>
                                <option value="SHO">야구화</option>
                            </select>

                            <label for="pd_type_det_cd">제품 상세 유형</label>
                            <select id="pd_type_det_cd" name="pd_type_det_cd">
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

                            <label for="brd_cd">브랜드</label>
                            <select id="brd_cd" name="brd_cd" >
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
                        <th>제품 특성</th>
                        <td>
                            <input type="checkbox" id="npd" name="pd_chr_cd" value="N">
                            <label for="npd">신상품</label><br>
                            <input type="checkbox" id="hpd" name="pd_chr_cd" value="H">
                            <label for="hpd">HOT</label><br>
                            <input type="checkbox" id="spd" name="pd_chr_cd" value="S">
                            <label for="spd">스테디 셀러</label><br>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="product_content">
                <table style="width:100%">
                    <tr>
                        <th colspan="2">기본 정보</th>
                    </tr>
                    <tr>
                        <th>상품ID</th>
                        <td>
                            <input type="text" name="pd_id" placeholder="GLV000001-80" required>
                            <button type="button" id="searchProductIdBtn">최근 제품ID 검색하기</button>
                        </td>
                    </tr>
                    <tr>
                        <th>상품명</th>
                        <td>
                            <input type="text" name="pd_name" placeholder="하타케야마 포수미트 M2 양의지 강민호 스펙 글러브 블루/블랙/레드 H29" required>
                        </td>
                    </tr>
                    <tr>
                        <th>모델명</th>
                        <td>
                            <input type="text" name="mdl_name" placeholder="하타케야마 포수미트" required>
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
                            <input type="text" name="og_pd_num" required>
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
                            <input type="text" name="pd_ad_cmt" size="50" maxlength="100" id="adComment" style="width: inherit" required/>
                            <span id="adLengthCheck">[0 / 100]</span>
                        </td>
                    </tr>
                    <tr>
                        <th>제조국</th>
                        <td>
                            <input type="text" name="origin" required>
                        </td>
                    </tr>
                    <tr>
                        <th>제조사</th>
                        <td>
                            <input type="text" name="mfr" required>
                        </td>
                    </tr>
                    <tr>
                        <th>시리즈</th>
                        <td>
                            <input type="text" name="srs_id" maxlength="100" required>
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
                        <th>사용 선수명</th>
                        <td>
                            <input type="text" name="player_name" maxlength="50" />
                        </td>
                    </tr>
                    <tr>
                        <th>제품 소재</th>
                        <td>
                            <input type="text" name="mtrl" maxlength="100" required>
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
                            <input type="text" name="wgh" id="wgh" maxlength="100" required>
                        </td>
                    </tr>
                    <tr>
                        <th>색깔 코드</th>
                        <td>
                            <input type="text" name="clr_cd" maxlength="10" required>
                        </td>
                    </tr>
                    <tr>
                        <th>제품 요약 설명</th>
                        <td>
                            <input type="text" name="pd_smr_dsc" size="50" maxlength="200" id="textSummary" style="width: inherit" required/>
                            <span id="summaryLengthCheck">[0 / 200]</span>
                        </td>
                    </tr>
                    <tr>
                        <th>제품 상세 설명</th>
                        <td>
                            <textarea name="pd_det_dsc" id = "textDescription" style="resize: none" maxlength="5000" required></textarea>
                            <span id="descriptionLengthCheck">[0 / 5000]</span>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="product_content">
                <table style="width:100%">
                    <tr>
                        <th colspan="2">판매 정보</th>
                    </tr>
                    <tr>
                        <th>최소 주문 수량</th>
                        <td>
                            <input type="text" id="min_od_qty" name="min_od_qty" size="3" value="1" required>개 이상
                        </td>
                    </tr>
                    <tr>
                        <th>최대 주문 수량</th>
                        <td>
                            <input type='radio' id="noLimit" name="max_od_qty" value="9999" required/>
                            <label for="noLimit">제한 없음</label>
                            <input type='radio' id="yesLimit" name="max_od_qty" value="0"/>
                            <label for="yesLimit"><input type="text" size="3" id="maxQty" name="maxQty" disabled/> 개 이하로 제한</label>
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

            <div class="product_content">
                <table style="width:100%">
                    <tr>
                        <th colspan="2">이미지 등록</th>
                    </tr>
                    <tr>
                        <th>대표 이미지</th>
                        <td>
                            <input type="file" name="mn_img_fn" required/>
                        </td>
                    </tr>
                    <tr>
                        <th>상세 이미지</th>
                        <td>
                            <input type="file" name="det_img_fn" required />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="buttons">
            <button type="submit" class="registerBtn" id="registerBtn">제품 등록</button>
            <button type="button" class="cancelBtn" id="cancelBtn">취소</button>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <script>
        $(document).ready(function() {
            $("#searchProductIdBtn").on("click", function () {
                let form = $("form");
                let pd_type=document.getElementById("main");
            });

            $("#adComment").keyup(function(e) {
                let content = $(this).val();
                $("#adLengthCheck").text("[" + content.length + " / 100]"); /* 실시간 글자수 카운팅 */
                if (content.length > 100) {
                    alert("최대 100자까지 입력 가능합니다.");
                    $(this).val(content.substring(0, 100));
                    $('#summaryLengthCheck').text("[100 / 100]");
                }
            });

            $("#textSummary").keyup(function(e) {
                let content = $(this).val();
                $("#summaryLengthCheck").text("[" + content.length + " / 200]"); /* 실시간 글자수 카운팅 */
                if (content.length > 200) {
                    alert("최대 200자까지 입력 가능합니다.");
                    $(this).val(content.substring(0, 200));
                    $('#summaryLengthCheck').text("[200 / 200]");
                }
            });

            $("#textDescription").keyup(function(e) {
                let content = $(this).val();
                $("#descriptionLengthCheck").text("[" + content.length + " / 5000]"); /* 실시간 글자수 카운팅 */
                if (content.length > 5000) {
                    alert("최대 5000자까지 입력 가능합니다.");
                    $(this).val(content.substring(0, 5000));
                    $('#descriptionLengthCheck').text("[0 / 5000]");
                }
            });

            /* yesLimit 라디오 버튼 클릭하면 maxQty에 입력할 수 있게 변한다.*/
            $("#yesLimit").on("click", function() {
                $("#maxQty").removeAttr("disabled");
            });

            /* noLimit 라디오 버튼 클릭하면 maxQty에 입력할 수 없게 변한다. */
            $("#noLimit").on("click", function() {
                $("#maxQty").attr("disabled", "disabled");
            });

            /* cancelBtn을 클릭하면 admin/main으로 이동한다. */
            $("#cancelBtn").on("click", function(){
                location.href="<c:url value='/admin/main/'/>";
            });

            /* 무게(wgh)에 입력된 값이 숫자인지 확인하는 함수 */
            $("#wgh").keyup(function () {
                /* 입력된 무게 값 */
                let weight = $(this).val();
                /* 숫자 패턴 정규식 */
                let pattern = /^[0-9]+$/;

                /* 숫자 패턴에 맞지 않은 경우 경고 출력 */
                if (!pattern.test(weight)) {
                    alert("무게는 숫자만 입력할 수 있습니다.");
                    /* 입력 값에서 숫자가 아닌 문자 제거 */
                    $(this).val(weight.replace(/[^0-9]/,''));
                }
            });

            /* 최대 주문 수량(maxQty)에 입력된 값이 숫자인지 확인하는 함수 */
            $("#maxQty").keyup(function () {
                /* 입력된 최대 주문 수량 */
                let weight = $(this).val();
                /* 숫자 패턴 정규식 */
                let pattern = /^[0-9]+$/;

                /* 숫자 패턴에 맞지 않은 경우 경고 출력 */
                if (!pattern.test(weight)) {
                    alert("최대 주문 수량은 숫자만 입력할 수 있습니다.");
                    /* 입력 값에서 숫자가 아닌 문자 제거 */
                    $(this).val(weight.replace(/[^0-9]/,''));
                }
            });
        });

    </script>
</body>
</html>