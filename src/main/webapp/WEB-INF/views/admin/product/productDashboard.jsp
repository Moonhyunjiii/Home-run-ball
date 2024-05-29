<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

    <!-- plugins:css -->
    <link rel="stylesheet" href="/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="/assets/vendors/font-awesome/css/font-awesome.min.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="/assets/vendors/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <!-- End layout styles -->

    <title>제품 대시보드</title>

    <style>
        <%@include file="/resources/css/adminMenu.css" %>
        <%@include file="/resources/css/adminDefaultTable.css" %>
        td {
            text-align: center;
        }
        .dashboard-container {
            margin: 20px 0;
        }
        <%@include file="/resources/css/adminDashboard.css" %>

    </style>
</head>
<body>
<jsp:include page="../adminMenu.jsp" flush="false"/>
<div id="main">
    <div class="w3-dark-grey header-container">
        <div class="w3-dark-grey header-button">
            <button id="openNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_open()">&#9776;</button>
            <button id="closeNav" class="w3-button w3-dark-grey w3-xlarge" onclick="w3_close()" style="display:none">&times;</button>
        </div>
        <div id="headline" class="header-title">제품 대시보드</div>
    </div>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper">
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-danger card-img-holder text-white">
                                <div class="card-body">
                                    <img src="/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                                    <h4 class="font-weight-normal mb-3">월간 판매 금액<i class="mdi mdi-chart-line mdi-24px float-end"></i>
                                    </h4>
                                    <h2 class="mb-5">15,410,000원</h2>
                                    <h6 class="card-text">23% 감소</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-info card-img-holder text-white">
                                <div class="card-body">
                                    <img src="/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                                    <h4 class="font-weight-normal mb-3">월간 주문 건수<i class="mdi mdi-bookmark-outline mdi-24px float-end"></i>
                                    </h4>
                                    <h2 class="mb-5">54건</h2>
                                    <h6 class="card-text">10% 증가</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-success card-img-holder text-white">
                                <div class="card-body">
                                    <img src="/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                                    <h4 class="font-weight-normal mb-3">온라인 방문자 수 <i class="mdi mdi-diamond mdi-24px float-end"></i>
                                    </h4>
                                    <h2 class="mb-5">25,552명</h2>
                                    <h6 class="card-text">6% 증가</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 grid-margin stretch-card ">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">이번 주 매출액</h4>
                                    <canvas id="barChart" style="height:230px"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">이번 주 매출 비중(%)</h4>
                                    <div class="doughnutjs-wrapper d-flex justify-content-center">
                                        <canvas id="doughnutChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title float-start">총 매출</h4>
                                        <div id="visit-sale-chart-legend" class="rounded-legend legend-horizontal legend-top-right float-end"></div>
                                    </div>
                                    <canvas id="visit-sale-chart" class="mt-4"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body p-0 d-flex">
                                    <div id="inline-datepicker" class="datepicker datepicker-custom"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title text-dark">Todo List</h4>
                                    <div class="add-items d-flex">
                                        <input type="text" class="form-control todo-list-input" placeholder="What do you need to do today?">
                                        <button class="add btn btn-gradient-primary font-weight-bold todo-list-add-btn" id="add-task">Add</button>
                                    </div>
                                    <div class="list-wrapper">
                                        <ul class="d-flex flex-column-reverse todo-list todo-list-custom">
                                            <li>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="checkbox" type="checkbox"> 저기 야구 전문점 통화 </label>
                                                </div>
                                                <i class="remove mdi mdi-close-circle-outline"></i>
                                            </li>
                                            <li class="completed">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="checkbox" type="checkbox" checked> 팀장님 미팅 </label>
                                                </div>
                                                <i class="remove mdi mdi-close-circle-outline"></i>
                                            </li>
                                            <li>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="checkbox" type="checkbox"> 롤링스 글러브 출고 지시 </label>
                                                </div>
                                                <i class="remove mdi mdi-close-circle-outline"></i>
                                            </li>
                                            <li>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="checkbox" type="checkbox"> 미즈노 글러브 입고 </label>
                                                </div>
                                                <i class="remove mdi mdi-close-circle-outline"></i>
                                            </li>
                                            <li class="completed">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="checkbox" type="checkbox" checked> 김하성 선수 착용 글러브 경매 </label>
                                                </div>
                                                <i class="remove mdi mdi-close-circle-outline"></i>
                                            </li>
                                            <li>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="checkbox" type="checkbox"> 최강 야구팀 방문 </label>
                                                </div>
                                                <i class="remove mdi mdi-close-circle-outline"></i>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- plugins:js -->
<script src="/assets/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="/assets/vendors/chart.js/chart.umd.js"></script>
<script src="/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="/assets/js/off-canvas.js"></script>
<script src="/assets/js/misc.js"></script>
<script src="/assets/js/settings.js"></script>
<script src="/assets/js/todolist.js"></script>
<script src="/assets/js/jquery.cookie.js"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="/assets/js/dashboard.js"></script>
<script src="/assets/js/chart.js"></script>
<!-- End custom js for this page -->
</body>
</html>