<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ECIGA</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/icon/favicon_lil.ico">
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/reset.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/goods.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/include/header.jsp" />

		<div id="product-container">
			<!-- 상품 이미지 및 정보 -->
			<div id="product-info">
			
			
			
			<form id="cartForm" action="insertCart" method="post" onsubmit="return handleFormSubmit(event)">

			
			
			
				<!-- 상품 이미지 -->
				<div class="product-image">
					<!-- <img id="productImage" src="${pageContext.request.contextPath}/assets/img/hybrid30cce/hybrid30cce_brown.jpg" alt="상품 이미지"> -->
					<img id="productImage" src="${pageContext.request.contextPath}/assets/img/${goodsVo.saveName}" alt="상품 이미지">
				</div>

				<!-- 상품 상세 정보 -->
				<div class="product-details">
					<h1 >${goodsVo.name}</h1>
					<!-- <p class="product-price">${goodsVo.price}원</p> -->

					<!-- 색상 선택 -->
					<!-- 색상 선택 -->
					<div class="product-colors">
						<span>색상:</span>
						<div class="color-options">
							<div class="color-circle" style="background-color: #d4b484;" onclick="changeImage('sand-beige')"></div>
							<div class="color-circle" style="background-color: #4e4a2e;" onclick="changeImage('olive')"></div>
						</div>
					</div>

					<!-- 수량 선택 -->
					<div class="quantity-selection">
						<span>수량</span>
						<div class="quantity-controls">
							<button class="quantity-btn" onclick="decreaseQuantity()">&#60;</button>
							<input type="number" id="quantity" value="1" min="1" onchange="updatePrice()" name="count">
							<button class="quantity-btn" onclick="increaseQuantity()">&#62;</button>
						</div>
					</div>

					<!-- 가격 정보 -->
					<div class="total-price">
						<span>가격</span>
						<p id="totalPrice">${goodsVo.price}원</p>
						<!-- 총 가격이 표시될 곳 -->
					</div>
					
					
					<!-- 상품넘버 -->
					<input type="hidden" name="fNo" value="${goodsVo.gNo}">
					<!-- 로그인세션 -->
					<!-- <input type="hidden" name="uId" value="${sessionScope.uId}"> -->
					<input type="hidden" name="uId" value="1">
					
					
					


					<!-- 구매 버튼 -->
					<div class="purchase-button">
						<button type="submit">장바구니에 담기</button>
					</div>
				</div>
			
			
			
			</form> 
			
			
				
			</div>
			
			
			
			<!-- //상품 이미지 및 정보 -->
			<!-- 상품 상세 이미지-->
			<div id="product-contents"></div>
			<div class="product-image-container">
				<img src="${pageContext.request.contextPath}/assets/img/hybrid30cce/hybrid30cce_content.jpg" alt="설명이미지">
			</div>
		</div>
		<!-- //상품 상세 이미지-->

		<div id="modal" class="modal">
			<div class="modal-content">
				<span class="close" id="closeModal">&times;</span> 
				<img src="${pageContext.request.contextPath}/assets/img/icon/lil_basket.png" alt="장바구니 아이콘" class="modal-image">
				<p>장바구니에 상품이 정상적으로 담겼습니다</p>
				<div class="modal-buttons">
					<button id="continueShopping" class="btn-blue">계속 쇼핑하기</button>
					<button id="goToCart" class="btn-yellow">
						<a href="${pageContext.request.contextPath}/goods/cart?uid=1">장바구니 이동</a>
					</button>
				</div>
			</div>
		</div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- //footer -->
	</div>


	<script>
		// 기본 단가 설정
		const unitPrice = ${goodsVo.price}; // 상품의 기본 가격 (단가)

		// 수량 감소 함수
		function decreaseQuantity() {
			const quantityInput = document.getElementById("quantity");
			if (quantityInput.value > 1) {
				quantityInput.value--;
				updatePrice(); // 수량 변경 후 가격 업데이트
			}
		}

		// 수량 증가 함수
		function increaseQuantity() {
			const quantityInput = document.getElementById("quantity");
			quantityInput.value++;
			updatePrice(); // 수량 변경 후 가격 업데이트
		}

		// 가격 업데이트 함수
		function updatePrice() {
			const quantity = document.getElementById("quantity").value;
			const totalPriceElement = document.getElementById("totalPrice");

			// 총 가격 계산
			const totalPrice = unitPrice * quantity;

			// 총 가격을 "99,000원" 형식으로 표시
			totalPriceElement.textContent = totalPrice.toLocaleString() + "원";
		}

		// 색상에 맞게 이미지를 변경하는 함수
		function changeImage(color) {
			const productImage = document.getElementById('productImage');

			// 색상에 따라 이미지 경로 설정 (슬래시 사용)
			if (color === 'sand-beige') {
				productImage.src = '${pageContext.request.contextPath}/assets/img/hybrid30cce/hybrid30cce_brown.jpg'; // 샌드 베이지 색 이미지 경로
			} else if (color === 'olive') {
				productImage.src = '${pageContext.request.contextPath}/assets/img/hybrid30cce/hybrid30cce_khaki.jpeg'; // 올리브 색 이미지 경로
			}
		}
		
		
		
		
		//'장바구니에 담기' 버튼 클릭시 폼제출 스탑하고 모달창 뛰운 후 전송
	    function handleFormSubmit(event) {
	        event.preventDefault(); // 기본 폼 제출 방지
	        
	        // 폼 데이터를 가져오기
	        const form = event.target;
	        const formData = new FormData(form);
	        
	        fetch(form.action, {
	            method: 'POST',
	            body: formData
	        })
	        .then(response => response.text()) // 서버 응답 처리
	        .then(result => {
	            // 성공 시 모달 표시
	            document.getElementById('modal').style.display = 'flex';
	        })
	        .catch(error => {
	            alert('장바구니 추가에 실패했습니다. 다시 시도해 주세요.');
	        });

	        return false; // 폼 제출 방지
	    }

	    document.getElementById('closeModal').addEventListener('click', function() {
	        document.getElementById('modal').style.display = 'none';
	    });

	    document.getElementById('continueShopping').addEventListener('click', function() {
	        document.getElementById('modal').style.display = 'none';
	    });

	    document.getElementById('goToCart').addEventListener('click', function() {
	        window.location.href = "${pageContext.request.contextPath}/goods/cart";
	    });

	    window.addEventListener('click', function(event) {
	        if (event.target.id === 'modal') {
	            document.getElementById('modal').style.display = 'none';
	        }
	    });
		
		
		
		
		
		
		
		
		
		
		
		

		// 모달 엘리먼트 선택
		const modal = document.getElementById("modal");
		const closeModal = document.getElementById("closeModal");
		const continueShopping = document.getElementById("continueShopping");
		const goToCart = document.getElementById("goToCart");

		// 장바구니에 담기 버튼 클릭 시 모달 열기
		document.querySelector(".purchase-button button").addEventListener(
				"click", function() {
					modal.style.display = "flex"; // 모달을 화면에 표시
				});

		// 모달 닫기 버튼 클릭 시 모달 닫기
		closeModal.addEventListener("click", function() {
			modal.style.display = "none"; // 모달을 닫음
		});

		// 계속 쇼핑하기 버튼 클릭 시 모달 닫기
		continueShopping.addEventListener("click", function() {
			modal.style.display = "none"; // 모달을 닫음
		});

		// 장바구니 이동 버튼 클릭 시 장바구니 페이지로 이동
		goToCart.addEventListener("click", function() {
			window.location.href = "${pageContext.request.contextPath}/cart?uid=1"; // 장바구니 페이지로 리다이렉트
		});

		// 모달 바깥쪽 클릭 시 모달 닫기
		window.addEventListener("click", function(event) {
			if (event.target == modal) {
				modal.style.display = "none"; // 모달 바깥을 클릭하면 닫음
			}
		});
	</script>
</body>
</html>