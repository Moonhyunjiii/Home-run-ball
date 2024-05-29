<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <link href="<c:url value='/css/reset.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/header.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/productSearchList.css'/>" type="text/css" rel="stylesheet"/>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <style>
        picture{
          overflow: hidden;
          padding-bottom: 100%;
          max-width: 428px;
          max-height: 428px;
          background-color: #EBEBEB;
        }

        picture > img{
          max-width:  90%;
          max-height: 90%;
          top: 50%;
          left: 50%;
        }
    </style>
    <title>홈런볼 제품 목록</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%--넘겨줄 정보를 담는다--%>
<%-- 사진:

  <img src="/img/product/${prd.pd_type_cd}/main/${prd.mn_img_fn}"
                     alt="이미지 준비 중 입니다"
                     onerror="this.onerror=null; this.src='/img/product/${prd.pd_type_cd.toLowerCase()}/main/${prd.mn_img_fn}';">

--%>
<section class="product-search-list">
    <div class="product-list" id="product-list">
        <!-- Products will be dynamically inserted here -->
        <c:forEach var="prd" items="${result}">
            <div class="product-item">
                <picture>
                <img src="/img/product/${prd.pd_type_cd}/main/${prd.mn_img_fn}"
                     alt="상품이미지"
                     onerror="this.onerror=null; this.src='/img/product/${prd.pd_type_cd.toLowerCase()}/main/${prd.mn_img_fn}';">
                </picture>
                <h3>${prd.pd_name}</h3>
                <p>${prd.price_range}</p>
            </div>
        </c:forEach>
    </div>
    <button id="more-results">MORE RESULTS</button>
</section>

