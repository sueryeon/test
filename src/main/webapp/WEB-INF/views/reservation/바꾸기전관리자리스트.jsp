<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	request.setCharacterEncoding("UTF-8");
	String contextPath=request.getContextPath();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전체 백신 예약 내역</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
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
</script>
<style>
   .black-link{
      color: black;
      text-decoration: none;
   }
   .black-link:hover{
      color: blue;
      text-decoration: underline;
   }
</style>
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">병원</th>
				<th scope="col">백신</th>
				<th scope="col">예약날짜</th>
				<th scope="col">작성날짜</th>
				<th scope="col">아이디</th>
				<th scope="col">예약상세</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="listReservation" items="${listReservations}" >
				<tr>        
					<td>${listReservation.rhospital}</td>
					<td>${listReservation.rvcc}</td>
					<td><fmt:formatDate value="${listReservation.rdate}" pattern="yy-MM-dd HH:mm"/></td>
					<td><fmt:formatDate value="${listReservation.rwritedate}" pattern="yy-MM-dd HH:mm"/> </td>
					<td>${listReservation.rid}</td>
					<td>
						<a href="<%=contextPath%>/reservation/getDetailReservation.do?rno=${listReservation.rno}">상세보기</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>   
</body>
</html>