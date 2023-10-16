<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("UTF-8");
	String contextPath=request.getContextPath();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 백신 예약 내역</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../resources/CSS/listMyReservations.css">
<script>
	window.onload=function(){
		
		var isLogin = "${isLogin}";
		var isAdminLogin = "${isAdminLogin}";
		console.log("isAdminLogin : "+isAdminLogin);
		console.log("isLogin : "+isLogin);
		console.log("${memVO.mid}");
		if(isLogin==""){
			console.log("공백입니다.");
		}
	
		var member_menu = document.getElementById("member_menu");
		var admin_menu = document.getElementById("admin_menu");
		
		if((isLogin=="true"&&isAdminLogin=="false")||(isLogin=="true"&&isAdminLogin.length==0)){
	
			member_menu.style.display="block";
			admin_menu.style.display="none";
		}
		else if((isAdminLogin=="true"&&isLogin=="false")||(isAdminLogin=="true"&&isLogin.length==0)){
	
			member_menu.style.display="none";
			admin_menu.style.display="block";
		}
		else{
	
			member_menu.style.display="block";
			admin_menu.style.display="none";
		}
	
	}

	document.addEventListener('DOMContentLoaded', function() {
	    const mvcinsertform = document.querySelector('.a-mvcinsertform');
	    const mvclistform = document.querySelector('.a-mvclistform');
	    const hopitalform = document.querySelector('.a-hopitalform');
	
	    mvclistform.classList.add('active'); // 초기 링크를 활성화 상태로 표시
	    
	    hopitalform.addEventListener('click', function() {
	        hopitalform.classList.add('active'); //링크 활성화
	        mvcinsertform.classList.remove('active'); // 다른 링크 비활성화
	        mvclistform.classList.remove('active'); // 다른 링크 비활성화
	    });
	    
	    mvcinsertform.addEventListener('click', function() {
	    	mvcinsertform.classList.add('active'); //링크 활성화
	    	hopitalform.classList.remove('active'); // 다른 링크 비활성화
	        mvclistform.classList.remove('active'); // 다른 링크 비활성화
	    });
	    
	    mvclistform.addEventListener('click', function() {
	    	mvclistform.classList.add('active'); //링크 활성화
	    	hopitalform.classList.remove('active'); // 다른 링크 비활성화
	    	mvcinsertform.classList.remove('active'); // 다른 링크 비활성화
	    });

	});

	function goBack() {
	    window.history.back();
	}
	
</script>
</head>
<body>
	<jsp:include page="../nav.jsp"/>
	<div class="container-fluid p-3 pt-4 bg-light text-dark pb-5">
		<div class="wrap-container d-flex justify-content-between">
			<!-- 왼쪽 -->
			<div class="left me-4" style="width: 20%;">
				<!-- 왼쪽 회원 서비스 -->
				<div class="hosform-leftwrap-container">
					<div class="hosleft-box">
						<div class="hosservice-box">
							<div class="hosservice form-control">
	                           예방접종 관리
	                        </div>
	                        <div class="card hos-service-box mt-2">
			                  	<ul class="list-group list-group-flush">
								    <li class="list-group-item a-mvcinsertform"><a class="vcc-alink" href="${contextPath}/reservation/getreservationForm.do">예방접종 예약</a></li>
								    <li class="list-group-item a-mvclistform active"><a class="vcc-alink" href="${contextPath}/reservation/getlistMyReservations.do">예방접종 관리</a></li>
								    <li class="list-group-item a-hopitalform"><a class="vcc-alink" href="${contextPath}/hospital/getlistHospital.do">지정 의료기관 찾기</a></li>
							   </ul>
		                   </div>
                        </div>
                    </div>
                </div>
			</div>
			
			<!-- 오른쪽 -->
			<div class="right ms-4 text-center" style="width: 80%;" >
				<h3 class="border-bottom border-2 border-secondary-subtle text-start pb-3 mt-4 pt-5 mb-0"><strong>예방접종 관리</strong></h3>
				<table class="table">
					<tbody>
						<tr>
							<th colspan=2 scope="col">예약번호</th>
							<td colspan=4 scope="col">${rsvVO.rno}</td>
						</tr>
						<tr>
							<th scope="col">이름</th>
							<c:choose>
								<c:when test="${!empty rsvVO.rsubname}">
									<td>${rsvVO.rsubame}</td>
								</c:when>
								<c:otherwise>
									<td>${rsvVO.rname}</td>
								</c:otherwise>
							</c:choose>
						</tr>
						<tr>
							<th scope="col">생년월일</th>
							<c:choose>
								<c:when test="${!empty rsvVO.rsubname}">
									<td>${rsvVO.rsubbirth1}</td>
								</c:when>
								<c:otherwise>
									<td>${rsvVO.rbirth1}</td>
								</c:otherwise>
							</c:choose>
						</tr>
						<c:choose>
							<c:when test="${!empty rsvVO.rsubname}">
								<tr>
									<th>폰번호</th>
									<td>${rsvVO.rsubphone}</td>
								</tr>
								<tr>
									<th>대리인명</th>
									<td>${rsvVO.rname}</td>
								</tr>
								<tr>
								<th>대리인 폰번호</th>
									<td>${rsvVO.rphone}</td>
								</tr>
							</c:when>
							<c:when test="${empty rsvVO.rsubname}">
								<tr>
									<th>폰번호</th>
									<td>${rsvVO.rphone}</td>
								</tr>
							</c:when>
						</c:choose>
						<tr>
							<th scope="col">예약병원</th>
							<td>${rsvVO.rhospital}</td>
						</tr>
						<tr>
							<th scope="col">예약백신</th>
							<td colspan=6 >${rsvVO.rvcc}</td>
						</tr>
						<tr>
							<td class="d-flex" colspan=6 >
								<input type=button class="btn btn-primary" value="이전"  onClick="goBack()">
								<a href="${contextPath}/reservation/findReservation.do?rno=${rsvVO.rno}" class="btn btn-primary me-2">수정</a>
								<a href="${contextPath}/reservation/deleteReservation.do?rno=${rsvVO.rno}" class="btn btn-primary me-2">삭제</a>
							</td>
						</tr>
					<tbody>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"/>
	
</body>
</html>