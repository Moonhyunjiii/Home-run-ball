<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/x-icon" href="/img/icon_logo.png">
    <meta charset="UTF-8"/>
    <title>결제내역 확인서</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <style>
      /* modal 에 쓰일 회색 배경 */
      .container {
        background-color: #f4f4f4;
      }

      /* modal */
      .modal {
        display: flex;
        justify-content: center;
        align-items: center;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
        padding-top: 20px;
      }

      .modal-content {
        background-color: #fff;
        margin: 5% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 100%;
        max-width: 400px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      }

      .modal-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding-bottom: 10px;
        border-bottom: 1px solid #ddd;
      }

      .modal-header h2 {
        margin: 0;
        font-size: 24px;
      }

      .modal-header .icons {
        display: flex;
        gap: 10px;
      }

      .modal-body {
        padding-top: 10px;
        font-size: 14px;
        line-height: 1.6;
      }

      .modal-body .info {
        display: flex;
        flex-direction: column;
      }

      .modal-body .info div {
        display: flex;
        justify-content: space-between;
        margin: 5px 0;
      }

      .modal-body hr {
        border: none;
        border-top: 1px solid #ddd;
        margin: 10px 0;
      }

      .modal-footer {
        padding-top: 10px;
        border-top: 1px solid #ddd;
        font-size: 12px;
        color: #8b95a1;
      }

      .modal-footer p {
        margin: 5px 0;
      }

      .close {
        color: #aaa;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
      }

      .close:hover,
      .close:focus {
        color: black;
        text-decoration: none;
      }

      .icon {
        cursor: pointer;
        font-size: 20px;
        color: #555;
      }

      .icon:hover {
        color: #000;
      }

      .highlight .align-left {
        color: #ff0000;
      }

      .total-amount .align-left {
        color: #0000ff;
        font-weight: bold;
      }

      .align-left {
        color: #8b95a1;
        text-align: left;
      }

      .align-right {
        color: #4e5968;
        font-weight: 600;
        text-align: right;
      }
    </style>
</head>
<body>
<div class="container">
    <!-- 모달 -->
    <div id="receiptModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>신용 · 체크카드 매출전표</h2>
                <div class="icons">
                    <i class="fas fa-copy icon" onclick="copyLink()"></i>
                    <i class="fas fa-print icon" onclick="printReceipt()"></i>
                    <span class="close" onclick="closeModal()">&times;</span>
                </div>
            </div>
            <div class="modal-body">
                <div class="info">
                    <div>
                        <span class="align-left">주문번호:</span>
                        <span class="align-right">123451234512345</span>
                    </div>
                    <div>
                        <span class="align-left">구매자:</span>
                        <span class="align-right">홈런볼</span>
                    </div>
                    <div>
                        <span class="align-left">구매상품:</span>
                        <span class="align-right"
                        >미즈노 반팔 하계티 네이비 32MAA15614NV</span
                        >
                    </div>
                    <hr />
                    <div>
                        <span class="align-left">카드종류:</span>
                        <span class="align-right">신한</span>
                    </div>
                    <div>
                        <span class="align-left">카드번호:</span>
                        <span class="align-right">51073776****472*</span>
                    </div>
                    <div>
                        <span class="align-left">할부:</span>
                        <span class="align-right">일시불</span>
                    </div>
                    <div>
                        <span class="align-left">승인번호:</span>
                        <span class="align-right">36952716</span>
                    </div>
                    <hr />
                    <div>
                        <span class="align-left">승인:</span>
                        <span class="align-right">249,240원</span>
                    </div>
                    <div>
                        <span class="align-left">2023-11-02 16:43:37</span>
                    </div>
                    <div class="highlight">
                        <span class="align-left">취소:</span>
                        <span class="align-right">-</span>
                    </div>
                    <div>
                        <span class="align-left"></span>
                    </div>
                    <hr />
                    <div>
                        <span class="align-left">공급가액:</span>
                        <span class="align-right">224,316원</span>
                    </div>
                    <div>
                        <span class="align-left">면세가액:</span>
                        <span class="align-right">0원</span>
                    </div>
                    <div>
                        <span class="align-left">부가세:</span>
                        <span class="align-right">24,924원</span>
                    </div>
                    <div>
                        <span class="align-left">과세제외액:</span>
                        <span class="align-right">0원</span>
                    </div>
                    <div class="total-amount">
                        <span class="align-left">합계:</span>
                        <span class="align-right">249,240원</span>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <strong>이용상점</strong>
                <p>
                    주식회사 홈런볼 | 대표자명: 김지훈 | 사업자등록번호: 999-81-00612 | 전화: 1540-0000 | 주소: 서울특별시 강남구 미왕빌딩 A
                </p>
                <strong>결제서비스업체</strong>
                <p>
                    토스페이먼츠(주) | 대표자명: 강병훈 | 사업자등록번호: 411-86-01799 | 전화: 1544-7772 | 주소: 서울특별시 강남구 테헤란로 131, 14층 (역삼동, 한국지식재산센터)
                </p>
                <p>
                    * 부가가치세법 제46조 3항에 따라 신용카드 매출전표로
                    매출세금계산서를 발행할 수 있습니다.
                </p>
            </div>
        </div>
    </div>
</div>

<script>
  function openModal() {
    document.getElementById('receiptModal').style.display = 'block';
  }

  function closeModal() {
    document.getElementById('receiptModal').style.display = 'none';
  }

    function copyLink() {
        const url = window.location.href;
        navigator.clipboard.writeText(url).then(() => {
            alert("링크가 복사되었습니다!");
        }).catch(err => {
            alert("링크 복사에 실패했습니다.");
        });
    }

    function printReceipt() {
        const printContents = document.querySelector('.modal-content').innerHTML;
        const originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
    location.reload();
  }

  // 모달을 열어주는 코드 (테스트용)
  window.onload = openModal;
</script>
</body>
</html>
