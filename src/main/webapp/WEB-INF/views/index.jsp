<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%--가격 형식 지정 태그--%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>HomerunBall</title>


    <!-- Template CSS Files -->
<%--    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <%--index Page CSS Files--%>
    <%--광고 배너 이미지--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">


    <%--제품 진열--%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Open+Sans">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <c:set var="loginOutLink" value="${sessionScope.c_id==null ? '/login' : '/logout'}"/>
    <c:set var="loginOut" value="${sessionScope.c_id==null ? '로그인' : '로그아웃'}"/>

    <link rel="icon" type="image/x-icon"
          href="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dw0de929af/products/ROMLBHOF-2.jpg?sw=800&sfrm=png&bgcolor=ebebeb">

    <style>
        /*캐러셀에 필요한 css*/
        <%@include file="/resources/css/carousel.css"%>

        /*mainCategory에 필요한 css include*/
        <%@include file="/resources/css/mainCategory.css"%>

        /*mainVideo에 필요한 css include*/
        <%@include file="/resources/css/mainVideo.css"%>

        body {
            padding-top: 0px !important;
        }
        main {
            margin: auto 15px;
        }
    </style>
</head>

<body class="index">
<!-- ***** Preloader Start ***** -->
<div id="preloader">
    <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<jsp:include page="header.jsp"/>
<!-- ***** Header Area End ***** -->

<!-- ***** Main Banner Area Start ***** -->
<div id="advertisement-carousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators visually-hidden">
        <button type="button" data-bs-target="#advertisement-carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#advertisement-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#advertisement-carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>

    <div class="carousel-inner main-banner-item">
        <div class="carousel-item active c-item">
            <img src="/img/advertisement/adimg1.jpg" class="d-block w-100 c-img img-fluid" alt="Slide 1">
            <div class="carousel-caption advertiseCommentLeft">
                <p class="text-uppercase advertiseComment">최상급 글러브</p>
                <h1 class="display-1 fw-bolder text-capitalize">타티스 주니어 글러브 구매하기</h1>
                <a href="/cart/list" class="btn btn-primary cartBtn">장바구니 담기</a>
            </div>
        </div>
        <div class="carousel-item c-item">
            <img src="/img/advertisement/adimg2.jpg" class="d-block w-100 c-img img-fluid" alt="Slide 2">
            <div class="carousel-caption top-1 advertiseCommentLeft">
                <p class="text-uppercase advertiseComment">CLOUT AI BATS</p>
                <h1 class="display-1 fw-bolder text-capitalize">THE HOTTEST ALLOY AROUND</h1>
                <a href="/cart/list" class="btn btn-primary">장바구니 담기</a>
            </div>
        </div>
        <div class="carousel-item c-item">
            <img src="/img/advertisement/adimg3.jpg" class="d-block w-100 c-img img-fluid" alt="Slide 3">
            <div class="carousel-caption top-1 advertiseCommentRight">
                <p class="text-uppercase advertiseComment">Be Iconic</p>
                <h1 class="display-1 fw-bolder text-capitalize">ICON USSSA BASEBALL BAT</h1>
                <a href="/cart/list" class="btn btn-primary">장바구니 담기</a>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#advertisement-carousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#advertisement-carousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<!-- ***** Main Banner Area End ***** -->

<%--Main Area Start--%>
<main>
<!-- ***** 신제품 시작 ***** -->
<div id="new-products">
    <div class="row">
        <div class="col-lg-12">
        <h2 class="product-category">신제품</h2>
            <div class="men-item-carousel">
                <div class="owl-men-item owl-carousel">
                    <c:forEach var="product" items="${newProductList}" varStatus="status">
                        <div class="item">
                            <div class="thumb">
                                <div class="hover-content">
                                    <ul>
                                        <li><a href="/product/detail?pd_id=${product.pd_id}"><i class="fa fa-eye"></i></a></li>
                                        <li><a href=#><i class="fa fa-star"></i></a></li>
                                        <li><a href=#><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <a href="/product/detail?pd_id=${product.pd_id}">
                                    <div class="product-image-box">
                                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';" class="product-image">
                                    </div>
                                </a>
                            </div>
                            <div class="down-content">
                                <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                                <c:choose>
                                    <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                        <strike><price><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</price></strike>
                                        <sale-price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</sale-price>
                                    </c:when>
                                    <c:otherwise>
                                        <price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</price>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** 신제품 끝 ***** -->

