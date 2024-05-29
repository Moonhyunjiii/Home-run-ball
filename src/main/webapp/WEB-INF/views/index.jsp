<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%--가격 형식 지정 태그--%>
<!DOCTYPE html>
<html>
<head>
    <!--[if gt IE 9]><!-->
    <script type="text/javascript" nonce="XOJ0BVE+zr3qdJZKBBAaLFbFzesxhK/xP1QmLnOdycs=" src="//lc.getunicorn.org?type=base-script&amp;request-id=764"></script>
    <script>
        //common/scripts.isml
    </script>
    <script>
        window.polarisOptions = {
            GoogleAnalyticsTrackingId: "G-HWDFRN0FY4"
        };
    </script>
    <script src="https://polaris.truevaultcdn.com/static/polaris.js"></script>
    <script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/js/main.js"></script>
    <script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/lib/jquery.zoom.min.js"></script>

    </script>
    <script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/js/vcn.js"></script>
    <!--<![endif]-->
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <%--index Page CSS Files--%>
    <%--광고 배너 이미지--%>
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
    <link href="<c:url value='/css/search.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/nav.css'/>" type="text/css" rel="stylesheet"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <c:set var="loginOutLink" value="${sessionScope.c_id==null ? '/login' : '/logout'}"/>
    <c:set var="loginOut" value="${sessionScope.c_id==null ? '로그인' : '로그아웃'}"/>

    <link rel="icon" type="image/x-icon">

    <title>Homerunball</title>
    <meta name="description" content="Shop Rawlings Sporting Goods official website. Browse custom, gloves, bats, balls, gear, apparel, &amp; more here. We are the official glove, ball, &amp; helmet of MLB&reg;"/>
    <meta name="keywords" content="Rawlings, Rawlings sporting goods, Rawlings website, Rawlings official website, Rawlings sporting goods website"/>
    <link rel="icon" type="image/png" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw4e6182fc/images/favicons/rawlings/favicon-256x256.png" sizes="256x256"/>
    <link rel="icon" type="image/png" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dwe279bb50/images/favicons/rawlings/favicon-192x192.png" sizes="192x192"/>
    <link rel="icon" type="image/png" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dwc8071a47/images/favicons/rawlings/favicon-32x32.png" sizes="32x32"/>
    <link rel="icon" type="image/png" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw58e441c6/images/favicons/rawlings/favicon-16x16.png" sizes="16x16"/>
    <link rel="apple-touch-icon" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dwb4dc4c64/images/favicons/rawlings/apple-touch-icon.png" sizes="180x180"/>
    <link rel="mask-icon" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw96aac8d4/images/favicons/rawlings/safari-pinned-tab.svg" color="#5bbad5"/>
    <link rel="icon" type="image/x-icon" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dwc1ffd508/images/favicons/rawlings/favicon.ico"/>
    <link rel="stylesheet" href="https://use.typekit.net/bnr5ajk.css"/>
    <link rel="stylesheet" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/css/experience/components/commerceLayouts/layout.css"/>
    <link rel="stylesheet" href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/css/global.css"/>
    <link href="<c:url value='/css/global.css'/>" type="text/css" rel="stylesheet"/>
    <link href="<c:url value='/css/campaignBanner.css'/>" type="text/css" rel="stylesheet"/>
    <script>
        var _affirm_config = {
            public_api_key: "YXA7P3CGBQMY5ZSE",
            script: "https://www.affirm.com/js/v2/affirm.js",
            session_id: "dK_wskz-VFFJOq5aMUPsq9JoQATgFwyfpGw=",
            locale: "null",
            country_code: "USA"
        };
        (function(l, g, m, e, a, f, b) {
            var d,
                c = l[m] || {},
                h = document.createElement(f),
                n = document.getElementsByTagName(f)[0],
                k = function(a, b, c) {
                    return function() {
                        a[b]._.push([c, arguments])
                    }
                };
            c[e] = k(c, e, "set");
            d = c[e];
            c[a] = {};
            c[a]._ = [];
            d._ = [];
            c[a][b] = k(c, a, b);
            a = 0;
            for (b = "set add save post open empty reset on off trigger ready setProduct".split(" "); a < b.length; a++)
                d[b[a]] = k(c, e, b[a]);
            a = 0;
            for (b = ["get", "token", "url", "items"]; a < b.length; a++)
                d[b[a]] = function() {};
            h.async = !0;
            h.src = g[f];
            n.parentNode.insertBefore(h, n);
            delete g[f];
            d(g);
            l[m] = c
        })(window, _affirm_config, "affirm", "checkout", "ui", "script", "ready");
    </script>
    <link href="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/css/affirmstyle.css" type="text/css" rel="stylesheet"/>
    <input type="hidden" id="paypal_express" class="paypal_express" value="/on/demandware.store/Sites-rawlings-consolidated-Site/default/CYBPaypal-InitiatePaypalExpress"/>
    <input type="hidden" id="paypal_callback" class="paypal_callback" value="https://www.rawlings.com/on/demandware.store/Sites-rawlings-consolidated-Site/default/CYBPaypal-SessionCallback"/>
    <input type="hidden" id="paypal_enabled" class="paypal_enabled" value="true"/>
    <input type="hidden" id="paypal_endpoint" class="paypal_endpoint" value="production"/>

    <script type="text/javascript">
        //<!--
        /* <![CDATA[ (head-active_data.js) */
        var dw = (window.dw || {});
        dw.ac = {
            _analytics: null,
            _events: [],
            _category: "",
            _searchData: "",
            _anact: "",
            _anact_nohit_tag: "",
            _analytics_enabled: "true",
            _timeZone: "US/Central",
            _capture: function(configs) {
                if (Object.prototype.toString.call(configs) === "[object Array]") {
                    configs.forEach(captureObject);
                    return;
                }
                dw.ac._events.push(configs);
            },
            capture: function() {
                dw.ac._capture(arguments);
                // send to CQ as well:
                if (window.CQuotient) {
                    window.CQuotient.trackEventsFromAC(arguments);
                }
            },
            EV_PRD_SEARCHHIT: "searchhit",
            EV_PRD_DETAIL: "detail",
            EV_PRD_RECOMMENDATION: "recommendation",
            EV_PRD_SETPRODUCT: "setproduct",
            applyContext: function(context) {
                if (typeof context === "object" && context.hasOwnProperty("category")) {
                    dw.ac._category = context.category;
                }
                if (typeof context === "object" && context.hasOwnProperty("searchData")) {
                    dw.ac._searchData = context.searchData;
                }
            },
            setDWAnalytics: function(analytics) {
                dw.ac._analytics = analytics;
            },
            eventsIsEmpty: function() {
                return 0 == dw.ac._events.length;
            }
        };
        /* ]]> */
        // -->
    </script>
    <script type="text/javascript">
        //<!--
        /* <![CDATA[ (head-cquotient.js) */
        var CQuotient = window.CQuotient = {};
        CQuotient.clientId = 'bbbj-rawlings-consolidated';
        CQuotient.realm = 'BBBJ';
        CQuotient.siteId = 'rawlings-consolidated';
        CQuotient.instanceType = 'prd';
        CQuotient.locale = 'default';
        CQuotient.fbPixelId = '__UNKNOWN__';
        CQuotient.activities = [];
        CQuotient.cqcid = '';
        CQuotient.cquid = '';
        CQuotient.cqeid = '';
        CQuotient.cqlid = '';
        CQuotient.apiHost = 'api.cquotient.com';
        /* Turn this on to test against Staging Einstein */
        /* CQuotient.useTest= true; */
        CQuotient.useTest = ('true' === 'false');
        CQuotient.initFromCookies = function() {
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ')
                    c = c.substring(1, c.length);
                if (c.indexOf('cqcid=') == 0) {
                    CQuotient.cqcid = c.substring('cqcid='.length, c.length);
                } else if (c.indexOf('cquid=') == 0) {
                    var value = c.substring('cquid='.length, c.length);
                    if (value) {
                        var split_value = value.split("|", 3);
                        if (split_value.length > 0) {
                            CQuotient.cquid = split_value[0];
                        }
                        if (split_value.length > 1) {
                            CQuotient.cqeid = split_value[1];
                        }
                        if (split_value.length > 2) {
                            CQuotient.cqlid = split_value[2];
                        }
                    }
                }
            }
        }
        CQuotient.getCQCookieId = function() {
            if (window.CQuotient.cqcid == '')
                window.CQuotient.initFromCookies();
            return window.CQuotient.cqcid;
        };
        CQuotient.getCQUserId = function() {
            if (window.CQuotient.cquid == '')
                window.CQuotient.initFromCookies();
            return window.CQuotient.cquid;
        };
        CQuotient.getCQHashedEmail = function() {
            if (window.CQuotient.cqeid == '')
                window.CQuotient.initFromCookies();
            return window.CQuotient.cqeid;
        };
        CQuotient.getCQHashedLogin = function() {
            if (window.CQuotient.cqlid == '')
                window.CQuotient.initFromCookies();
            return window.CQuotient.cqlid;
        };
        CQuotient.trackEventsFromAC = function(/* Object or Array */
                                               events) {
            try {
                if (Object.prototype.toString.call(events) === "[object Array]") {
                    events.forEach(_trackASingleCQEvent);
                } else {
                    CQuotient._trackASingleCQEvent(events);
                }
            } catch (err) {}
        };
        CQuotient._trackASingleCQEvent = function(/* Object */
                                                  event) {
            if (event && event.id) {
                if (event.type === dw.ac.EV_PRD_DETAIL) {
                    CQuotient.trackViewProduct({
                        id: '',
                        alt_id: event.id,
                        type: 'raw_sku'
                    });
                } // not handling the other dw.ac.* events currently
            }
        };
        CQuotient.trackViewProduct = function(/* Object */
                                              cqParamData) {
            var cq_params = {};
            cq_params.cookieId = CQuotient.getCQCookieId();
            cq_params.userId = CQuotient.getCQUserId();
            cq_params.emailId = CQuotient.getCQHashedEmail();
            cq_params.loginId = CQuotient.getCQHashedLogin();
            cq_params.product = cqParamData.product;
            cq_params.realm = cqParamData.realm;
            cq_params.siteId = cqParamData.siteId;
            cq_params.instanceType = cqParamData.instanceType;
            cq_params.locale = CQuotient.locale;

            if (CQuotient.sendActivity) {
                CQuotient.sendActivity(CQuotient.clientId, 'viewProduct', cq_params);
            } else {
                CQuotient.activities.push({
                    activityType: 'viewProduct',
                    parameters: cq_params
                });
            }
        };
        /* ]]> */
        // -->
    </script>

    <style>
        /*캐러셀에 필요한 css*/
