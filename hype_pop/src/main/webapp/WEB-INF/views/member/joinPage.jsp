<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<!-- CSS 링크 추가 -->
<!-- <link rel="stylesheet" type="text/css" href="/resources/css/joinPage.css">
 -->
<style type="text/css">
/* 기본 스타일 */
body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

/* 헤더 스타일 */
header {
    background-color: #4CAF50;
    color: white;
    padding: 20px;
    text-align: center;
}

.home-link {
    color: white;
    text-decoration: none;
    font-size: 16px;
    position: absolute;
    left: 20px;
    top: 20px;
}

/* 컨테이너 스타일 */
.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.input-group {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-right: 10px;
    font-weight: bold;
    flex-basis: 100px;
}

.input-group input {
    flex-grow: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-right: 10px;
}

#interestBtn, #joinBtn, #duplicateCheckButton, #confirmButton {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
}

.interestModal {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1000;
}

.interestBoxContainer {
    background: white;
    padding: 20px;
    border-radius: 8px;
    max-width: 80%;
    overflow-y: auto;
    max-height: 80%;
}

.interestBox {
    display: inline-block;
    padding: 10px;
    margin: 5px;
    background-color: #e7e7e7;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.selectedBox {
    background-color: #4CAF50;
    color: white;
}

.confirm-button, .close-button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
}

.selectedInterests {
    display: inline-block;
    padding: 8px 12px;
    margin: 5px;
    border-radius: 4px;
}

.selectedInterestBox {
    display: inline-block;
    padding: 8px 12px;
    margin: 5px;
    background-color: #e7e7e7;
    border-radius: 4px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    font-size: 14px;
    color: #333;
    font-weight: bold;
}

.agreement {
    margin-bottom: 10px;
}

.toggle-switch {
    position: relative;
    display: inline-block;
    width: 34px;
    height: 20px;
}

.toggle-switch input {
    opacity: 0;
    width: 0;
    height: 0;
}

.slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    transition: .4s;
    border-radius: 20px;
}

.slider:before {
    position: absolute;
    content: "";
    height: 16px;
    width: 16px;
    left: 2px;
    bottom: 2px;
    background-color: white;
    border-radius: 50%;
    transition: .4s;
}

input:checked + .slider {
    background-color: #4CAF50;
}

input:checked + .slider:before {
    transform: translateX(14px);
}

.modal {
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
}