<!-- ***** 인기 제품 시작 ***** -->
<div id="hot-products">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="product-category">인기 제품</h2>
            <div class="men-item-carousel">
                <div class="owl-men-item owl-carousel">
                    <c:forEach var="product" items="${hotProductList}" varStatus="status">
                        <div class="item">
                            <div class="thumb">
                                <div class="hover-content">
                                    <ul>
                                        <li><a href="/product/detail?pd_id=${product.pd_id}"><i class="fa fa-eye"></i></a></li>
                                        <li><a href=#><i class="fa fa-star"></i></a></li>
                                        <li><a href=#><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <a href="/product/detail?pd_id=${product.pd_id}">
                                    <div class="product-image-box">
                                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';" class="product-image">
                                    </div>
                                </a>
                            </div>
                            <div class="down-content">
                                <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                                <c:choose>
                                    <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                        <strike><price><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</price></strike>
                                        <sale-price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</sale-price>
                                    </c:when>
                                    <c:otherwise>
                                        <price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</price>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** 인기 제품 끝 ***** -->

<!-- ***** 스테디 셀러 제품 시작 ***** -->
<div id="steady-products">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="product-category">스테디 셀러 제품</h2>
            <div class="men-item-carousel">
                <div class="owl-men-item owl-carousel">
                    <c:forEach var="product" items="${steadyProductList}" varStatus="status">
                        <div class="item">
                            <div class="thumb">
                                <div class="hover-content">
                                    <ul>
                                        <li><a href="/product/detail?pd_id=${product.pd_id}"><i class="fa fa-eye"></i></a></li>
                                        <li><a href=#><i class="fa fa-star"></i></a></li>
                                        <li><a href=#><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <a href="/product/detail?pd_id=${product.pd_id}">
                                    <div class="product-image-box">
                                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';" class="product-image">
                                    </div>
                                </a>
                            </div>
                            <div class="down-content">
                                <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                                <c:choose>
                                    <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                        <strike><price><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</price></strike>
                                        <sale-price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</sale-price>
                                    </c:when>
                                    <c:otherwise>
                                        <price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</price>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** 스테디 셀러 제품 끝 ***** -->

<!-- ***** 추천 제품 시작 ***** -->
<div id="recommend-products">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="product-category">추천 제품</h2>
            <div class="men-item-carousel">
                <div class="owl-men-item owl-carousel">
                    <c:forEach var="product" items="${recommendProductList}" varStatus="status">
                        <div class="item">
                            <div class="thumb">
                                <div class="hover-content">
                                    <ul>
                                        <li><a href="/product/detail?pd_id=${product.pd_id}"><i class="fa fa-eye"></i></a></li>
                                        <li><a href=#><i class="fa fa-star"></i></a></li>
                                        <li><a href=#><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <a href="/product/detail?pd_id=${product.pd_id}">
                                    <div class="product-image-box">
                                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';" class="product-image">
                                    </div>
                                </a>
                            </div>
                            <div class="down-content">
                                <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                                <c:choose>
                                    <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                        <strike><price><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</price></strike>
                                        <sale-price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</sale-price>
                                    </c:when>
                                    <c:otherwise>
                                        <price><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</price>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** 추천 제품 끝 ***** -->

