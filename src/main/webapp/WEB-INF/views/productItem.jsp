<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/>" />
    <title>제품 상세페이지</title>
    <style>
        .title{
            border-bottom: 1px solid black;
            margin-bottom: 10px;
        }
        .container{
            overflow: hidden;
            margin: 20px;
        }
        .image{
            float: left;
            margin-right: 20px;
        }
        .text{
            overflow:hidden;
            border: 1px solid black;
        }
        .button{
            display: flex;
            text-align: center;
        }
        .button form{
            margin-right: 10px;
        }
        ul, ol, li {list-style-type:none;}
        a {color: #333; text-decoration: none;}

        .list{display: flex;}
        .list li{margin-right: 10px; border:1px solid black; }
    </style>
</head>
<body>
<!-- 제품명과 홍보문구(화면위쪽) -->
<div class="title">
    <h2>${prd.pd_name}</h2>
    <h5>${prd.pd_ad_cmt}</h5>
</div>

<!-- 제품 가격과 주문을 담당 -->
<div class="container">
    <img src="${prd.mn_img_fn}" alt="이미지 준비중입니다." class="image">
    <div class="text">
        <p>판매가격:${stkInfo.sls_prc}</p>
        <p>소비자가격:${stkInfo.rtl_prc}</p>
        <p>제품 상태:${prd.qlt_cd}</p>
        <p>제조국가:${prd.origin}</p>
        <p>브랜드:${prd.brd_cd}</p>
        <p>배송:무료배송</p>
        <p>구매 주의사항:단순변심 환불/교환불가입니다.</p>
        <p>최소구매수량:${prd.min_od_qty}</p>
        <select>
            <option value="option1">S</option>
            <option value="option2">M</option>
            <option value="option3">L</option>
        </select>
        <div class="button">
            <form action="/order" method="post">
                <button type="submit">바로구매</button>
            </form>
            <form action="/cart/insert" id="cartForm" method="post">
                <input type="hidden" name="pd_id" value="${stkInfo.pd_id}"/>
                <input type="hidden" name="pd_clsf_cd" value="${stkInfo.pd_clsf_cd}"/>
                <button type="submit">장바구니</button>
            </form>
            <form action="/cart/list">

            </form>
            <form action="putInWish" method="post">
                <button type="submit">찜하기</button>
            </form>
        </div>
    </div>
</div>

<!-- 스크롤 이동 -->
<div>
    <ul class="list">
        <li><a href="#scroll1" class="scroll_move">연관제품</a></li>
        <li><a href="#scroll2" class="scroll_move">제품상세</a></li>
        <li><a href="#scroll3" class="scroll_move">배송안내</a></li>
        <li><a href="#scroll4" class="scroll_move">교환환불안내</a></li>
        <li><a href="#scroll5" class="scroll_move">리뷰</a></li>
        <li><a href="#scroll6" class="scroll_move">제품문의</a></li>
    </ul>
</div>
<div id="scroll1">연관제품

</div>
<hr>
<div id="scroll2">제품상세<br>
    <p>제품 제조일자:${prd.pd_mnf_date}</p>
    <p>재질:${prd.mtrl}</p>
    <p>제품 무게:${prd.wgh}</p>
    <p>제조사:${prd.mfr}</p>
    <p>${prd.pd_smr_dsc}</p>
    <p><img src="${prd.det_img_fn}" alt="이미지 준비중입니다."></p>
    <p>${prd.pd_det_dsc}</p>
</div>
<hr>
<div id="scroll3">배송안내
<p>무료배송입니다.</p>
</div>
<hr>
<div id="scroll4">교환환불안내
    <p>
        가. 상품 청약철회 가능기간은 상품 수령일로 부터 7일(1주일) 이내 입니다. 청약철회 기간을 엄수합니다.
        나. 상품 택(tag)제거 또는 개봉으로 상품 가치 훼손 시에는 7일 이내라도 교환 및 반품이 불가능합니다. 의류 및 기타상품 포장상태 포함.
        다. 저단가 상품, 일부 특가 상품은 고객 변심에 의한 교환, 반품은 고객께서 배송비를 부담하셔야 합니다. (제품의 하자, 배송오류는 제외)
        라. 일부 상품은 신모델 출시, 부품가격 변동 등 제조사 사정으로 가격이 변동될 수 있습니다.
        마. 구매내역이 확인되지 않는 경우에는 교환 및 환불, 반품이 불가능합니다.
        바. 배트, 선글라스등의 제품은 잠깐의 개봉에도 사용감이 남습니다. 배트의 경우 랩핑 제거, 선글라스의 경우 지문이나 스크래치가 확인되면 교환/반품이 불가능합니다.
        ⓐ 배트는 랩핑을 제거하기 전 제품의 이상유무를 확인하시고 개봉하세요.
        ⓑ 국내 정식출시 된 제품과 병행수입의 A/S기간은 차이가 있습니다.
        ⓒ 다음의 사항이나 기타 사용자 부주의로 인한 경우에는 배트 워런티가 불가능 합니다.
        배트의 도색 벗겨짐, 쉐이빙 배트, 워런티 기간이 지난 배트, 워런티를 사용한 배트, 외관상 문제가 없으나 내부의 소리가 나는 배트, 타격 이외의 충격이 가해진 배트
        사. 신발의 경우, 실외에서 착화하였거나 사용흔적이 있는 경우에는 교환/반품 기간내라도 교환 및 반품이 불가능 합니다.
        ⓐ 교체형 스파이크는 사용전 나사를 충분히 조이시고 착화하시길 바랍니다.
        ⓑ 스파이크 전용 포장박스의 손실이 있거나 동봉된 첨부제품이 유실된 경우에는 교환/반품을 해드릴 수 없습니다.
        ⓒ 스파이크 아대작업을 완료하고 부착이 끝난 제품은 교환/반품이 불가능합니다.
        ⓓ 발볼 확장 서비스 및 모든 후가공이 완료된 제품의 경우 어떠한 경우라도 교환/반품이 불가능합니다.
        아. 장갑 및 모자의 반품원칙의 예, 착용하였거나 사용흔적이 있는 경우, 상품 택과 케이스 소실의 경우 또한 교환 및 반품이 불가능 합니다.
        자. 글러브 중 개별 주문제작상품(오더글러브)의 경우에는 제작완료, 인수 후에는 교환/반품기간내라도 교환 및 반품이 불가능 합니다.
        ⓐ 글러브 후가공이 완료된 제품의 경우(각잡기, 형부작업, 오일링)에는 교환/반품을 해드릴 수 없습니다.
        ⓑ 글러브 입수부 착용 흔적(늘어남과 각종 변형), 택 제거, 포구면의 가죽손상, 힌지부분의 접힘이 확인되면 교환 및 반품이 불가능 합니다.

        ※ 모든 상품의 후가공 처리가 끝난 경우, 교환/반품이 불가능합니다.
        차. 이너웨어 및 의류(스판언더티, 파워팬츠, 넥워머, 하계티셔츠등) 제품군은 한번의 착용으로도 상품가치가 훼손되어 재판매가 불가능 합니다.
        구매 결정은 착용전에 사이즈 확인을 하신 후 신중히 구매하시기 바랍니다.
        카. 구입 후 제품의 포장상태 훼손, 분실등 상품 가치 훼손 시 교환 및 반품이 불가능합니다.
        타. 당사의 실수없이 상기 내용에 해당할 경우, 그 어떠한 경우에도 교환 및 반품이 불가능 합니다.
        파. 경매 상품은 입찰과 동시에 아이디 정보가 등록되며, 낙찰자의 경우 낙찰을 포기하거나 낙찰 품목의 구매가 이뤄지지 않을 경우
        이후 모든 경매 상품에 대한 입찰이 무효처리 됨을 알려드립니다.
        하. 경매 상품의 낙찰자가 낙찰 품목의 구매를 포기하는 경우 경매는 유찰되며, 해당 경매 상품은 다음 회차 경매로 진행됩니다.
    </p>
</div>
<hr>
<div id="scroll5">리뷰
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tellus nulla, commodo ac blandit nec, ornare et dolor. Nunc pharetra mollis est, in efficitur metus venenatis sit amet. Aliquam id urna vitae lorem faucibus luctus at nec felis. Proin sed nibh sed nunc viverra porta in quis sem. Fusce vitae commodo purus, sit amet accumsan augue. Ut dignissim vel lorem eu semper. Sed tincidunt, diam vitae euismod laoreet, nibh diam auctor lectus, quis placerat ex turpis in augue.

    Nam nec ligula lacinia, laoreet orci sit amet, scelerisque ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut nibh ac lacus ultrices pulvinar. In porttitor orci consequat tellus sodales, eu porttitor turpis tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus sit amet diam eu urna vestibulum lacinia. Proin id tempus ante. Duis commodo, arcu vitae bibendum faucibus, nisi eros posuere sapien, nec interdum enim ligula eu mi. Nunc gravida malesuada ante imperdiet lobortis.

    Cras quis tortor quis mauris pellentesque mattis sed eu risus. Vestibulum ultrices sed lectus at sollicitudin. Quisque in rhoncus magna. In tincidunt iaculis tellus, eu dapibus ex rutrum a. Nam sed nisl eget velit tempus suscipit. Integer molestie libero dolor, non aliquam mauris ultricies nec. Ut ornare, sapien sit amet ullamcorper semper, nulla sapien elementum massa, sed luctus arcu nulla nec tellus. Integer laoreet rhoncus velit, sit amet vehicula justo porttitor eu. Integer accumsan erat felis, ac viverra risus faucibus nec. Pellentesque laoreet sem at justo tincidunt vestibulum at a lorem. Nam tellus sapien, gravida varius pellentesque ac, molestie non quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In a hendrerit ex. Maecenas metus nulla, pulvinar in lorem ac, pulvinar blandit est.

    Mauris facilisis lorem nec nunc placerat, ac aliquam tellus porttitor. Maecenas molestie nec ipsum in sodales. Nulla vitae sem semper, rutrum lorem nec, aliquet sapien. In pretium elit in lacinia congue. Integer et auctor diam, sit amet faucibus nunc. Sed efficitur non orci et suscipit. Vestibulum eget ipsum congue ex pretium venenatis.

    Vivamus sit amet leo augue. Maecenas eleifend maximus nulla commodo porttitor. Sed nec magna urna. Duis hendrerit sapien posuere diam ultrices volutpat. Nam vel porttitor orci. Ut velit magna, finibus id feugiat congue, cursus cursus purus. Phasellus tincidunt neque sed tristique maximus. Phasellus placerat venenatis lacus, id accumsan orci feugiat sit amet. Sed laoreet nisl nec tortor vehicula pharetra. Fusce vel pharetra risus. Fusce eget imperdiet lorem, sit amet molestie est. Nulla urna ligula, fermentum id massa a, rutrum consequat sem. Sed molestie auctor mauris sed bibendum. Sed in vulputate ligula, sed vulputate nisl. In eu hendrerit neque.
    </p>
</div>
<hr>
<div id="scroll6">제품문의
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tellus nulla, commodo ac blandit nec, ornare et dolor. Nunc pharetra mollis est, in efficitur metus venenatis sit amet. Aliquam id urna vitae lorem faucibus luctus at nec felis. Proin sed nibh sed nunc viverra porta in quis sem. Fusce vitae commodo purus, sit amet accumsan augue. Ut dignissim vel lorem eu semper. Sed tincidunt, diam vitae euismod laoreet, nibh diam auctor lectus, quis placerat ex turpis in augue.

    Nam nec ligula lacinia, laoreet orci sit amet, scelerisque ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut nibh ac lacus ultrices pulvinar. In porttitor orci consequat tellus sodales, eu porttitor turpis tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus sit amet diam eu urna vestibulum lacinia. Proin id tempus ante. Duis commodo, arcu vitae bibendum faucibus, nisi eros posuere sapien, nec interdum enim ligula eu mi. Nunc gravida malesuada ante imperdiet lobortis.

    Cras quis tortor quis mauris pellentesque mattis sed eu risus. Vestibulum ultrices sed lectus at sollicitudin. Quisque in rhoncus magna. In tincidunt iaculis tellus, eu dapibus ex rutrum a. Nam sed nisl eget velit tempus suscipit. Integer molestie libero dolor, non aliquam mauris ultricies nec. Ut ornare, sapien sit amet ullamcorper semper, nulla sapien elementum massa, sed luctus arcu nulla nec tellus. Integer laoreet rhoncus velit, sit amet vehicula justo porttitor eu. Integer accumsan erat felis, ac viverra risus faucibus nec. Pellentesque laoreet sem at justo tincidunt vestibulum at a lorem. Nam tellus sapien, gravida varius pellentesque ac, molestie non quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In a hendrerit ex. Maecenas metus nulla, pulvinar in lorem ac, pulvinar blandit est.

    Mauris facilisis lorem nec nunc placerat, ac aliquam tellus porttitor. Maecenas molestie nec ipsum in sodales. Nulla vitae sem semper, rutrum lorem nec, aliquet sapien. In pretium elit in lacinia congue. Integer et auctor diam, sit amet faucibus nunc. Sed efficitur non orci et suscipit. Vestibulum eget ipsum congue ex pretium venenatis.

    Vivamus sit amet leo augue. Maecenas eleifend maximus nulla commodo porttitor. Sed nec magna urna. Duis hendrerit sapien posuere diam ultrices volutpat. Nam vel porttitor orci. Ut velit magna, finibus id feugiat congue, cursus cursus purus. Phasellus tincidunt neque sed tristique maximus. Phasellus placerat venenatis lacus, id accumsan orci feugiat sit amet. Sed laoreet nisl nec tortor vehicula pharetra. Fusce vel pharetra risus. Fusce eget imperdiet lorem, sit amet molestie est. Nulla urna ligula, fermentum id massa a, rutrum consequat sem. Sed molestie auctor mauris sed bibendum. Sed in vulputate ligula, sed vulputate nisl. In eu hendrerit neque.
    </p>
</div>
</body>
<script>

</script>
</html>