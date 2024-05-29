<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="loginOutLink" value="${sessionScope.c_id==null ? '/login' : '/logout'}"/>
<c:set var="loginOut" value="${sessionScope.c_id==null ? '로그인' : '로그아웃'}"/>

<header class="cart__header" id="cart__header">

    <div class="main_header">
        <div class="bottom_header">
            <a href="/"><img src="/img/homerunball_logo.png" style="width:250px"></a>
            <jsp:include page="nav.jsp"/>

            <div>
                <ul class="main_header_ul">
                    <div class="cart_link header__dropdown">
                        <button class="header__dropbtn">
                            <i class="far fa-user fa-lg"></i>
                        </button>
                        <div class="header__dropdown-content">
                            <a class="cart_link" id="logoutLink" href="<c:url value='${loginOutLink}'/>">${loginOut}</a>
                            <a href="/mypage/list">마이페이지</a>
                            <a href="#">관심</a>
                            <a href="#">알림</a>
                        </div>
                    </div>
                    <%--mypage--%>
                    <a class="cart_link" id="search_btn">
                        <li><i class="fa fa-search fa-lg"></i></li>
                    </a> <%--검색--%>
                    <a class="cart_link" href="/cart/list">
                        <li><i class="fas fa-shopping-cart fa-lg"></i></li>
                    </a> <%--cart--%>
                    <jsp:include page="search.jsp"/>
                </ul>
            </div>
        </div>

    </div>
</header>
<script>
  window.onload = function () {
    if ("${sessionScope.c_id}" !== "") {
      document.getElementById('logoutLink').addEventListener('click', function (event) {
        event.preventDefault();
        if (confirm('정말로 로그아웃을 하시겠습니까?')) {
          // window.location.href = event.target.href;
          alert('로그아웃이 되어 메인페이지로 이동합니다.');
          window.location.href = event.target.href;
        }
      });
    }
  };

  var prevScrollpos = window.pageYOffset;
  window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
      document.getElementById("cart__header").style.top = "0";
    } else {
      document.getElementById("cart__header").style.top = "-200px";
    }
    prevScrollpos = currentScrollPos;
  }

  /* 상품 대분류 목록 */
  document.addEventListener('DOMContentLoaded', (event) => {
    const subNavBtn = document.querySelectorAll('.sub__navBtn');

    subNavBtn.forEach((subNav) => {
      subNav.addEventListener('click', (event) => {
        const pd_type = subNav.getAttribute('pd_type');
        window.location.href = "/product/byType?pd_type_cd=" + pd_type;
      });
    })
  });
</script>
