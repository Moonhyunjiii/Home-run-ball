<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- 검색 슬라이드 -->
<div id="hd_search" class="hd_search ani5">
    <h1>검색</h1>
    <form action="" name="search"> <%-- method=post --%>
        <fieldset class="search_fieldset">
            <div class="search_wrap">
                    <input class="MS_search_word input-keyword" id="search-input" type="text" name="search" value=""
                           placeholder="제품명을 입력하세요"/>
                <ul id="keywordResultList" class="hidden"></ul>
                <a href="javascript:prev_search();search_submit();">
                    <i class="fa fa-search fa-lg"></i> <%--검색바--%>
                </a>
            </div>
        </fieldset>
    </form>
    <!--사용자태그-->
    <dl class="word">
        <dt>인기검색어</dt>
        <dd>
            <a href="javascript:void(0);">야구화</a>
            <a href="javascript:void(0);">배팅장갑</a>
            <a href="javascript:void(0);">유니폼</a>
            <a href="javascript:void(0);">아우터</a>
            <a href="javascript:void(0);">가방</a>
            <a href="javascript:void(0);">양말</a>
            <a href="javascript:void(0);">타자헬멧</a>
            <a href="javascript:void(0);">포수장비</a>
            <a href="javascript:void(0);">시합용</a>
            <a href="javascript:void(0);">보호장비</a>
            <a href="javascript:void(0);">배트</a>
            <a href="javascript:void(0);">외야수</a>
            <a href="javascript:void(0);">모자</a>
            <a href="javascript:void(0);">선글라스</a>
            <a href="javascript:void(0);">유아용</a>
        </dd>
    </dl>
    <div class="color">
        <p>인기컬러</p>
        <ul>
            <li><a href="javascript:void(0);"><span style="background-color: #000000;"></span>블랙</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #ffffff;"></span>화이트</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #7f7f7f;"></span>그레이</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #002060;"></span>네이비</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #ff6699;"></span>핑크</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #ffff00;"></span>옐로우</a></li>
        </ul>
        <ul>
            <li><a href="javascript:void(0);"><span style="background-color: #00b0f0;"></span>블루</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #92d050;"></span>그린</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #fff2cc;"></span>베이지</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #ff0000;"></span>레드</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #ffc000;"></span>오렌지</a></li>
            <li><a href="javascript:void(0);"><span style="background-color: #8a3cc4;"></span>퍼플</a></li>
        </ul>
    </div>
    <div class="searchClose"><i class="fas fa-times"></i></div>
</div>
<div class="asideBack ani5 show"></div>
<!-- // 검색 슬라이드 -->

<script>
  $(document).ready(function () {
    $("#search_btn").click(function (event) {
      event.preventDefault();
      $("#hd_search").animate({right: '0px'}, 500).addClass("show");
      $(".asideBack").fadeIn().addClass("show");
    });

    $(".searchClose, .asideBack").click(function () {
      $("#hd_search").animate({right: '-500px'}, 500).removeClass("show");
      $(".asideBack").fadeOut().removeClass("show");
    });

    $(".asideBack").hide().removeClass("show");
    $("#hd_search").css({right: '-500px'}).removeClass("show");
  })

    /* 비동기식 검색 */
  $(document).ready(function () {
    $('#search-input').on('input', function () {
      const keyword = $(this).val();
      if (keyword.length > 0) {
        $.ajax({
          url: '${pageContext.request.contextPath}/product/search',   /* TODO: contextPath를 이용한 절대경로 활용 */
          type: 'GET',
          data: {keyword: keyword},
          success: function (data) {
            $('#keywordResultList').empty().removeClass('hidden');
            data.forEach(function (item) {
              $('#keywordResultList').append('<li data-id="' + item.pd_id + '">' + item.pd_name + '</li>');
            });
          },
          error: function (xhr, status, error) {
            console.error('Error fetching keywordResultList:', xhr.responseText);
            try {
              const response = JSON.parse(xhr.responseText);
              alert(response.errorMessage);
            } catch (e) {
              alert("다시 검색 바랍니다");
            }
          }
        });
      } else {
        $('#keywordResultList').empty().addClass('hidden');
      }
    });
    /* 선택 상품으로 상세페이지 이동 */
    $('#keywordResultList').on('click', 'li', function () {
      const pdId = $(this).data('id');
      window.location.href = '/product/detail?pd_id=' + pdId;
    });
  });

  /* 검색때 display:none */
  $(document).ready(function () {
    $('#search-input').on('input', function () {
      const keyword = $(this).val();
      if (keyword.length > 0) {
        $('.word, .color').addClass('hidden'); // display: none;
      } else {
        $('.word, .color').removeClass('hidden'); // display: block;
      }
    });
  });
</script>
