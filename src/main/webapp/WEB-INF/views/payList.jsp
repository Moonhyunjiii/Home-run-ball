<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta charset="UTF-8"/>
    <title>Order Search</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Order search functionality for recent orders."/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css"/>
    <style>
      /* css/reset.css 대신 사용 */
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }

      .container {
        width: 40%;
        margin: 0 auto;
        padding: 20px;
      }

      .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
      }

      #productName {
        width: 80%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }

      #searchIcon {
        background-color: transparent;
        border: none;
        cursor: pointer;

        width: 20px;
        height: 20px;
      }

      .date-selector {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
      }

      .preset-button {
        flex: 1;
        margin: 0 5px;
        padding: 10px;
        border: 1px solid #ccc;
        background-color: #f4f4f4;
        cursor: pointer;
        border-radius: 4px;
        text-align: center;
      }

      .preset-button.active {
        border-color: #2db400;
        background-color: #2db400;
        color: white;
      }

      .date-input {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
      }

      .date-input input {
        padding: 10px;
        margin: 0 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: calc(50% - 20px);
      }

      .date-input span {
        padding: 10px;
      }

      #btnSearch {
        width: 100%;
        padding: 15px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
      }

      #btnSearch.inactive {
        background-color: #ccc;
        color: #666;
      }

      #btnSearch.active {
        background-color: #2db400;
        color: white;
      }

      /* 결제정보 구역 */
      .orders {
        width: 90%;
        margin: 0 auto;
        padding: 20px;
        /* margin-top: 20px; */
      }

      .orders table {
        width: 100%;
        border-collapse: collapse;
      }

      .orders th,
      .orders td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
      }

      .orders th {
        background-color: #f4f4f4;
      }

      .orders td button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 5px 10px;
        cursor: pointer;
      }

      .orders td button:hover {
        background-color: #0056b3;
      }

      /* 그리드 비율*/
      .col-pay-date {
        width: 120px;
      }

      .col-pay-name {
        width: 60%;
      }

      .col-pay-amount {
        width: 150px;
      }

      .col-pay-detail {
        width: 80px;
      }

      /* 모달 스타일 */
      #modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgb(0, 0, 0);
        background-color: rgba(0, 0, 0, 0.4);
        padding-top: 60px;
      }

      #modalContent {
        width: 40%;
        margin: 0 auto;
        background-color: #fefefe;
        padding: 20px;
        border: 1px solid #888;
        max-width: 600px;
      }

      .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
      }

      .close:hover,
      .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
      }
    </style>
</head>
<body>
<!-- Trigger button for opening the modal -->
<button id="openModal" aria-label="Open Order Search Modal">
    주문/배송조회(임시버튼)
</button>

<!-- Recent Orders Section -->
<div class="orders">
    <h3>최근 결제정보</h3>
    <table>
        <thead>
        <tr>
            <th class="col-pay-date">결제일자</th>
            <th class="col-pay-name">상품명</th>
            <th class="col-pay-amount">결제금액</th>
            <th class="col-pay-detail">결제상세</th>
        </tr>
        </thead>
        <tbody id="orderResults"></tbody>
    </table>
</div>