<jsp:include page="footer.jsp" flush="false"/>
<script>
  const products = [
    {image: 'https://placehold.co/411x411', name: 'REV1X Custom Glove', price: '$549.95'},
    {image: 'https://placehold.co/411x411', name: 'Heart of the Hide Custom Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Pro Preferred Custom Glove', price: '$499.95'},
    {image: 'https://placehold.co/411x411', name: 'Liberty Advanced Custom Glove', price: '$319.95'},
    {image: 'https://placehold.co/411x411', name: 'Gamer XLE Custom Glove', price: '$229.95'},
    {image: 'https://placehold.co/411x411', name: 'ColorSync 8.0 Heart of the Hide First Base Mitt', price: '$299.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive 11.5-Inch REV1X Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X 11.5" Infield Pro-I Web Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive Bo Bichette REV1X 11.75" Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X Custom Glove', price: '$549.95'},
    {image: 'https://placehold.co/411x411', name: 'Heart of the Hide Custom Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Pro Preferred Custom Glove', price: '$499.95'},
    {image: 'https://placehold.co/411x411', name: 'Liberty Advanced Custom Glove', price: '$319.95'},
    {image: 'https://placehold.co/411x411', name: 'Gamer XLE Custom Glove', price: '$229.95'},
    {image: 'https://placehold.co/411x411', name: 'ColorSync 8.0 Heart of the Hide First Base Mitt', price: '$299.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive 11.5-Inch REV1X Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X 11.5" Infield Pro-I Web Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X Custom Glove', price: '$549.95'},
    {image: 'https://placehold.co/411x411', name: 'Heart of the Hide Custom Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Pro Preferred Custom Glove', price: '$499.95'},
    {image: 'https://placehold.co/411x411', name: 'Liberty Advanced Custom Glove', price: '$319.95'},
    {image: 'https://placehold.co/411x411', name: 'Gamer XLE Custom Glove', price: '$229.95'},
    {image: 'https://placehold.co/411x411', name: 'ColorSync 8.0 Heart of the Hide First Base Mitt', price: '$299.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive 11.5-Inch REV1X Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X 11.5" Infield Pro-I Web Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive Bo Bichette REV1X 11.75" Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X Custom Glove', price: '$549.95'},
    {image: 'https://placehold.co/411x411', name: 'Heart of the Hide Custom Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Pro Preferred Custom Glove', price: '$499.95'},
    {image: 'https://placehold.co/411x411', name: 'Liberty Advanced Custom Glove', price: '$319.95'},
    {image: 'https://placehold.co/411x411', name: 'Gamer XLE Custom Glove', price: '$229.95'},
    {image: 'https://placehold.co/411x411', name: 'ColorSync 8.0 Heart of the Hide First Base Mitt', price: '$299.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive 11.5-Inch REV1X Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X 11.5" Infield Pro-I Web Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive Bo Bichette REV1X 11.75" Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X Custom Glove', price: '$549.95'},
    {image: 'https://placehold.co/411x411', name: 'Heart of the Hide Custom Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Pro Preferred Custom Glove', price: '$499.95'},
    {image: 'https://placehold.co/411x411', name: 'Liberty Advanced Custom Glove', price: '$319.95'},
    {image: 'https://placehold.co/411x411', name: 'Gamer XLE Custom Glove', price: '$229.95'},
    {image: 'https://placehold.co/411x411', name: 'ColorSync 8.0 Heart of the Hide First Base Mitt', price: '$299.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive 11.5-Inch REV1X Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X 11.5" Infield Pro-I Web Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive Bo Bichette REV1X 11.75" Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X Custom Glove', price: '$549.95'},
    {image: 'https://placehold.co/411x411', name: 'Heart of the Hide Custom Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Pro Preferred Custom Glove', price: '$499.95'},
    {image: 'https://placehold.co/411x411', name: 'Liberty Advanced Custom Glove', price: '$319.95'},
    {image: 'https://placehold.co/411x411', name: 'Gamer XLE Custom Glove', price: '$229.95'},
    {image: 'https://placehold.co/411x411', name: 'ColorSync 8.0 Heart of the Hide First Base Mitt', price: '$299.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive 11.5-Inch REV1X Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X 11.5" Infield Pro-I Web Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'Exclusive Bo Bichette REV1X 11.75" Infield Glove', price: '$399.95'},
    {image: 'https://placehold.co/411x411', name: 'REV1X Baseball 11.5" Infield Glove', price: '$399.95'}
  ];

  <%--let currentProductIndex = 0;--%>
  <%--const productsPerPage = 20;--%>

  <%--function loadProducts() {--%>
  <%--  const productList = document.getElementById('product-list');--%>
  <%--  for (let i = currentProductIndex; i < currentProductIndex + productsPerPage && i < products.length; i++) {--%>
  <%--    const product = products[i];--%>
  <%--    const productElement = document.createElement('div');--%>
  <%--    productElement.classList.add('product-item');--%>
  <%--    productElement.innerHTML = `--%>
  <%--          <img src="/img/product/${prd.pd_type_cd}/main/${prd.mn_img_fn}"--%>
  <%--               alt="이미지 준비 중 입니다"--%>
  <%--               onerror="this.onerror=null; this.src='/img/product/${prd.pd_type_cd.toLowerCase()}/main/${prd.mn_img_fn}';">--%>
  <%--          <h3>${product.name}</h3>--%>
  <%--          <p>${product.price}</p>--%>
  <%--      `;--%>
  <%--    productList.appendChild(productElement);--%>
  <%--  }--%>
  <%--  currentProductIndex += productsPerPage;--%>
  <%--  if (currentProductIndex >= products.length) {--%>
  <%--    document.getElementById('more-results').style.display = 'none';--%>
  <%--  }--%>
  <%--}--%>

  <%--function loadMore() {--%>
  <%--  loadProducts();--%>
  <%--}--%>

  <%--// Initial load--%>
  <%--loadProducts();--%>


  /* JSTL 사용하는 경우 */
  document.addEventListener('DOMContentLoaded', () => {
    let currentPage = 1;                    /* 페이징 */
    const productsPerPage = 8;              /* 한 번에 8개 요청*/
    const pd_type_cd = '<c:out value="${param.pd_type_cd}"/>';
    const moreResultsButton = document.getElementById('more-results');

    moreResultsButton.addEventListener('click', async () => {
      try {
        const response = await fetch(`/products/byTypeMore?pd_type_cd=${'${pd_type_cd}'}&page=${currentPage + 1}`);
        if (response.ok) {
          const data = await response.json();
          if (data.length > 0) {
            currentPage++;
            const productList = document.getElementById('product-list');
            data.forEach(product => {
              const productElement = document.createElement('div');
              productElement.classList.add('product-item');
              productElement.innerHTML = `
              <picture>
                                      <img src="/img/product/${prd.pd_type_cd}/main/${prd.mn_img_fn}"
                                        alt="상품이미지"
                                        onerror="this.onerror=null; this.src='/img/product/${prd.pd_type_cd.toLowerCase()}/main/${prd.mn_img_fn}';">
                                        </picture>
                                    <h3>${prd.pd_name}</h3>
                                    <p>${prd.price_range}</p>
                                `;
              productList.appendChild(productElement);
            });
          } else {
            moreResultsButton.style.display = 'none';
          }
        } else {
          console.error('Failed to fetch more results.');
        }
      } catch (error) {
        console.error('Error fetching more results:', error);
      }
    });
  });
</script>
</body>
</html>