<div id="content">
<%--    <section id="main_section">--%>
        <div id="king">
            <div class="interview">
                <h2 class="product-category">선수 인터뷰</h2>

                <div class="mySlides">
                    <a href="https://www.mlb.com/news/max-scherzer-nerve-injury" target="_blank">
                        <img src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/v1715469645/mlb/aythmzxp4a85cmoofdcu"
                             style="width:100%" height="400">
                    </a>
                </div>

                <div class="mySlides">
                    <a href="https://www.mlb.com/news/justin-verlander-throws-seven-scoreless-innings-to-beat-tigers"
                       target="_blank">
                        <img src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/edvtcyf3r7vj5tw0cfgm"
                             style="width:100%" height="400">
                    </a>
                </div>

                <div class="mySlides">
                    <a href="https://www.mlb.com/news/aaron-judge-homers-3-doubles-yankees-beat-pablo-lopez"
                       target="_blank">
                        <img src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/uqd0yhdexfb64ktw2gez"
                             style="width:100%" height="400">
                    </a>
                </div>

                <div class="mySlides">
                    <a href="https://www.mlb.com/news/jacob-degrom-injury-hopeful-august-return" target="_blank">
                        <img src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/ugooaw5iuhp2vtiwatsy"
                             style="width:100%" height="400">
                    </a>
                </div>

                <div class="mySlides">
                    <a href="https://www.mlb.com/news/yankees-ace-gerrit-cole-throws-off-mound-for-first-time"
                       target="_blank">
                        <img src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/k48suv94gttm3lex2zo1"
                             style="width:100%" height="400">
                    </a>
                </div>

                <div class="mySlides">
                    <a href="https://www.mlb.com/news/mike-trout-updates-knee-surgery-recovery" target="_blank">
                        <img src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/utosn1lnf6oerckjukln"
                             style="width:100%" height="400">
                    </a>
                </div>

                <div class="cc">
                    <p id="caption"></p>
                </div>

                <div class="mini">
                    <div class="column">
                        <img class="demo cursor"
                             src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/v1715469645/mlb/aythmzxp4a85cmoofdcu"
                             width="100%" height="100" onclick="currentSlide(1)" alt="Max Scherzer">
                    </div>
                    <div class="column">
                        <img class="demo cursor"
                             src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/edvtcyf3r7vj5tw0cfgm"
                             style="width:100%" height="100" onclick="currentSlide(2)" alt="Justin Verlander">
                    </div>


                    <div class="column">
                        <img class="demo cursor"
                             src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/uqd0yhdexfb64ktw2gez"
                             style="width: 100%" height="100" onclick="currentSlide(3)" alt="Aaron Judge">
                    </div>
                    <div class="column">
                        <img class="demo cursor"
                             src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/ugooaw5iuhp2vtiwatsy"
                             style="width:100%" height="100" onclick="currentSlide(4)" alt="Jacob deGrom">
                    </div>
                    <div class="column">
                        <img class="demo cursor"
                             src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/k48suv94gttm3lex2zo1"
                             style="width:100%" height="100" onclick="currentSlide(5)" alt="Gerrit Cole">
                    </div>
                    <div class="column">
                        <img class="demo cursor"
                             src="https://img.mlbstatic.com/mlb-images/image/upload/t_16x9,w_640/mlb/utosn1lnf6oerckjukln"
                             style="width:100%" height="100" onclick="currentSlide(6)" alt="Mike Trout">
                    </div>
                </div>
            </div>

            <div class="video">
                <h2 class="product-category">글러브 착용 영상</h2>

                <div class="mySlides2">
                    <iframe width="100%" height="440"
                            src="https://www.youtube.com/embed/EbOpepcbSio?si=v2Fp3Cp0efiPX7eL"
                            title="YouTube video player"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    <div class="text">2024 Wilson Glove Day - Atlanta</div>
                </div>

                <div class="mySlides2">
                    <iframe width="100%" height="440"
                            src="https://www.youtube.com/embed/17skxnSQGYQ?si=IQkqj-MhtcLG6jAA"
                            title="YouTube video player"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    <div class="text">2024 Wilson Glove Day - Boston</div>
                </div>

                <div class="mySlides2">
                    <iframe width="100%" height="440"
                            src="https://www.youtube.com/embed/y2Yu7pwrrI0?si=9Tp_72UhlIZdxJaw"
                            title="YouTube video player"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    <div class="text">2024 Wilson Glove Day - Baltimore</div>
                </div>


                <div class="mySlides2">
                    <iframe width="100%" height="440"
                            src="https://www.youtube.com/embed/fFxGI9yIso0?si=rH8ayHVSuMvp32zZ"
                            title="YouTube video player"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    <div class="text">2024 Wilson Glove Day - Tampa Bay</div>
                </div>

                <div class="mySlides2">
                    <iframe width="100%" height="440"
                            src="https://www.youtube.com/embed/KBMG5okesuA?si=Pg-Rp1Z0kS8JEL88"
                            title="YouTube video player"
                            frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    <div class="text">2024 Wilson Glove Day - Pittsburgh</div>
                </div>

                <a class="prev2" onclick="plusSlides2(-1)">❮</a>
                <a class="next2" onclick="plusSlides2(1)">❯</a>

                <div style="text-align:center" class="videoDot">
                    <span class="dot" onclick="currentSlide2(1)"></span>
                    <span class="dot" onclick="currentSlide2(2)"></span>
                    <span class="dot" onclick="currentSlide2(3)"></span>
                    <span class="dot" onclick="currentSlide2(4)"></span>
                    <span class="dot" onclick="currentSlide2(5)"></span>
                </div>
            </div>
        </div>
