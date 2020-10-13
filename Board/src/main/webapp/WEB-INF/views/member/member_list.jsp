<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${ pageContext.request.contextPath }/webapp/css/member_list.css">

</head>
<body>
<section class="content">
	<div class="inner">
		<div class="container">
			<h2 id="title">회원관리</h2>
			
			<table class="table">
				<tr class="active">
					<th width="7%">회원번호</th>
					<th width="7%">아이디</th>
					<th width="7%">이름</th>
					<th width="10%">이메일</th>
					<th width="15%">연락처</th>
					<th width="10%">우편번호</th>
					<th width="20%">주소</th>
					<th width="10%">회원등급</th>
					<th width="20%">가입날짜</th>
					<th width="10%">삭제</th>
				</tr>
				<!-- 회원정보 -->
				<c:forEach var="vo" items="${ list }">
				<tr id="member">
					<td>${ vo.m_idx }</td>
					<td>${ vo.m_id }</td>
					<td>${ vo.m_name}</td>
					<td>${ vo.m_mail}</td>
					<td>${ vo.m_tel }</td>
					<td>${ vo.m_zipcode}</td>
					<td>${ vo.m_addr}</td>
					<td>${ vo.m_grade}</td>
					<td>${ fn:substring(vo.m_regdate,0,10)}</td>
					<td><button class="button" style="vertical-align:middle">삭제</button></td>
				</tr>
				</c:forEach>	
			</table>
		</div>
	</div>
</section>
</body>
</html>