.modal-content {
    background-color: #fefefe;
    margin: 15% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.closehover, .closefocus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
.modal-trigger {
    background: none;   /* 배경 제거 */ 
    border: none;      /* 테두리 제거 */
    color: inherit;     /* 글자 색상 (부모의 색상 상속) */
    cursor: pointer;    /* 커서를 포인터로 변경 */ 
    padding: 0;         /* 패딩 제거 */ 
    font-size: inherit;  /* 부모 요소의 글꼴 크기를 상속 */ 
    outline: none;      /* 포커스 시 외곽선 제거 */ 
}

.modal-trigger:hover {
    text-decoration: underline; /* 호버 시 강조 효과 (선택 사항) */
}

/* 모달 배경 */
.modal {
    display: none;  /* 기본적으로 모달을 숨김 */ 
    position: fixed;  /* 스크롤을 해도 고정 */ 
    z-index: 1;  /* 모든 요소 위에 표시 */ 
    left: 0; 
    top: 0; 
    width: 100%;  /* 전체 화면 너비 */ 
    height: 100%;  /* 전체 화면 높이 */ 
    overflow: auto;  /* 필요 시 스크롤 */ 
    background-color: rgba(0, 0, 0, 0.5);  /* 반투명 검정 배경 */ 
}

/* 모달 내용 */
.modal-content {
    background-color: #fefefe; 
    margin: 15% auto;  /* 화면 중앙 */ 
    padding: 20px; 
    border: 1px solid #888; 
    width: 80%;  /* 모달 너비 */ 
}

/* 닫기 버튼 */
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

	<header>
		<a href="/home" class="home-link">홈으로</a>
		<!-- 홈으로 가는 링크 -->
		<h1>회원가입</h1>
	</header>

	<div class="container">
		<form action="join" method="post" onsubmit="return formSubmit()">
			<div class="input-group">
				<label for="userId">아이디</label> <input type="text" id="userId"
					name="userId" placeholder="아이디를 입력하세요.">
				<button type="button" id="duplicateCheckButton"
					onclick="checkUserId()">중복 확인</button>
			</div>
			<!-- 아이디 중복 확인 버튼 -->

			<div class="input-group">
				<label for="password">비밀번호</label> <input type="password"
					id="userPw" name="userPw" placeholder="비밀번호를 입력하세요.">
			</div>

			<div class="input-group">
				<label for="passwordCheck">비밀번호 확인</label> <input type="password"
					id="passwordCheck" name="passwordCheck"
					placeholder="비밀번호를 다시 입력하세요.">
			</div>

			<div class="input-group">
				<label for="userEmail">이메일</label> <input type="email"
					id="userEmail" name="userEmail" placeholder="이메일을 입력하세요.">
			</div>

			<div class="input-group">
				<label for="userName">이름</label> <input type="text" id="userName"
					name="userName" placeholder="이름을 입력하세요.">
			</div>

			<div class="input-group">
				<label for="userNumber">전화번호</label> <input type="tel"
					id="userNumber" name="userNumber" placeholder="전화번호를 입력하세요.">
			</div>

			<!-- 관심사 선택 버튼 -->
			<div>
				<label>관심사</label>
				<button type="button" id="interestBtn">관심사 선택</button>
			</div>



			<!-- 모달 창  -->
			<div id="userInterest" name="userInterest" class="userInterest"
				style="display: none;">
				<div class="modal-background" onclick="closeModal()"></div>
				<!-- 배경 클릭 시 모달 닫기 -->
				<div class="interestBoxContainer">
					<input type="checkbox" style="display: none;">
					<div>
						<p>관심사를 선택하세요(최소 3개 선택)</p>
					</div>
					<!-- 관심사 박스 -->
					<div class="interestBox" data-interest="헬스/뷰티">
						<label for="healthBeauty"> 
						<input type="checkbox"
							class="interestBox" name="healthBeauty" value="1"
							> 헬스/뷰티
						</label>
					</div>
					<div class="interestBox" data-interest="게임">
						<label for="game">
						<input type="checkbox" name="game"
							value="1"> 게임</label>
					</div>
					<div class="interestBox" data-interest="문화">
						<label for="culture"><input type="checkbox" name="culture"
							value="1"> 문화</label>
					</div>
					<div class="interestBox" data-interest="쇼핑">
						<label for="shopping"><input type="checkbox"
							name="shopping" value="1"> 쇼핑</label>
					</div>
					<div class="interestBox" data-interest="문구">
						<label for="supply"><input type="checkbox"
							name="supply" value="1"> 문구</label>
					</div>
					<div class="interestBox" data-interest="키즈">
						<label for="kids"><input type="checkbox" name="kids"
							value="1"> 키즈</label>
					</div>
					<div class="interestBox" data-interest="디자인">
						<label for="design"><input type="checkbox" name="design"
							value="1"> 디자인</label>
					</div>
					<div class="interestBox" data-interest="식품">
						<label for="foods"><input type="checkbox" name="foods"
							value="1"> 식품</label>
					</div>
					<div class="interestBox" data-interest="인테리어">
						<label for="interior"><input type="checkbox"
							name="interior" value="1"> 인테리어</label>
					</div>
					<div class="interestBox" data-interest="정책">
						<label for="policy"><input type="checkbox" name="policy"
							value="1" > 정책</label>
					</div>
					<div class="interestBox" data-interest="캐릭터">
						<label for="character"><input type="checkbox"
							name="character" value="1" > 캐릭터</label>
					</div>
					<div class="interestBox" data-interest="체험">
						<label for="experience"><input type="checkbox"
							name="experience" value="1" > 체험</label>
					</div>
					<div class="interestBox" data-interest="콜라보">
						<label for="collaboration"><input type="checkbox"
							name="collaboration" value="1" >
							콜라보</label>
					</div>
					<div class="interestBox" data-interest="방송">
						<label for="entertainment"><input type="checkbox"
							name="entertainment" value="1" > 방송</label>
					</div>
					<div>
						<button id="confirmButton" class="confirm-button" required>확인</button>
					</div>
				</div>

			</div>





			<!-- 선택된 관심사 출력 영역 -->
			<div class="selectedInterests" id="selectedInterests"></div>


			<!-- 동의 항목 -->
			<div class="agreement">
				<label>개인정보 처리 방침 동의</label> <label class="toggle-switch"> <input
					type="checkbox" id="privacy" required> <span class="slider"></span>
				</label>
				<button class="modal-trigger" onclick="policyModal('privacy')">&gt;</button>
			</div>
			<div class="agreement">
				<label>위치 정보 사용 동의 </label> <label class="toggle-switch"> <input
					type="checkbox" id="location" required> <span
					class="slider"></span>
				</label>
				<button class="modal-trigger" onclick="policyModal('location')">&gt;</button>
			</div>
			<div class="agreement">
				<label>알림 수신 동의</label> <label class="toggle-switch"> <input
					type="checkbox" id="notification" required> <span
					class="slider"></span>
				</label>
				<button class="modal-trigger" onclick="policyModal('notification')">&gt;</button>
			</div>


			<button type="submit" id="joinBtn" onclick="formSubmit()">회원가입
				버튼</button>
		</form>
	</div>




	<!--동의 내용 모달  -->

	<!--개인정보 처리 방침 동의 모달  -->
	<div id="policyModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closePolicyModal()">&times;</span>
			<div id="modalContent"></div>
		</div>
	</div>

	<!--위치기반서비스 동의 모달  -->
	<div id="locationModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">&times;</span>
			<div id="modalContent"></div>
		</div>
	</div>


	<!--마케팅 알림 수신 동의 안내  -->

	<div id="notificationModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">&times;</span>
			<div id="modalContent"></div>

		</div>
	</div>






	<!-- 동의 안내(style과 클릭이벤트로 동의 안내문 띄우기) -->
	<!-- <div class="agreement">
		    <label>개인정보 처리 방침 동의</label>
		    <label class="toggle-switch">
		        <input type="checkbox" id="privacyPolicy" required>
		        <span class="slider"></span>
		    </label>
		    <span class="modal-trigger" onclick="openModal('privacyPolicyModal')"> &gt; </span>
		</div>
		<div class="agreement">
		    <label>위치 정보 사용 동의</label>
		    <label class="toggle-switch">
		        <input type="checkbox" id="locationPolicy" required>
		        <span class="slider"></span>
		    </label>
		    <span class="modal-trigger" onclick="openModal('locationPolicyModal')"> &gt; </span>
		</div>
		<div class="agreement">
		    <label>알림 수신 동의</label>
		    <label class="toggle-switch">
		        <input type="checkbox" id="notificationPolicy" required>
		        <span class="slider"></span>
		    </label>
		    <span class="modal-trigger" onclick="openModal('notificationPolicyModal')"> &gt; </span>
		</div>
		
		모달창
		<div id="privacyPolicyModal" class="modal">
		    <div class="modal-content">
		        <span class="close" onclick="closeModal('privacyPolicyModal')">&times;</span>
		        <h2>개인정보 처리 방침</h2>
		        <p>여기에 개인정보 처리 방침 내용을 입력하세요.</p>
		    </div>
		</div>
		
		<div id="locationPolicyModal" class="modal">
		    <div class="modal-content">
		        <span class="close" onclick="closeModal('locationPolicyModal')">&times;</span>
		        <h2>위치 정보 사용 방침</h2>
		        <p>여기에 위치 정보 사용 방침 내용을 입력하세요.</p>
		    </div>
		</div>
		
		<div id="notificationPolicyModal" class="modal">
		    <div class="modal-content">
		        <span class="close" onclick="closeModal('notificationPolicyModal')">&times;</span>
		        <h2>알림 수신 방침</h2>
		        <p>여기에 알림 수신 방침 내용을 입력하세요.</p>
		    </div>
		</div>
			 -->

	<script type="text/javascript" src="/resources/memberJs/joinPage.js"></script>
</body>
</html>