<!-- Modal for Search -->
<div id="modal">
    <div id="modalContent">
        <div class="header">
            <input type="text" id="productName" placeholder="상품명/판매자명 입력" aria-label="Product Name or Seller Name"/>
            <button id="searchIcon" aria-label="Search">
                <img src="search-icon.png" alt="검색 아이콘"/>
            </button>
            <span class="close" aria-label="Close Modal">&times;</span>
        </div>
        <div class="date-selector">
            <button class="preset-button" data-range="60">최대(5년)</button>
            <button class="preset-button" data-range="1">1개월</button>
            <button class="preset-button" data-range="3">3개월</button>
            <button class="preset-button" data-range="6">6개월</button>
        </div>
        <div class="date-input">
            <input type="text" id="fromDate" placeholder="시작 날짜" readonly aria-label="Start Date"/>
            <span>~</span>
            <input type="text" id="toDate" placeholder="종료 날짜" readonly aria-label="End Date"/>
        </div>
        <button id="btnSearch" class="inactive" aria-label="Search Orders">
            조회하기
        </button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    const presetButtons = document.querySelectorAll('.preset-button');
    const fromDateInput = document.querySelector('#fromDate');
    const toDateInput = document.querySelector('#toDate');
    const queryButton = document.querySelector('#btnSearch');
    const modal = document.querySelector('#modal');
    const openModalButton = document.querySelector('#openModal');
    const closeModalButton = document.querySelector('.close');
    const orderResults = document.querySelector('#orderResults');
    const orderDetailButton = document.querySelectorAll('.order-detail');

    // Open and close modal
    openModalButton.addEventListener('click', () => {
      modal.style.display = 'block';
    });

    closeModalButton.addEventListener('click', () => {
      modal.style.display = 'none';
    });

    window.addEventListener('click', (event) => {
      if (event.target === modal) {
        modal.style.display = 'none';
      }
    });

    // Initialize date pickers
    flatpickr(fromDateInput, {
      dateFormat: 'Y-m-d',
      onChange: validateInputs,
    });

    flatpickr(toDateInput, {
      dateFormat: 'Y-m-d',
      onChange: validateInputs,
    });

    // Preset button event listeners
    presetButtons.forEach((button) => {
      button.addEventListener('click', handlePresetButtonClick);
    });

    function handlePresetButtonClick() {
      presetButtons.forEach((btn) => btn.classList.remove('active'));
      this.classList.add('active');
      setPresetDateRange(parseInt(this.getAttribute('data-range')));
      validateInputs();
    }

    function setPresetDateRange(months) {
      const toDate = new Date();
      let fromDate = new Date();
      fromDate.setMonth(toDate.getMonth() - months);
      fromDateInput.value = formatDate(fromDate);
      toDateInput.value = formatDate(toDate);
    }

    function formatDate(date) {
      const day = String(date.getDate()).padStart(2, '0');
      const month = String(date.getMonth() + 1).padStart(2, '0');
      const year = date.getFullYear();
      return `${'${year}-${month}-${day}'}`;
    }

    function validateInputs() {
      if (fromDateInput.value && toDateInput.value) {
        queryButton.classList.add('active');
        queryButton.classList.remove('inactive');
      } else {
        queryButton.classList.add('inactive');
        queryButton.classList.remove('active');
      }
    }

    // Search button event listener
    queryButton.addEventListener('click', handleQueryButtonClick);

    async function handleQueryButtonClick() {
      if (queryButton.classList.contains('active')) {
        const fromDate = fromDateInput.value;
        const toDate = toDateInput.value;

        try {
          const orders = await fetchOrders(fromDate, toDate);
          displayOrders(orders);
        } catch (error) {
          console.error('Error fetching data:', error);
          orderResults.innerHTML =
              '<tr><td colspan="4">Error fetching data. Please try again later.</td></tr>';
        }
        modal.style.display = 'none';
      }
    }

    async function fetchOrders(fromDate, toDate) {
      const response = await fetch(
          `${'/pay/list?fromDate=${fromDate}&toDate=${toDate}'}`
      );
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      const orders = await response.json();
      console.log("[orders] : " + orders);
      return orders;
    }

    function displayOrders(orders) {
      orderResults.innerHTML = '';
      if (orders.length === 0) {
        orderResults.innerHTML = '<tr><td colspan="4">해당 기간에 조회된 내역이 없습니다..</td></tr>';
      } else {
        orders.forEach((order) => {
          const row = `<tr>
                           <td>${'${order.pay_dt}'}</td>
                           <td>${'${order.pay_od_name}'}</td>
                           <td>${'${order.pay_final_amt}'}</td>
                           <td><a href="/receipt?order=${'${order.od_id}'}"><button class="order-detail" referral=${'${order.od_id}'}>주문상세</button></a></td>
                       </tr>`;
          orderResults.insertAdjacentHTML('beforeEnd', row);
        });
      }
    }

  });
</script>
</body>
</html>