<%--    </section>--%>
</div>

<%--mainCategory에 필요한 페이지 include(css도 필요)--%>
<jsp:include page="mainCategory.jsp" flush="false"/>

<!-- ***** Subscribe Area Starts ***** -->
<div class="subscribe">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="section-heading">
                    <h2>홈런 소식을 구독하고 10% 할인 쿠폰을 받으세요</h2>
                    <span>홈런 소식지에 깜짝 할인 쿠폰도 숨어 있습니다.</span>
                </div>
                <form id="subscribe" action="" method="get">
                    <div class="row">
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="name" type="text" id="name" placeholder="이름을 입력해주세요." required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="이메일을 입력해주세요." required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-2">
                            <fieldset>
                                <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ***** Subscribe Area Ends ***** -->
</main>

<jsp:include page="footer.jsp" flush="false"/>
<!-- ***** Footer Ends ***** -->


<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/accordions.js"></script>
<script src="assets/js/datepicker.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script>
<script src="assets/js/slick.js"></script>
<script src="assets/js/lightbox.js"></script>
<script src="assets/js/isotope.js"></script>

<!-- Global Init -->
<script src="assets/js/custom.js"></script>

<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script>
    const dDay = document.querySelector("#dDay");

    $(document).ready(function () {
        $(".wish-icon i").click(function () {
            $(this).toggleClass("fa-heart fa-heart-o");
        });

        // $(".owl-stage .owl-item").css({
        //     'width' : '420px',
        //     'margin-right' : '15px'
        // });
    });

    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("demo");
        let captionText = document.getElementById("caption");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0;
             i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex -
        1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        captionText.innerHTML = dots[slideIndex -
        1].alt;
    }

    let slideIndex2 = 1;
    showSlides2(slideIndex2);

    function plusSlides2(n) {
        showSlides2(slideIndex2 += n);
    }

    function currentSlide2(n) {
        showSlides2(slideIndex2 = n);
    }

    function showSlides2(n) {
        let i;
        let slides2 = document.getElementsByClassName("mySlides2");
        let dots = document.getElementsByClassName("dot");
        if (n > slides2.length) {
            slideIndex2 = 1
        }
        if (n < 1) {
            slideIndex2 = slides2.length
        }
        for (i = 0; i < slides2.length; i++) {
            slides2[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides2[slideIndex2 - 1].style.display = "block";
        dots[slideIndex2 - 1].className += " active";
    }

    function stop() {
        event.preventDefault();
    }

    $(function() {
        var selectedClass = "";
        $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
                $("."+selectedClass).fadeIn();
                $("#portfolio").fadeTo(50, 1);
            }, 500);

        });
    });

</script>

</body>
</html>