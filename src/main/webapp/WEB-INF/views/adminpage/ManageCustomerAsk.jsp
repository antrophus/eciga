<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ECIGA</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/icon/favicon_lil.ico">
<link href="${pageContext.request.contextPath}/assets/css/reset.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>
   <div id="wrap">

      <c:import url="/WEB-INF/views/include/header.jsp" />

      <div id="nav">
         <h1>관리자페이지</h1>
         <ul class="clearfix">
            <li><a href="${pageContext.request.contextPath}/admin/goods">제품 등록/관리</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/user">회원관리</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/order">배송관리</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/customer">1:1 고객문의</a></li>
         </ul>
      </div>

      <div id="board">
         <div id="list">
            <div class="qna-container">
               <!-- 왼쪽: 문의 내용 -->
               <div class="qna-left">
                  <h3>문의 내용</h3>
                  <table class="qna-table">
                     <tr>
                        <th>제목</th>
                        <td>${inquiry.title}</td>
                     </tr>
                     <tr>
                        <th>작성자</th>
                        <td>${inquiry.userName}</td>
                     </tr>
                     <tr>
                        <th>등록일</th>
                        <td>${inquiry.regDate}</td>
                     </tr>
                     <tr>
                        <th>연락처</th>
                        <td>${inquiry.hp}</td>
                     </tr>
                     <tr>
                        <th>내용</th>
                        <td class="qna-content">${inquiry.content}</td>
                     </tr>
                  </table>
               </div>

               <!-- 오른쪽: 답변 작성 -->
               <div class="qna-right">
                  <h3>관리자 답변</h3>
                  <form action="${pageContext.request.contextPath}/admin/customer/answer" method="post">
                     <input type="hidden" name="inquiryNo" value="${inquiry.inquiryNo}">
                     <!-- 처리 상태 -->
                     <div class="status-container">
                        <label for="status" class="status-label">처리 상태</label> <select id="status" name="status">
                           <option value="답변대기" ${inquiry.status == '답변대기' ? 'selected' : ''}>답변대기</option>
                           <option value="답변완료" ${inquiry.status == '답변완료' ? 'selected' : ''}>답변완료</option>
                        </select>
                     </div>
                     <!-- 답변 내용 -->
                     <div class="response-container">
                        <label for="answer" class="response-label">답변 내용</label>
                        <textarea id="answer" name="answer" rows="6" placeholder="답변을 입력하세요...">${inquiry.answer != null ? inquiry.answer : ''}</textarea>
                     </div>
                     <!-- 등록 버튼 -->
                     <div class="register-btn-container">
                        <button type="submit" class="register-btn">등록</button>
                     </div>
                  </form>
               </div>

            </div>
         </div>
         <!-- //list -->
      </div>
      <!-- //board -->
      <!-- footer -->
      <c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
      <!-- //footer -->
   </div>
   <!-- //content-head -->
</body>
</html>