<%--        <%@include file="/resources/css/carousel.css"%>--%>

        /*mainCategory에 필요한 css include*/
        <%@include file="/resources/css/mainCategory.css"%>

        /*mainVideo에 필요한 css include*/
<%--        <%@include file="/resources/css/mainVideo.css"%>--%>

        body {
            padding-top: 0px !important;
        }
        main {
            margin: auto 15px;
        }

        ISAPPLEPAY {
            display:inline
        }

        .dw-apple-pay-button, .dw-apple-pay-button:hover, .dw-apple-pay-button:active {
            background-color: black;
            background-image: -webkit-named-image(apple-pay-logo-white);
            background-position: 50% 50%;
            background-repeat: no-repeat;
            background-size: 75% 60%;
            border-radius: 5px;
            border: 1px solid black;
            box-sizing: border-box;
            margin: 5px auto;
            min-height: 30px;
            min-width: 100px;
            padding: 0
        }

        .dw-apple-pay-button:after {
            content: 'Apple Pay';
            visibility:hidden
        }

        .dw-apple-pay-button.dw-apple-pay-logo-white {
            background-color: white;
            border-color: white;
            background-image: -webkit-named-image(apple-pay-logo-black);
            color:black
        }

        .dw-apple-pay-button.dw-apple-pay-logo-white.dw-apple-pay-border {
            border-color: black
        }
    </style>
    <script>
        dataLayer = [{
            "pageType": "Rawlings: Home"
        }];
        var gtmClickTileUrl = '/on/demandware.store/Sites-rawlings-consolidated-Site/default/Tile-Click';
    </script>
    <script>
        dataLayer.forEach(function(el) {
            if (el && el.ecommerce && el.ecommerce.detail && el.ecommerce.detail.actionField) {
                el.ecommerce.detail.actionField.list = "Rawlings: Product Page";
            }
        });
        dataLayer = dataLayer.concat({
            "loggedInStatus": "Logged out",
            "siteKey": "rawlings",
            "host": "www.rawlings.com"
        });
    </script>
    <script>
        console.log('GTM Pageload', dataLayer);
        if (dataLayer && dataLayer.push) {
            dataLayer.push = function() {
                console.log('GTM Async', arguments);
                return Array.prototype.push.apply(this, arguments);
            }
        }
    </script>

    <script>
        (function(w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-P3RPV3Q');
    </script>

</head>
<body class="rawlings" style="margin-top: 80px;">
<!-- ***** Header Area Start ***** -->
<jsp:include page="header.jsp"/>
<!-- ***** Header Area End ***** -->

<div class="page" data-action="Sites-rawlings-consolidated-Site" data-querystring="themeID=rawlings">
    <div role="main" id="maincontent">
        <div class="dynamic-page-wrapper" id="rawlings-homepage">
            <div class="dynamic-page rawlings-homepage">
                <div class="experience-region experience-main">
                    <div class="experience-component experience-rawlings_layouts-slickslider">
                        <div id="slider-3006bd3c73a24b4e8e96b39f77" class="slick-component  background-white center-mode-full">
                            <div data-slick="{&quot;arrows&quot;:true,&quot;dots&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:1,&quot;fade&quot;:false,&quot;slidesToShow&quot;:1,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:true,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:544,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesToScroll&quot;:1,&quot;autoplay&quot;:true,&quot;arrows&quot;:true,&quot;dots&quot;:true}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesToScroll&quot;:1,&quot;autoplay&quot;:true,&quot;arrows&quot;:true,&quot;dots&quot;:true}}]}" class="slick-inner">
                                <div class="slider-item">
                                    <figure id="975ccba79fd2da021d51a520bc" class="component-figure  desktop-left mobile-bottom theme-light supercopy-gold">
                                        <picture>
                                            <source data-srcset="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwe8d23b99/images/homepage/rawlings/april/20240401-custom-glove-1440-600.jpg" height="600" width="1440" media="(min-width: 992px)"/>
                                            <img class="component-image" alt src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw158c3734/images/lazyholders/1440-600-white.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw40432b7d/images/homepage/rawlings/april/20240401-custom-glove-600-800.jpg"/>
                                        </picture>
                                        <figcaption class="banner-text_container">
                                            <div class="banner-text banner-text_superheading">
                                                    <span class="banner-wrap">
                                                    커스텀 글러브
                                                    </span>
                                            </div>
                                            <div id="975ccba79fd2da021d51a520bc-banner-text_heading" class="banner-text banner-text_heading">
                                                    <span class="banner-wrap">
                                                    타티스 주니어 글러브 커스텀하기
                                                    </span>
                                            </div>
                                            <div class="banner-text banner-text_subheading">
                                                    <span class="banner-wrap">
                                                    5~6주의 배송기간
                                                    </span>
                                            </div>
                                            <a class="banner-button btn btn-primary " title="Design Yours" aria-labelledby="975ccba79fd2da021d51a520bc-banner-text_heading">
                                                    <span class="button-test-wrap">
                                                    커스텀하러 가기
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="51ad7286dc413a899d1eabd52d" class="component-figure  desktop-right mobile-bottom theme-dark supercopy-gold">
                                        <picture>
                                            <source data-srcset="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwb4a67d72/images/homepage/rawlings/may/USSSA-Icon-Refresh-1440x600.jpg" height="600" width="1440" media="(min-width: 992px)"/>
                                            <img class="component-image" alt src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw158c3734/images/lazyholders/1440-600-white.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw80e70ea6/images/homepage/rawlings/may/USSSA-Icon-Refresh-600x800.jpg"/>
                                        </picture>
                                        <figcaption class="banner-text_container">
                                            <div class="banner-text banner-text_superheading">
                                                    <span class="banner-wrap">
                                                    에이스가 되어라
                                                    </span>
                                            </div>
                                            <div id="51ad7286dc413a899d1eabd52d-banner-text_heading" class="banner-text banner-text_heading">
                                                    <span class="banner-wrap">
                                                    상징적인 USSSA 야구 배트
                                                    </span>
                                            </div>
                                            <div class="banner-text banner-text_subheading">
                                                    <span class="banner-wrap">
                                                    당신의 파워를 테스트하세요
                                                    </span>
                                            </div>
                                            <a class="banner-button btn btn-primary " title="Buy Now" href="#" aria-labelledby="51ad7286dc413a899d1eabd52d-banner-text_heading">
                                                    <span class="button-test-wrap">
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="738b1ca9e9e965ca48db576b4c" class="component-figure  desktop-left mobile-top theme-light supercopy-gold">
                                        <picture>
                                            <source data-srcset="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw7f909fd5/images/homepage/rawlings/april/BBCOR-Clout-Ai-1440x600.jpg" height="600" width="1440" media="(min-width: 992px)"/>
                                            <img class="component-image" alt src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw158c3734/images/lazyholders/1440-600-white.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw0bdd60f7/images/homepage/rawlings/april/BBCOR-Clout-Ai-600x800.jpg"/>
                                        </picture>
                                        <figcaption class="banner-text_container">
                                            <div class="banner-text banner-text_superheading">
                                                    <span class="banner-wrap">
                                                    경기에서 영향력 있는 배트
                                                    </span>
                                            </div>
                                            <div id="738b1ca9e9e965ca48db576b4c-banner-text_heading" class="banner-text banner-text_heading">
                                                    <span class="banner-wrap">
                                                    가장 인기 많은 알로이 배트
                                                    </span>
                                            </div>
                                            <div class="banner-text banner-text_subheading">
                                                    <span class="banner-wrap">
                                                    자신감. 파워. 영향력.
                                                    </span>
                                            </div>
                                            <a class="banner-button btn btn-primary " title="Buy Now" href="#" aria-labelledby="738b1ca9e9e965ca48db576b4c-banner-text_heading">
                                                    <span class="button-test-wrap">
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                            <div class="slider-controls  d-sm-flex d-md-flex d-lg-flex">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="slider-3006bd3c73a24b4e8e96b39f77-prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="slider-3006bd3c73a24b4e8e96b39f77-nextArrow"></button>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_layouts-productslider">
                        <div id="slider-205f8527d0e132f7591d7dceb5" class="slick-component  background-white">
                            <div class="slicklayout-text_container">
                                <span class="slicklayout-headline">신제품</span>
                                <span class="slicklayout-copy"></span>
                            </div>
                            <div class="slick-inner" data-slick="{&quot;arrows&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:3,&quot;dots&quot;:true,&quot;fade&quot;:false,&quot;slidesToShow&quot;:3,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:false,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesToScroll&quot;:4,&quot;autoplay&quot;:false}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesToScroll&quot;:4,&quot;autoplay&quot;:false}}]}">
                                <c:forEach var="product" items="${newProductList}" varStatus="status">
                                    <div class="slider-item">
                                        <div class="product-tile-wrapper" data-pid="${product.pd_id}">
                                            <div class="product-tile" >

                                                <div class="image-container">
                                                    <a href="/product/detail?pd_id=${product.pd_id}">
                                                        <img class="tile-image" src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                                                    </a>
                                                </div>

                                                <%--<div class="product-badge badge-Numbered to 144">Numbered to 144</div>--%>
                                                <div class="tile-body">
                                                    <div class="pdp-link">
                                                        <a class="link" href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a>
                                                    </div>
                                                    <c:choose>
                                                        <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                                            <div class="price">
                                                                <span>
                                                                    <del>
                                                                        <span class="strike-through list">
                                                                            <span class="value" content="${product.max_rtl_prc}">
                                                                                <span class="sr-only">
                                                                                Price reduced from
                                                                                </span>
                                                                                <fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />
                                                                                <span class="sr-only">
                                                                                to
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </del>
                                                                    <span class="sales">
                                                                        <span class="value sales-price" content="${product.max_sls_prc}">
                                                                        <fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원
                                                                        </span>
                                                                    </span>
                                                                    <input type="hidden" id="carttotal" value="${product.max_sls_prc}"/>
                                                                </span>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="price">
                                                                <span>
                                                                    <span class="sales">
                                                                        <span class="value " content="${product.max_sls_prc}">
                                                                        <fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원
                                                                        </span>
                                                                    </span>
                                                                    <input type="hidden" id="carttotal" value="${product.max_sls_prc}"/>
                                                                </span>
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <div class="row tile-body-footer">
                                                        <div class="ratings col-xs-12 col-sm-6">
                                                            <div data-bv-show="inline_rating" data-bv-seo="false" data-bv-productId="PROS3039-HB" data-bv-redirect-url="/product/PROS3039-HB.html"></div>
                                                        </div>
                                                        <div class="compare col-sm-6 hidden-xs-down"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <%--End of class slider-item--%>
                                </c:forEach>
                            </div>
                            <div class="slider-controls  d-sm-flex d-md-flex d-lg-flex">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="nextArrow"></button>
                            </div> <%--end of slider-controls--%>
                        </div>
                    </div>
                    <div class="experience-component experience-commerce_layouts-mobileGrid3r1c">
                        <div class="mobile-3r-1c container-fluid">
                            <div class="row mx-n2">
                                <div class="region col-12 col-sm-4">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="5119d380f8172a00bc66c27e1a" class="copyblock-figure  desktop-left mobile-left theme-dark supercopy-brand-primary">
                                            <picture>
                                                <a title href="#" aria-labelledby="5119d380f8172a00bc66c27e1a-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw30cd8e52/images/homepage/rawlings/may/20240501-GD57-Bader-600x600.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div class="copyblock-text copyblock-text_superheading">
                                                            <span class="copyblock-wrap">
                                                            한정판
                                                            </span>
                                                    </div>
                                                    <div id="5119d380f8172a00bc66c27e1a-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            게임데이 '57 시리즈 해리슨 베이더
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            골드 글러브 수상자의 글러브 보러가기
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="region col-12 col-sm-4">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="2aa2910a365fdee7630049f436" class="copyblock-figure  desktop-left mobile-left theme-dark supercopy-brand-primary">
                                            <picture>
                                                <a title href="#" aria-labelledby="2aa2910a365fdee7630049f436-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwe75f5d28/images/homepage/rawlings/20220901-leather-600-600.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div class="copyblock-text copyblock-text_superheading">
                                                            <span class="copyblock-wrap">
                                                            가죽 제품 할인 판매
                                                            </span>
                                                    </div>
                                                    <div id="2aa2910a365fdee7630049f436-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            최대 70% 할인
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            새로운 가죽 제품 판매 시작
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="region col-12 col-sm-4">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="05c5efa7fa555d68592be81c36" class="copyblock-figure  desktop-left mobile-left theme-dark supercopy-brand-primary">
                                            <picture>
                                                <a title href="#" aria-labelledby="05c5efa7fa555d68592be81c36-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwf1cd649a/images/homepage/rawlings/may/Hi-Viz-AddedTOBuilder-400x400.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div class="copyblock-text copyblock-text_superheading">
                                                            <span class="copyblock-wrap">
                                                            새로운 커스터마이징 제품
                                                            </span>
                                                    </div>
                                                    <div id="05c5efa7fa555d68592be81c36-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            헬멧 커스터마이징하러 가기
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            7~8주 배송 기간 소요
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_layouts-slickslider">
                        <div id="slider-27b610afeda795d4e2b2934099" class="slick-component  background-white center-mode-full">
                            <div class="slicklayout-text_container">
                                <span class="slicklayout-headline">프로 선수들에게 가장 인기 많은 배트 보러가기</span>
                                <span class="slicklayout-copy"></span>
                            </div>
                            <div data-slick="{&quot;arrows&quot;:true,&quot;dots&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:1,&quot;fade&quot;:false,&quot;slidesToShow&quot;:1,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:true,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:544,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesToScroll&quot;:1,&quot;autoplay&quot;:true,&quot;arrows&quot;:true,&quot;dots&quot;:true}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesToScroll&quot;:1,&quot;autoplay&quot;:true,&quot;arrows&quot;:true,&quot;dots&quot;:true}}]}" class="slick-inner"></div>
                            <div class="slider-controls  d-sm-none d-md-none d-lg-none">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="slider-27b610afeda795d4e2b2934099-prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="slider-27b610afeda795d4e2b2934099-nextArrow"></button>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_components-banner">
                        <figure id="e0d835c8953fc3fdbeafa94d98" class="component-figure  desktop-left mobile-top theme-light supercopy-gold">
                            <picture>
                                <source data-srcset="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwf2ba729b/images/homepage/rawlings/february/Updated-Icon-Banner-1400x300.jpg" height="300" width="1400" media="(min-width: 992px)"/>
                                <img class="component-image" alt src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw158c3734/images/lazyholders/1440-600-white.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwb871843b/images/homepage/rawlings/february/Updated-Icon-Banner-600x800.jpg"/>
                            </picture>
                            <figcaption class="banner-text_container">
                                <div class="banner-text banner-text_superheading">
                                        <span class="banner-wrap">
                                        롤링스의 상징적인 배트 시리즈 구매하기
                                        </span>
                                </div>
                                <div id="e0d835c8953fc3fdbeafa94d98-banner-text_heading" class="banner-text banner-text_heading">
                                        <span class="banner-wrap">
                                        BBCOR, USSSA, & USA 등급의 배트 고르기
                                        </span>
                                </div>
                                <div class="banner-text banner-text_subheading">
                                        <span class="banner-wrap">
                                        롤링스 BBCOR 1위 배트
                                        </span>
                                </div>
                                <a class="banner-button btn btn-primary " title="Buy Now" href="#" aria-labelledby="e0d835c8953fc3fdbeafa94d98-banner-text_heading">
                                        <span class="button-test-wrap">
                                        Buy Now
                                        </span>
                                    <i class="fa fa-arrow-right"></i>
                                    </iselseif>
                                </a>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="experience-component experience-rawlings_layouts-productslider">
                        <div id="slider-0962d268782ca092ad8a015888" class="slick-component  background-white">
                            <div class="slick-inner" data-slick="{&quot;arrows&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:3,&quot;dots&quot;:true,&quot;fade&quot;:false,&quot;slidesToShow&quot;:3,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:true,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesToScroll&quot;:3,&quot;autoplay&quot;:true}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesToScroll&quot;:3,&quot;autoplay&quot;:true}}]}">
                                <div class="slider-item">
                                    <div class="product-tile-wrapper" data-pid="RBB4I3">
                                        <div class="product-tile" >

                                            <div class="image-container">
                                                <a href="#">
                                                    <img class="tile-image" src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dw4b5ede42/products/RBB4I3-130.jpg?sw=450&amp;sh=450&amp;sm=fit&amp;sfrm=png&amp;bgcolor=ebebeb" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dw4b5ede42/products/RBB4I3-130.jpg?sw=450&amp;sh=450&amp;sm=fit&amp;sfrm=png&amp;bgcolor=ebebeb" alt="2024 Rawlings Icon Limited Edition &quot;Glowstick&quot; BBCOR Bat" title="2024 Rawlings Icon Limited Edition &quot;Glowstick&quot; BBCOR Bat" itemprop="image"/>
                                                </a>
                                            </div>

                                            <div class="tile-body">
                                                <div class="pdp-link">
                                                    <a class="link" href="#">2024년 롤링스 한정판 &quot;Glowstick&quot; BBCOR 배트</a>
                                                </div>
                                                <div class="price">
                                                        <span>
                                                            <span class="sales">
                                                                <span class="value " content="499.95">
                                                                500,000원
                                                                </span>
                                                            </span>
                                                            <input type="hidden" id="carttotal" value="499.95"/>
                                                        </span>
                                                </div>

                                                <div class="row tile-body-footer">
                                                    <div class="ratings col-xs-12 col-sm-6">
                                                        <div data-bv-show="inline_rating" data-bv-seo="false" data-bv-productId="RBB4I3" data-bv-redirect-url="/product/RBB4I3.html"></div>
                                                    </div>
                                                    <div class="compare col-sm-6 hidden-xs-down"></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-tile-wrapper" data-pid="RBB3I3">
                                        <div class="product-tile" >

                                            <div class="image-container">
                                                <a href="#">
                                                    <img class="tile-image" src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dw6205c3c7/products/RBB3I3-130.jpg?sw=450&amp;sh=450&amp;sm=fit&amp;sfrm=png&amp;bgcolor=ebebeb" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dw6205c3c7/products/RBB3I3-130.jpg?sw=450&amp;sh=450&amp;sm=fit&amp;sfrm=png&amp;bgcolor=ebebeb" alt="2023 Rawlings Icon BBCOR -3 Baseball Bat" title="2023 Rawlings Icon BBCOR -3 Baseball Bat" itemprop="image"/>
                                                </a>
                                            </div>

                                            <div class="tile-body">
                                                <div class="pdp-link">
                                                    <a class="link" href="#">2023년 롤링스 BBCOR -3 야구 배트</a>
                                                </div>
                                                <div class="price">
                                                        <span>
                                                            <span class="sales">
                                                                <span class="value " content="499.95">
                                                                500,000원
                                                                </span>
                                                            </span>
                                                            <input type="hidden" id="carttotal" value="499.95"/>
                                                        </span>
                                                </div>

                                                <div class="row tile-body-footer">
                                                    <div class="ratings col-xs-12 col-sm-6">
                                                        <div data-bv-show="inline_rating" data-bv-seo="false" data-bv-productId="RBB3I3" data-bv-redirect-url="/product/RBB3I3.html"></div>
                                                    </div>
                                                    <div class="compare col-sm-6 hidden-xs-down"></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-tile-wrapper" data-pid="RUT4I">
                                        <div class="product-tile" >

                                            <div class="image-container">
                                                <a href="#">
                                                    <img class="tile-image" src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dwcdf558df/products/RUT4I10-130.jpg?sw=450&amp;sh=450&amp;sm=fit&amp;sfrm=png&amp;bgcolor=ebebeb" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-master-catalog/default/dwcdf558df/products/RUT4I10-130.jpg?sw=450&amp;sh=450&amp;sm=fit&amp;sfrm=png&amp;bgcolor=ebebeb" alt="2024 Rawlings Icon USSSA Baseball Bat, -5, -8, -10" title="2024 Rawlings Icon USSSA Baseball Bat, -5, -8, -10" itemprop="image"/>
                                                </a>
                                            </div>

                                            <div class="tile-body">
                                                <div class="pdp-link">
                                                    <a class="link" href="#">2024 롤링스 USSSA 야구 배트, -5, -8, -10</a>
                                                </div>
                                                <div class="price">
                                                        <span>
                                                            <span class="sales">
                                                                <span class="value " content="349.95">
                                                                350,000원
                                                                </span>
                                                            </span>
                                                            <input type="hidden" id="carttotal" value="349.95"/>
                                                        </span>
                                                </div>

                                                <div class="row tile-body-footer">
                                                    <div class="ratings col-xs-12 col-sm-6">
                                                        <div data-bv-show="inline_rating" data-bv-seo="false" data-bv-productId="RUT4I" data-bv-redirect-url="/product/RUT4I.html"></div>
                                                    </div>
                                                    <div class="compare col-sm-6 hidden-xs-down"></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="slider-controls  d-sm-none d-md-none d-lg-none">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="nextArrow"></button>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_layouts-productslider">
                        <div id="slider-6936e4cd994e832e38c69750b0" class="slick-component  background-white">
                            <div class="slicklayout-text_container">
                                <span class="slicklayout-headline">인기 제품</span>
                                <span class="slicklayout-copy"></span>
                            </div>
                            <div class="slick-inner" data-slick="{&quot;arrows&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:2,&quot;dots&quot;:true,&quot;fade&quot;:false,&quot;slidesToShow&quot;:2,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:false,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesToScroll&quot;:3,&quot;autoplay&quot;:false}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesToScroll&quot;:4,&quot;autoplay&quot;:false}}]}">
                                <c:forEach var="product" items="${hotProductList}" varStatus="status">
                                    <div class="slider-item">
                                        <div class="product-tile-wrapper" data-pid="${product.pd_id}">
                                            <div class="product-tile" >

                                                <div class="image-container">
                                                    <a href="/product/detail?pd_id=${product.pd_id}">
                                                        <img class="tile-image" src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                                                    </a>
                                                </div>

                                                    <%--<div class="product-badge badge-Numbered to 144">Numbered to 144</div>--%>
                                                <div class="tile-body">
                                                    <div class="pdp-link">
                                                        <a class="link" href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a>
                                                    </div>
                                                    <c:choose>
                                                        <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                                            <div class="price">
                                                                <span>
                                                                    <del>
                                                                        <span class="strike-through list">
                                                                            <span class="value" content="${product.max_rtl_prc}">
                                                                                <span class="sr-only">
                                                                                Price reduced from
                                                                                </span>
                                                                                <fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />
                                                                                <span class="sr-only">
                                                                                to
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </del>
                                                                    <span class="sales">
                                                                        <span class="value sales-price" content="${product.max_sls_prc}">
                                                                        <fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원
                                                                        </span>
                                                                    </span>
                                                                    <input type="hidden" id="carttotal" value="${product.max_sls_prc}"/>
                                                                </span>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="price">
                                                                <span>
                                                                    <span class="sales">
                                                                        <span class="value " content="${product.max_sls_prc}">
                                                                        <fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원
                                                                        </span>
                                                                    </span>
                                                                    <input type="hidden" id="carttotal" value="${product.max_sls_prc}"/>
                                                                </span>
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <div class="row tile-body-footer">
                                                        <div class="ratings col-xs-12 col-sm-6">
                                                            <div data-bv-show="inline_rating" data-bv-seo="false" data-bv-productId="PROS3039-HB" data-bv-redirect-url="/product/PROS3039-HB.html"></div>
                                                        </div>
                                                        <div class="compare col-sm-6 hidden-xs-down"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <%--End of class slider-item--%>
                                </c:forEach>
                            </div>
                            <div class="slider-controls  d-sm-flex d-md-flex d-lg-flex">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="nextArrow"></button>
                            </div> <%--end of slider-controls--%>
                        </div>
                    </div>
                    <div class="experience-component experience-commerce_layouts-mobileGrid1r1c">
                        <div class="mobile-1r-1c container-fluid">
                            <div class="row mx-n2">
                                <div class="region col-12">
                                    <div class="experience-component experience-rawlings_components-banner">
                                        <figure id="cb4cabda28c61330b9074c6fd3" class="component-figure  desktop-left mobile-bottom theme-light">
                                            <picture>
                                                <source data-srcset="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw5eb7072e/images/homepage/rawlings/20230501-custom-glove-1440-600.jpg" height="600" width="1440" media="(min-width: 992px)"/>
                                                <img class="component-image" alt src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw158c3734/images/lazyholders/1440-600-white.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwc06991f2/images/homepage/rawlings/20230501-custom-glove-600-800.jpg"/>
                                            </picture>
                                            <figcaption class="banner-text_container">
                                                <div id="cb4cabda28c61330b9074c6fd3-banner-text_heading" class="banner-text banner-text_heading">
                                                        <span class="banner-wrap">

                                                            Major League Baseball<sup>®</sup> 공식 야구 글러브
                                                        </span>
                                                </div>
                                                <div class="banner-text banner-text_subheading">
                                                        <span class="banner-wrap">

                                                            Fernando Tatis Jr - San Diego Padres
                                                            <sup>®</sup>
                                                        </span>
                                                </div>
                                                <a class="banner-button btn btn-primary " title="Shop Now" href="#" aria-labelledby="cb4cabda28c61330b9074c6fd3-banner-text_heading">
                                                        <span class="button-test-wrap">
                                                        Shop Now
                                                        </span>
                                                    <i class="fa fa-arrow-right"></i>
                                                    </iselseif>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-commerce_layouts-mobileGrid2r2c">
                        <div class="mobile-2r-2c container-fluid">
                            <div class="row mx-n2">
                                <div class="region col-6 col-sm-3">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="dc873678cb30d0aaef4b85c97b" class="copyblock-figure  desktop-center mobile-center theme-dark">
                                            <picture>
                                                <a title href="#" aria-labelledby="dc873678cb30d0aaef4b85c97b-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwd33e20a4/images/homepage/rawlings/custom-gloves-600-600.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div id="dc873678cb30d0aaef4b85c97b-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            커스텀 글러브
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            프로처럼 커스텀하기
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="region col-6 col-sm-3">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="7cbc3af29daae848c6a045437c" class="copyblock-figure  desktop-center mobile-center theme-dark">
                                            <picture>
                                                <a title href="#" aria-labelledby="7cbc3af29daae848c6a045437c-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw60911c2b/images/homepage/rawlings/heart-of-the-hide-600-600.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div id="7cbc3af29daae848c6a045437c-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            Heart Of The Hide
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            전설적인 퍼포먼스
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="region col-6 col-sm-3">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="f57671e83b55c7ad30a4700286" class="copyblock-figure  desktop-center mobile-center theme-dark">
                                            <picture>
                                                <a title href="#" aria-labelledby="f57671e83b55c7ad30a4700286-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw313dcaf8/images/homepage/rawlings/pro-preferred-600-600.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div id="f57671e83b55c7ad30a4700286-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            Pro Preferred
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            결함 없는 장인정신
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="region col-6 col-sm-3">
                                    <div class="experience-component experience-rawlings_components-ctaBlock">
                                        <figure id="f6961ef38f2929568ade0a8130" class="copyblock-figure  desktop-center mobile-center theme-dark">
                                            <picture>
                                                <a title href="#" aria-labelledby="f6961ef38f2929568ade0a8130-copyblock-text_heading">
                                                    <img class="copyblock-image" alt="null" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw7c9f0f64/images/homepage/rawlings/exclusive-gloves-600-600.jpg"/>
                                                </a>
                                            </picture>
                                            <figcaption class="copyblock-text_container">
                                                <a class="copyblock-text_link" title href="#">
                                                    <div id="f6961ef38f2929568ade0a8130-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                            <span class="copyblock-wrap">
                                                            독점 제품
                                                            </span>
                                                    </div>
                                                    <div class="copyblock-text copyblock-text_subheading">
                                                            <span class="copyblock-wrap">
                                                            홈런에서만 구매 가능
                                                            </span>
                                                    </div>
                                                </a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_layouts-slickslider">
                        <div id="slider-c44b57cbcd78c01e3846c0404e" class="slick-component  background-white center-mode-full">
                            <div data-slick="{&quot;arrows&quot;:true,&quot;dots&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;fade&quot;:false,&quot;slidesToShow&quot;:1,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:true,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:544,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;autoplay&quot;:true,&quot;arrows&quot;:true,&quot;dots&quot;:true}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;autoplay&quot;:true,&quot;arrows&quot;:true,&quot;dots&quot;:true}}]}" class="slick-inner"></div>
                            <div class="slider-controls  d-sm-flex d-md-flex d-lg-flex">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="slider-c44b57cbcd78c01e3846c0404e-prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="slider-c44b57cbcd78c01e3846c0404e-nextArrow"></button>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_layouts-slickslider">
                        <div id="slider-d708436607038aed0a60e7ff21" class="slick-component  background-white">
                            <div class="slicklayout-text_container">
                                <span class="slicklayout-headline">야구 선수가 사용하는 글러브 보러가기</span>
                                <span class="slicklayout-copy">야구 선수의 실사용 글러브를 골라 커스터마이징하여 당신의 것으로 만드세요</span>
                            </div>
                            <div data-slick="{&quot;arrows&quot;:true,&quot;dots&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:1,&quot;fade&quot;:false,&quot;slidesToShow&quot;:1,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:false,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:544,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesToScroll&quot;:3,&quot;autoplay&quot;:false,&quot;arrows&quot;:true,&quot;dots&quot;:true}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesToScroll&quot;:4,&quot;autoplay&quot;:false,&quot;arrows&quot;:true,&quot;dots&quot;:true}}]}" class="slick-inner">
                                <div class="slider-item">
                                    <figure id="139fa622c51660014d2aac1127" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="139fa622c51660014d2aac1127-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwb46c3add/images/landing/custom-glove/players/custom-gloves-player-cards-trout-600.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    CF
                                                    </span>
                                            </div>
                                            <div id="139fa622c51660014d2aac1127-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Mike Trout
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Los Angeles Angels™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="139fa622c51660014d2aac1127-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="139fa622c51660014d2aac1127-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="b1fb914d4ddd5fa9a7a52eb415" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="b1fb914d4ddd5fa9a7a52eb415-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw384c8852/images/landing/custom-glove/players/custom-gloves-player-cards-judge-600.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    RF
                                                    </span>
                                            </div>
                                            <div id="b1fb914d4ddd5fa9a7a52eb415-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Aaron Judge
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    New York Yankees™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="b1fb914d4ddd5fa9a7a52eb415-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="/product/detail?pd_id=GLV000007-89" aria-labelledby="b1fb914d4ddd5fa9a7a52eb415-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="0233887ec658f76b42ea0a3716" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="0233887ec658f76b42ea0a3716-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwb5a9e5ef/images/landing/custom-glove/Pro-Gameday-Models-arenado.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    3B
                                                    </span>
                                            </div>
                                            <div id="0233887ec658f76b42ea0a3716-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Nolan Arenado
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    St. Louis Cardinals™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="0233887ec658f76b42ea0a3716-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="0233887ec658f76b42ea0a3716-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="3902d23e72bf0ea18c6b8dc2c8" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="3902d23e72bf0ea18c6b8dc2c8-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwc33589eb/images/landing/custom-glove/Pro-Gameday-Models-correa.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SS
                                                    </span>
                                            </div>
                                            <div id="3902d23e72bf0ea18c6b8dc2c8-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Carlos Correa
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Minnesota Twins™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="3902d23e72bf0ea18c6b8dc2c8-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="3902d23e72bf0ea18c6b8dc2c8-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="0dd613023b786b5085a72554fc" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="0dd613023b786b5085a72554fc-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw3b58f056/images/landing/custom-glove/players/custom-gloves-player-cards-acuna-600.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    LF
                                                    </span>
                                            </div>
                                            <div id="0dd613023b786b5085a72554fc-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Ronald Acuña Jr.
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Atlanta Braves™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="0dd613023b786b5085a72554fc-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="0dd613023b786b5085a72554fc-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="407147b869084c5efc58d2b2d0" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="407147b869084c5efc58d2b2d0-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw9a58a259/images/landing/custom-glove/Pro-Gameday-Models-turner.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SS
                                                    </span>
                                            </div>
                                            <div id="407147b869084c5efc58d2b2d0-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Trea Turner
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Philadelphia Phillies™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="407147b869084c5efc58d2b2d0-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="407147b869084c5efc58d2b2d0-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="c9b94c385b08b4ceae77cc55b9" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="c9b94c385b08b4ceae77cc55b9-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwe8417e84/images/landing/custom-glove/Pro-Gameday-Models-Machado.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    3B
                                                    </span>
                                            </div>
                                            <div id="c9b94c385b08b4ceae77cc55b9-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Manny Machado
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    San Diego Padres™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="c9b94c385b08b4ceae77cc55b9-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="c9b94c385b08b4ceae77cc55b9-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="df5e02425ad9816cc75056c909" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="df5e02425ad9816cc75056c909-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw916797ef/images/landing/custom-glove/Pro-Gameday-Models-degrom.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SP
                                                    </span>
                                            </div>
                                            <div id="df5e02425ad9816cc75056c909-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Jacob deGrom
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Texas Rangers™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="df5e02425ad9816cc75056c909-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="df5e02425ad9816cc75056c909-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="92089351bc1dff0289fbdd92a1" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="92089351bc1dff0289fbdd92a1-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwd6b3c783/images/landing/custom-glove/players/custom-gloves-player-cards-torres-600.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    2B
                                                    </span>
                                            </div>
                                            <div id="92089351bc1dff0289fbdd92a1-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Gleyber Torres
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    New York Yankees™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="92089351bc1dff0289fbdd92a1-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="92089351bc1dff0289fbdd92a1-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="af603b4a472dda0412602ebc0d" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="af603b4a472dda0412602ebc0d-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw624c0b0b/images/landing/custom-glove/players/custom-gloves-player-cards-realmuto-600.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    C
                                                    </span>
                                            </div>
                                            <div id="af603b4a472dda0412602ebc0d-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    J.T. Realmuto
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Philadelphia Phillies™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="af603b4a472dda0412602ebc0d-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="af603b4a472dda0412602ebc0d-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="e056adc19da9ece0ff0fa107b4" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize Corey's" href="#" aria-labelledby="e056adc19da9ece0ff0fa107b4-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize Corey's" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw4930f7c0/images/landing/custom-glove/seager-600-800.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SS
                                                    </span>
                                            </div>
                                            <div id="e056adc19da9ece0ff0fa107b4-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Corey Seager
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Texas Rangers™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize Corey's" href="#" aria-labelledby="e056adc19da9ece0ff0fa107b4-copyblock-text_heading">
                                                    <span>
                                                    Customize Corey's
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="d5beda4604c89bb0fc5ee844d2" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="d5beda4604c89bb0fc5ee844d2-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwe77d95fa/images/landing/custom-glove/Pro-Gameday-Models-tatis.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    RF
                                                    </span>
                                            </div>
                                            <div id="d5beda4604c89bb0fc5ee844d2-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Fernando Tatís Jr.
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    San Diego Padres™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="d5beda4604c89bb0fc5ee844d2-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="d5beda4604c89bb0fc5ee844d2-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="2f86cffd9f3d21b550de1efbae" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="2f86cffd9f3d21b550de1efbae-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw74a56707/images/landing/custom-glove/players/custom-gloves-player-cards-harper-600.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    LF
                                                    </span>
                                            </div>
                                            <div id="2f86cffd9f3d21b550de1efbae-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Bryce Harper
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Philadelphia Phillies™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="2f86cffd9f3d21b550de1efbae-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="2f86cffd9f3d21b550de1efbae-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="640728e1851f66fbd8952548d5" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="640728e1851f66fbd8952548d5-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwdfbc32c9/images/landing/custom-glove/Pro-Gameday-Models-pena.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SS
                                                    </span>
                                            </div>
                                            <div id="640728e1851f66fbd8952548d5-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Jeremy Peña
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Houston Astros™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="640728e1851f66fbd8952548d5-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="640728e1851f66fbd8952548d5-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="68d64786d570b0e87c9a119235" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="68d64786d570b0e87c9a119235-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw1f79ca6c/images/landing/custom-glove/Pro-Gameday-Models-cruz.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SS
                                                    </span>
                                            </div>
                                            <div id="68d64786d570b0e87c9a119235-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Oneil Cruz
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Pittsburgh Pirates
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="68d64786d570b0e87c9a119235-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="68d64786d570b0e87c9a119235-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="3a2369a98d02ceec19d2869dd4" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="3a2369a98d02ceec19d2869dd4-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwae0ef0b7/images/landing/custom-glove/bellinger-600-800.jpg"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    1B
                                                    </span>
                                            </div>
                                            <div id="3a2369a98d02ceec19d2869dd4-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Cody Bellinger
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Chicago Cubs™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="3a2369a98d02ceec19d2869dd4-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="3a2369a98d02ceec19d2869dd4-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="7668e78601ce0d4b4cbc2a30d5" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="7668e78601ce0d4b4cbc2a30d5-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwbbfb1c8b/images/landing/custom-glove/Pro-Gameday-Models-crawford.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    SS
                                                    </span>
                                            </div>
                                            <div id="7668e78601ce0d4b4cbc2a30d5-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    J.P. Crawford
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Seattle Mariners™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="7668e78601ce0d4b4cbc2a30d5-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="7668e78601ce0d4b4cbc2a30d5-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="4a3ca90ae290e7837668aef27e" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="4a3ca90ae290e7837668aef27e-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw48f2c01f/images/landing/custom-glove/Pro-Gameday-Models-rizzo.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    1B
                                                    </span>
                                            </div>
                                            <div id="4a3ca90ae290e7837668aef27e-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Anthony Rizzo
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    New York Yankees™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="4a3ca90ae290e7837668aef27e-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="4a3ca90ae290e7837668aef27e-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="52dda9eda29ab52ff863523cfb" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="52dda9eda29ab52ff863523cfb-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dwab8ba0be/images/landing/custom-glove/Pro-Gameday-Models-semien.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    2B
                                                    </span>
                                            </div>
                                            <div id="52dda9eda29ab52ff863523cfb-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Marcus Semien
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Texas Rangers™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="52dda9eda29ab52ff863523cfb-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="52dda9eda29ab52ff863523cfb-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="9cef0b16cb9984c87f515632ab" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="9cef0b16cb9984c87f515632ab-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw1d816b2e/images/landing/custom-glove/Pro-Gameday-Models-carroll.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    OF
                                                    </span>
                                            </div>
                                            <div id="9cef0b16cb9984c87f515632ab-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Corbin Carroll
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Arizona Diamondbacks™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="9cef0b16cb9984c87f515632ab-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="9cef0b16cb9984c87f515632ab-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="a537e92477c8dc467c778ea380" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="a537e92477c8dc467c778ea380-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw22cc6870/images/landing/custom-glove/Pro-Gameday-Models-wong.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    2B
                                                    </span>
                                            </div>
                                            <div id="a537e92477c8dc467c778ea380-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Kolten Wong
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Los Angeles Dodgers™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="a537e92477c8dc467c778ea380-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="a537e92477c8dc467c778ea380-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="slider-item">
                                    <figure id="89a91e95df75299820736164ec" class="copyblock-figure  desktop-center mobile-center theme-dark supercopy-gold">
                                        <picture>
                                            <a title="Customize" href="#" aria-labelledby="89a91e95df75299820736164ec-copyblock-text_heading">
                                                <img class="copyblock-image" alt="Customize" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw93f9eef5/images/lazyholders/450-300-gray.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw5a5ee116/images/landing/custom-glove/Pro-Gameday-Models-India.png"/>
                                            </a>
                                        </picture>
                                        <figcaption class="copyblock-text_container">
                                            <div class="copyblock-text copyblock-text_superheading">
                                                    <span class="copyblock-wrap">
                                                    2B
                                                    </span>
                                            </div>
                                            <div id="89a91e95df75299820736164ec-copyblock-text_heading" class="copyblock-text copyblock-text_heading">
                                                    <span class="copyblock-wrap">
                                                    Jonathan India
                                                    </span>
                                            </div>
                                            <div class="copyblock-text copyblock-text_subheading">
                                                    <span class="copyblock-wrap">
                                                    Cincinnati Reds™
                                                    </span>
                                            </div>
                                            <a class="copyblock-button btn btn-primary button-icon" title="Customize" href="#" aria-labelledby="89a91e95df75299820736164ec-copyblock-text_heading">
                                                    <span>
                                                    Customize
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                            <a class="copyblock-button btn btn-outline-secondary button-icon" title="Buy Now" href="#" aria-labelledby="89a91e95df75299820736164ec-copyblock-text_heading">
                                                    <span>
                                                    Buy Now
                                                    </span>
                                                <i class="fa fa-arrow-right"></i>
                                                </iselseif>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                            <div class="slider-controls  d-sm-flex d-md-flex d-lg-flex">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="slider-d708436607038aed0a60e7ff21-prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="slider-d708436607038aed0a60e7ff21-nextArrow"></button>
                            </div>
                        </div>
                    </div>
                    <div class="experience-component experience-rawlings_components-banner">
                        <figure id="ae2c056d83dc1530a67326180e" class="component-figure  desktop-left mobile-bottom theme-dark">
                            <picture>
                                <source data-srcset="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw5fd8b586/images/landing/dbat/D-BAT-demobats-web-1-1440x300.jpg" height="300" width="1440" media="(min-width: 992px)"/>
                                <img class="component-image" alt src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/dw158c3734/images/lazyholders/1440-600-white.png" data-src="https://www.rawlings.com/dw/image/v2/BBBJ_PRD/on/demandware.static/-/Sites-rawlings-consolidated-Library/default/dw45328afc/images/landing/dbat/D-BAT-demobats-web-1-600x800.jpg"/>
                            </picture>
                            <figcaption class="banner-text_container">
                                <div id="ae2c056d83dc1530a67326180e-banner-text_heading" class="banner-text banner-text_heading">
                                        <span class="banner-wrap">
                                            롤링스 배트 보러가기
                                        </span>
                                </div>
                                <div class="banner-text banner-text_subheading">
                                        <span class="banner-wrap">
                                        홈런의 오프라인 매장을 찾아 직접 사용해보세요
                                        </span>
                                </div>
                                <a class="banner-button btn btn-primary " title="Learn More" href="#" aria-labelledby="ae2c056d83dc1530a67326180e-banner-text_heading">
                                        <span class="button-test-wrap">
                                        Learn More
                                        </span>
                                    <i class="fa fa-arrow-right"></i>
                                    </iselseif>
                                </a>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="experience-component experience-rawlings_components-recommendationCategory">
                        <div id="slider-72eb2fc7794cc22df013ffcde5" class="slick-component pd-rec-component  background-white" data-uuid="63cfb7df-b6c5-4a02-bfd3-c2dc67d729db" data-reco="products-in-a-category">
                            <div class="slicklayout-text_container">
                                <span class="slicklayout-headline">입문자 추천 제품</span>
                                <span class="slicklayout-copy"></span>
                            </div>
                            <div class="slick-inner pd-rec-slider" data-slick="{&quot;arrows&quot;:true,&quot;cssEase&quot;:&quot;linear&quot;,&quot;slidesToScroll&quot;:2,&quot;dots&quot;:true,&quot;fade&quot;:false,&quot;slidesToShow&quot;:2,&quot;mobileFirst&quot;:true,&quot;autoplay&quot;:false,&quot;autoplaySpeed&quot;:7000,&quot;responsive&quot;:[{&quot;breakpoint&quot;:500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesToScroll&quot;:3,&quot;autoplay&quot;:false}},{&quot;breakpoint&quot;:1024,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesToScroll&quot;:4,&quot;autoplay&quot;:false}}]}">
                                <c:forEach var="product" items="${recommendProductList}" varStatus="status">
                                    <div class="slider-item">
                                        <div class="product-tile-wrapper" data-pid="${product.pd_id}">
                                            <div class="product-tile" >

                                                <div class="image-container">
                                                    <a href="/product/detail?pd_id=${product.pd_id}">
                                                        <img class="tile-image" src="/img/product/${product.pd_type_cd}/main/${product.mn_img_fn}" alt="이미지 준비 중 입니다"
                                                             onerror="this.onerror=null; this.src='/img/product/${product.pd_type_cd.toLowerCase()}/main/${product.mn_img_fn}';">
                                                    </a>
                                                </div>

                                                    <%--<div class="product-badge badge-Numbered to 144">Numbered to 144</div>--%>
                                                <div class="tile-body">
                                                    <div class="pdp-link">
                                                        <a class="link" href="/product/detail?pd_id=${product.pd_id}">${product.pd_name}</a>
                                                    </div>
                                                    <c:choose>
                                                        <c:when test="${product.max_rtl_prc > product.max_sls_prc}">
                                                            <div class="price">
                                                                <span>
                                                                    <del>
                                                                        <span class="strike-through list">
                                                                            <span class="value" content="${product.max_rtl_prc}">
                                                                                <span class="sr-only">
                                                                                Price reduced from
                                                                                </span>
                                                                                <fmt:formatNumber value="${product.max_rtl_prc}" type="number" groupingUsed="true" />
                                                                                <span class="sr-only">
                                                                                to
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </del>
                                                                    <span class="sales">
                                                                        <span class="value sales-price" content="${product.max_sls_prc}">
                                                                        <fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원
                                                                        </span>
                                                                    </span>
                                                                    <input type="hidden" id="carttotal" value="${product.max_sls_prc}"/>
                                                                </span>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="price">
                                                                <span>
                                                                    <span class="sales">
                                                                        <span class="value " content="${product.max_sls_prc}">
                                                                        <fmt:formatNumber value="${product.max_sls_prc}" type="number" groupingUsed="true" />원
                                                                        </span>
                                                                    </span>
                                                                    <input type="hidden" id="carttotal" value="${product.max_sls_prc}"/>
                                                                </span>
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <div class="row tile-body-footer">
                                                        <div class="ratings col-xs-12 col-sm-6">
                                                            <div data-bv-show="inline_rating" data-bv-seo="false" data-bv-productId="PROS3039-HB" data-bv-redirect-url="/product/PROS3039-HB.html"></div>
                                                        </div>
                                                        <div class="compare col-sm-6 hidden-xs-down"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <%--End of class slider-item--%>
                                </c:forEach>
                            </div>
                            <div class="slider-controls">
                                <button type="button" class="prevArrow" title="Previous Slide" aria-label="Previous Slide" id="prevArrow"></button>
                                <div class="slick-nav"></div>
                                <button type="button" class="nextArrow" title="Next Slide" aria-label="Next Slide" id="nextArrow"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid global-recently-viewed">
        <div class="row">
            <div class="col-12">

                <script>
                    (function() {
                        // window.CQuotient is provided on the page by the Analytics code:
                        var cq = window.CQuotient;
                        if (cq && ('function' == typeof cq.getCQUserId)
                            && ('function' == typeof cq.getCQCookieId)
                            && ('function' == typeof cq.getCQHashedEmail)
                            && ('function' == typeof cq.getCQHashedLogin)) {
                            var recommender = '[[&quot;viewed-recently&quot;]]';
                            // removing any leading/trailing square brackets and escaped quotes:
                            recommender = recommender.replace(/\[|\]|&quot;/g, '');
                            var separator = '|||';
                            var slotConfigurationUUID = '7aeb38240adc9d1ae983d76b54';
                            var contextAUID = '';
                            var contextSecondaryAUID = '';
                            var contextAltAUID = '';
                            var contextType = '';
                            var anchorsArray = [];
                            var contextAUIDs = contextAUID.split(separator);
                            var contextSecondaryAUIDs = contextSecondaryAUID.split(separator);
                            var contextAltAUIDs = contextAltAUID.split(separator);
                            var contextTypes = contextType.split(separator);
                            var slotName = 'm-global-recently-viewed';
                            var slotConfigId = 'Global Recently Viewed';
                            var slotConfigTemplate = 'slots/recommendation/productCarouselSlot.isml';
                            if (contextAUIDs.length == contextSecondaryAUIDs.length)
                            {
                                for (i = 0; i < contextAUIDs.length; i++) {
                                    anchorsArray.push({
                                        id: contextAUIDs[i],
                                        sku: contextSecondaryAUIDs[i],
                                        type: contextTypes[i],
                                        alt_id: contextAltAUIDs[i]
                                    });
                                }
                            } else {
                                anchorsArray = [{
                                    id: contextAUID,
                                    sku: contextSecondaryAUID,
                                    type: contextType,
                                    alt_id: contextAltAUID
                                }];
                            }
                            var urlToCall = '/on/demandware.store/Sites-rawlings-consolidated-Site/default/CQRecomm-Start';
                            var params = {
                                userId: cq.getCQUserId(),
                                cookieId: cq.getCQCookieId(),
                                emailId: cq.getCQHashedEmail(),
                                loginId: cq.getCQHashedLogin(),
                                anchors: anchorsArray,
                                slotId: slotName,
                                slotConfigId: slotConfigId,
                                slotConfigTemplate: slotConfigTemplate,
                                ccver: '1.03'
                            };
                            if (cq.getRecs) {
                                cq.getRecs(cq.clientId, recommender, params, cb);
                            } else {
                                cq.widgets = cq.widgets || [];
                                cq.widgets.push({
                                    recommenderName: recommender,
                                    parameters: params,
                                    callback: cb
                                });
                            }
                        }
                        ;
                        function cb(parsed) {
                            var arr = parsed[recommender].recs;
                            if (arr && 0 < arr.length) {
                                var filteredProductIds = '';
                                for (i = 0; i < arr.length; i++) {
                                    filteredProductIds = filteredProductIds + 'pid' + i + '=' + encodeURIComponent(arr[i].id) + '&';
                                }
                                filteredProductIds = filteredProductIds.substring(0, filteredProductIds.length - 1); //to remove the trailing '&'
                                var formData = 'auid=' + encodeURIComponent(contextAUID)
                                    + '&scid=' + slotConfigurationUUID
                                    + '&' + filteredProductIds;
                                var request = new XMLHttpRequest();
                                request.open('POST', urlToCall, true);
                                request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                                request.onreadystatechange = function() {
                                    if (this.readyState === 4) {
                                        // Got the product data from DW, showing the products now by changing the inner HTML of the DIV:
                                        var divId = 'cq_recomm_slot-' + slotConfigurationUUID;
                                        document.getElementById(divId).innerHTML = this.responseText;
                                        //find and evaluate scripts in response:
                                        var scripts = document.getElementById(divId).getElementsByTagName('script');
                                        if (null != scripts) {
                                            for (var i = 0; i < scripts.length; i++) {
                                                //not combining script snippets on purpose
                                                var srcScript = document.createElement('script');
                                                srcScript.text = scripts[i].innerHTML;
                                                srcScript.asynch = scripts[i].asynch;
                                                srcScript.defer = scripts[i].defer;
                                                srcScript.type = scripts[i].type;
                                                srcScript.charset = scripts[i].charset;
                                                document.head.appendChild(srcScript);
                                                document.head.removeChild(srcScript);
                                            }
                                        }
                                    }
                                };
                                request.send(formData);
                                request = null;
                            }
                        }
                        ;
                    })();
                </script>

                <div id="cq_recomm_slot-7aeb38240adc9d1ae983d76b54"></div>

            </div>
        </div>
    </div>
</div>
<%--mainCategory에 필요한 페이지 include(css도 필요)--%>
<jsp:include page="mainCategory.jsp" flush="false"/>
<!-- ***** Footer Starts ***** -->
<jsp:include page="footer.jsp" flush="false"/>
<!-- ***** Footer Ends ***** -->
<script>
    pageContext = {};
</script>
</div>
<div class="notifications-container">
    <div class="error-messaging" data-default-message="default"></div>
</div>
<div class="modal-background" data-close="button.close"></div>
<!--[if lt IE 10]>
<script>//common/scripts.isml</script>

<script>window.polarisOptions = { GoogleAnalyticsTrackingId: "G-HWDFRN0FY4" };</script>
<script src="https://polaris.truevaultcdn.com/static/polaris.js"></script>

<script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/js/main.js"></script>


<script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/lib/jquery.zoom.min.js"></script>


<script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/js/campaignBanner.js"

>
</script>



<script defer type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/js/vcn.js"></script>


<![endif]-->
<span class="api-true  tracking-consent" data-caOnline="false" data-url="/on/demandware.store/Sites-rawlings-consolidated-Site/default/ConsentTracking-GetContent?cid=tracking_hint" data-reject="/on/demandware.store/Sites-rawlings-consolidated-Site/default/ConsentTracking-SetSession?consent=false" data-accept="/on/demandware.store/Sites-rawlings-consolidated-Site/default/ConsentTracking-SetSession?consent=true" data-acceptText="Yes" data-rejectText="No" data-heading="Tracking Consent"></span>

<script type="text/javascript">
    //<!--
    /* <![CDATA[ */
    function trackPage() {
        try {
            var trackingUrl = "https://www.rawlings.com/on/demandware.store/Sites-rawlings-consolidated-Site/default/__Analytics-Start";
            var dwAnalytics = dw.__dwAnalytics.getTracker(trackingUrl);
            if (typeof dw.ac == "undefined") {
                dwAnalytics.trackPageView();
            } else {
                dw.ac.setDWAnalytics(dwAnalytics);
            }
        } catch (err) {}
        ;
    }
    /* ]]> */
    // -->
</script>
<script type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/internal/jscript/dwanalytics-22.2.js" async="async" onload="trackPage()"></script>

<script src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/internal/jscript/dwac-21.7.js" type="text/javascript" async="async"></script>

<script type="text/javascript">
    //<!--
    /* <![CDATA[ */
    if (!window.dw)
        dw = {};
    dw.applepay = {
        "action": {
            "cancel": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-Cancel",
            "getRequest": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-GetRequest",
            "onshippingcontactselected": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-ShippingContactSelected",
            "onpaymentmethodselected": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-PaymentMethodSelected",
            "onvalidatemerchant": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-ValidateMerchant",
            "onpaymentauthorized": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-PaymentAuthorized",
            "prepareBasket": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-PrepareBasket",
            "onshippingmethodselected": "https:\/\/www.rawlings.com\/on\/demandware.store\/Sites-rawlings-consolidated-Site\/default\/__SYSTEM__ApplePay-ShippingMethodSelected"
        },
        "inject": {
            "directives": [{
                "css": "dw-apple-pay-button",
                "query": "ISAPPLEPAY",
                "action": "replace",
                "copy": true
            }]
        }
    };
    /* ]]> */
    // -->
</script>
<script type="text/javascript" src="/on/demandware.static/Sites-rawlings-consolidated-Site/-/default/v1716940825215/internal/jscript/applepay.js" async="true"></script>
<script src="javascript/main.js"></script>
<script src="javascript/campaignBanner.js"></script>
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

<script>
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