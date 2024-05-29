<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <%--광고 배너 이미지--%>
  <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">


  <%--제품 진열--%>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet"/>
  <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet"/>
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
  </style>
  <title>Home-Run</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<%--<div class="container">--%>
<main>
  <%--메인 배너--%>
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
          <a href="/cart/list" class="btn btn-primary cartBtn">Add to Cart</a>
        </div>
      </div>
      <div class="carousel-item c-item">
        <img src="/img/advertisement/adimg2.jpg" class="d-block w-100 c-img img-fluid" alt="Slide 2">
        <div class="carousel-caption top-1 advertiseCommentLeft">
          <p class="text-uppercase advertiseComment">CLOUT AI BATS</p>
          <h1 class="display-1 fw-bolder text-capitalize">THE HOTTEST ALLOY AROUND</h1>
          <a href="/cart/list" class="btn btn-primary">Add to Cart</a>
        </div>
      </div>
      <div class="carousel-item c-item">
        <img src="/img/advertisement/adimg3.jpg" class="d-block w-100 c-img img-fluid" alt="Slide 3">
        <div class="carousel-caption top-1 advertiseCommentRight">
          <p class="text-uppercase advertiseComment">Be Iconic</p>
          <h1 class="display-1 fw-bolder text-capitalize">ICON USSSA BASEBALL BAT</h1>
          <a href="/cart/list" class="btn btn-primary">Add to Cart</a>
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

  <%--상품 진열 시작--%>
  <div class="row">
    <div class="col-md-12">
      <h2><b>신제품</b></h2>
      <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0" style="margin-right: 10px; margin-left: 10px;">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
          <c:set var="num" value="${newProductNumber % 4 == 0 ? newProductNumber / 4 : newProductNumber / 4 + 1}"/>
          <c:forEach var="i" begin="0" end="${num-1}" step="1">
            <c:choose>
              <c:when test="${i == 0}">
                <li data-target="#myCarousel" data-slide-to="${i}" class="active"></li>
              </c:when>
              <c:otherwise>
                <li data-target="#myCarousel" data-slide-to="${i}"></li>
              </c:otherwise>
            </c:choose>
          </c:forEach>
        </ol>

        <c:choose>
          <%--만약 newProductList가 null이거나 newProductList에 담긴 제품이 없다면 제품 준비중이라는 텍스트가 출력된다.--%>
        <c:when test="${newProductList == null || newProductList.size() == 0}">
          <h2><b>제품을 준비하고 있습니다.<br>조금만 더 기다려주시면 좋은 상품으로 찾아 뵙겠습니다.</b></h2>
        </c:when>
        <c:otherwise>

        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
          <div class="col-md-3">
            <a href="#">
              <img src="/img/product/APP/main/APP000001-20.jpg" class="img-fluid product-image-size">

            </a>
          </div>
          <c:forEach var="product" items="${newProductList}" varStatus="status">
          <c:if test="${status.index % 4 == 0}">
          <c:choose>
          <c:when test="${status.index == 0}">
          <div class="item active">
            </c:when>
            <c:otherwise>
            <div class="item">
              </c:otherwise>
              </c:choose>
              <div class="row">
                </c:if>

                <div class="col-sm-3">
                  <div class="thumb-wrapper" style="margin-bottom: 5px;">
                    <div class="img-box">
                      <a href="/product/detail?pd_id=${product.pd_id}">
                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                        <span class="wish-icon"><i class="fa fa-heart"></i></span>
                      </a>
                    </div> <%--end of class img-box--%>
                    <div class="thumb-content">
                      <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                      <div class="star-rating">
                        <ul class="list-inline">
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-half"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                      </div> <%--end of star-rating class--%>
                      <c:choose>
                        <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                          <p class="item-price"><strike><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</strike>
                            <span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                        </c:when>
                        <c:otherwise>
                          <p class="item-price"><span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                        </c:otherwise>
                      </c:choose>
                      <a href="/cart/list" class="btn btn-primary">Add to Cart</a>
                    </div> <%--end of thumb-content class--%>
                  </div> <%--end of class thumb-wrapper--%>
                </div>
                <c:if test="${status.index % 4 == 3}">
              </div> <!-- row 닫기 -->
            </div> <!-- item 닫기 -->
            </c:if>
            </c:forEach>
            <!-- newProductList의 인덱스를 4로 나눴을 때 3이 아닌 경우 닫아야 할 태그를 닫아줍니다. -->
            <c:if test="${newProductNumber % 4 != 0}">
          </div> <!-- end of item -->
        </div> <!-- end of carousel-inner -->
        </c:if>
      </div>
      </c:otherwise>
      </c:choose>

      <%--productNumber가 4 보다 큰 경우에만 보여주기--%>
      <c:if test="${newProductNumber > 4}">
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </c:if>
    </div>
  </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <h2><b>인기 제품</b></h2>
      <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0" style="margin-right: 10px; margin-left: 10px;">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
          <c:set var="num"
                 value="${newProductNumber % 4 == 0 ? newProductNumber / 4 : newProductNumber / 4 + 1}"/>
          <c:forEach var="i" begin="0" end="${num-1}" step="1">
            <c:choose>
              <c:when test="${i == 0}">
                <li data-target="#myCarousel1" data-slide-to="${i}" class="active"></li>
              </c:when>
              <c:otherwise>
                <li data-target="#myCarousel1" data-slide-to="${i}"></li>
              </c:otherwise>
            </c:choose>
          </c:forEach>
        </ol>

        <%--만약 newProductList가 null이라면 제품 준비중이라는 텍스트가 출력된다.--%>
        <c:choose>
        <c:when test="${newProductList == null || newProductList.size() == 0}">
          <h2><b>제품을 준비하고 있습니다.<br>조금만 더 기다려주시면 좋은 상품으로 찾아 뵙겠습니다.</b></h2>
        </c:when>
        <c:otherwise>

        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
          <c:forEach var="product" items="${newProductList}" varStatus="status">
          <c:if test="${status.index % 4 == 0}">
          <c:choose>
          <c:when test="${status.index == 0}">
          <div class="item active">
            </c:when>
            <c:otherwise>
            <div class="item">
              </c:otherwise>
              </c:choose>
              <div class="row">
                </c:if>
                <div class="col-md-3">
                    <%--                                    <div class="thumb-wrapper" style="margin-bottom: 5px;">--%>
                  <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                  <div class="img-box">
                    <a href="/product/detail?pd_id=${product.pd_id}">
                      <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                           onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                    </a>
                  </div> <%--end of class img-box--%>
                  <div class="thumb-content">
                    <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                    <div class="star-rating">
                      <ul class="list-inline">
                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star-half"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                      </ul>
                    </div> <%--end of star-rating class--%>
                    <c:choose>
                      <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                        <p class="item-price"><strike><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</strike>
                          <span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                      </c:when>
                      <c:otherwise>
                        <p class="item-price"><span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                      </c:otherwise>
                    </c:choose>
                    <a href="/cart/list" class="btn btn-primary">Add to Cart</a>
                  </div> <%--end of thumb-content class--%>
                    <%--                                    </div> &lt;%&ndash;end of class thumb-wrapper&ndash;%&gt;--%>
                </div>
                <c:if test="${status.index % 4 == 3}">
              </div> <!-- row 닫기 -->
            </div> <!-- item 닫기 -->
            </c:if>
            </c:forEach>
            <!-- newProductList의 인덱스를 4로 나눴을 때 3이 아닌 경우 닫아야 할 태그를 닫아줍니다. -->
            <c:if test="${newProductNumber % 4 != 0}">
          </div> <!-- end of item -->
        </div> <!-- end of carousel-inner -->
        </c:if>
      </div>
      </c:otherwise>
      </c:choose>

      <%--productNumber가 4 보다 큰 경우에만 보여주기--%>
      <c:if test="${newProductNumber > 4}">
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel1" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control right" href="#myCarousel1" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </c:if>
    </div>
  </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <h2><b>스테디 셀러 제품</b></h2>
      <div id="myCarousel2" class="carousel slide" data-ride="carousel" data-interval="0" style="margin-right: 10px; margin-left: 10px;">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
          <c:set var="num"
                 value="${newProductNumber % 4 == 0 ? newProductNumber / 4 : newProductNumber / 4 + 1}"/>
          <c:forEach var="i" begin="0" end="${num-1}" step="1">
            <c:choose>
              <c:when test="${i == 0}">
                <li data-target="#myCarousel2" data-slide-to="${i}" class="active"></li>
              </c:when>
              <c:otherwise>
                <li data-target="#myCarousel2" data-slide-to="${i}"></li>
              </c:otherwise>
            </c:choose>
          </c:forEach>
        </ol>

        <%--만약 newProductList가 null이라면 제품 준비중이라는 텍스트가 출력된다.--%>
        <c:choose>
        <c:when test="${newProductList == null || newProductList.size() == 0}">
          <h2><b>제품을 준비하고 있습니다.<br>조금만 더 기다려주시면 좋은 상품으로 찾아 뵙겠습니다.</b></h2>
        </c:when>
        <c:otherwise>

        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
          <c:forEach var="product" items="${newProductList}" varStatus="status">
          <c:if test="${status.index % 4 == 0}">
          <c:choose>
          <c:when test="${status.index == 0}">
          <div class="item active">
            </c:when>
            <c:otherwise>
            <div class="item">
              </c:otherwise>
              </c:choose>
              <div class="row">
                </c:if>
                <div class="col-sm-3">
                  <div class="thumb-wrapper" style="margin-bottom: 5px;">
                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                    <div class="img-box">
                      <a href="/product/detail?pd_id=${product.pd_id}">
                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                      </a>
                    </div> <%--end of class img-box--%>
                    <div class="thumb-content">
                      <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                      <div class="star-rating">
                        <ul class="list-inline">
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-half"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                      </div> <%--end of star-rating class--%>
                      <c:choose>
                        <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                          <p class="item-price"><strike><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</strike>
                            <span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                        </c:when>
                        <c:otherwise>
                          <p class="item-price"><span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                        </c:otherwise>
                      </c:choose>
                      <a href="/cart/list" class="btn btn-primary">Add to Cart</a>
                    </div> <%--end of thumb-content class--%>
                  </div> <%--end of class thumb-wrapper--%>
                </div>
                <c:if test="${status.index % 4 == 3}">
              </div> <!-- row 닫기 -->
            </div> <!-- item 닫기 -->
            </c:if>
            </c:forEach>
            <!-- newProductList의 인덱스를 4로 나눴을 때 3이 아닌 경우 닫아야 할 태그를 닫아줍니다. -->
            <c:if test="${newProductNumber % 4 != 0}">
          </div> <!-- end of item -->
        </div> <!-- end of carousel-inner -->
        </c:if>
      </div>
      </c:otherwise>
      </c:choose>

      <%--productNumber가 4 보다 큰 경우에만 보여주기--%>
      <c:if test="${newProductNumber > 4}">
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel2" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control right" href="#myCarousel2" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </c:if>
    </div>
  </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <h2><b>추천 제품</b></h2>
      <div id="myCarousel3" class="carousel slide" data-ride="carousel" data-interval="0" style="margin-right: 10px; margin-left: 10px;">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
          <c:set var="num"
                 value="${newProductNumber % 4 == 0 ? newProductNumber / 4 : newProductNumber / 4 + 1}"/>
          <c:forEach var="i" begin="0" end="${num-1}" step="1">
            <c:choose>
              <c:when test="${i == 0}">
                <li data-target="#myCarousel3" data-slide-to="${i}" class="active"></li>
              </c:when>
              <c:otherwise>
                <li data-target="#myCarousel3" data-slide-to="${i}"></li>
              </c:otherwise>
            </c:choose>
          </c:forEach>
        </ol>

        <%--만약 newProductList가 null이라면 제품 준비중이라는 텍스트가 출력된다.--%>
        <c:choose>
        <c:when test="${newProductList == null || newProductList.size() == 0}">
          <h2><b>제품을 준비하고 있습니다.<br>조금만 더 기다려주시면 좋은 상품으로 찾아 뵙겠습니다.</b></h2>
        </c:when>
        <c:otherwise>

        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
          <c:forEach var="product" items="${newProductList}" varStatus="status">
          <c:if test="${status.index % 4 == 0}">
          <c:choose>
          <c:when test="${status.index == 0}">
          <div class="item active">
            </c:when>
            <c:otherwise>
            <div class="item">
              </c:otherwise>
              </c:choose>
              <div class="row">
                </c:if>
                <div class="col-sm-3">
                  <div class="thumb-wrapper" style="margin-bottom: 5px;">
                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                    <div class="img-box">
                      <a href="/product/detail?pd_id=${product.pd_id}">
                        <img src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                      </a>
                    </div> <%--end of class img-box--%>
                    <div class="thumb-content">
                      <h4 class="productName"><a href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a></h4>
                      <div class="star-rating">
                        <ul class="list-inline">
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-half"></i></li>
                          <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                      </div> <%--end of star-rating class--%>
                      <c:choose>
                        <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                          <p class="item-price"><strike><fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />원</strike>
                            <span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                        </c:when>
                        <c:otherwise>
                          <p class="item-price"><span><fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원</span></p>
                        </c:otherwise>
                      </c:choose>
                      <a href="/cart/list" class="btn btn-primary">Add to Cart</a>
                    </div> <%--end of thumb-content class--%>
                  </div> <%--end of class thumb-wrapper--%>
                </div>
                <c:if test="${status.index % 4 == 3}">
              </div> <!-- row 닫기 -->
            </div> <!-- item 닫기 -->
            </c:if>
            </c:forEach>
            <!-- newProductList의 인덱스를 4로 나눴을 때 3이 아닌 경우 닫아야 할 태그를 닫아줍니다. -->
            <c:if test="${newProductNumber % 4 != 0}">
          </div> <!-- end of item -->
        </div> <!-- end of carousel-inner -->
        </c:if>
      </div>
      </c:otherwise>
      </c:choose>

      <%--productNumber가 4 보다 큰 경우에만 보여주기--%>
      <c:if test="${newProductNumber > 4}">
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel3" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control right" href="#myCarousel3" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </c:if>
    </div>
  </div>
  </div>

  <div id="content">
    <section id="main_section">
      <div id="king">
        <div class="interview">
          <h1 class="title">Interview</h1><br>

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
          <h1 class="title">Video</h1><br>

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
    </section>
  </div>

  <%--mainCategory에 필요한 페이지 include(css도 필요)--%>
  <jsp:include page="mainCategory.jsp" flush="false"/>
</main>

<jsp:include page="footer.jsp" flush="false"/>
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script>
  const dDay = document.querySelector("#dDay");

  $(document).ready(function () {
    $(".wish-icon i").click(function () {
      $(this).toggleClass("fa-heart fa-heart-o");
    });
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


</script>
</body>
</html>