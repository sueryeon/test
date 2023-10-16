<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>병원목록 올리기</h1>
	<form action="${contextPath}/hospital/insertHospital.do" method="post" enctype="multipart/form-data">
		<select name="vccname">
			<option value="1" selected disabled>접종가능 백신을 선택하세요.</option>
			<option value="결핵(BCG,피내용)"/>결핵(BCG,피내용)</option>
			<option value="B형간염(HepB)">B형간염(HepB)</option>
			<option value="디프테리아/파상풍/백일해(DTaP)">디프테리아/파상풍/백일해(DTaP)</option>
			<option value="디프테리아/파상풍/백일해/폴리오(DTaP-IPV)">디프테리아/파상풍/백일해/폴리오(DTaP-IPV)</option>
			<option value="디프테리아/파상풍/백일해/폴리오/Hib(DTaP-IPV/Hib)">디프테리아/파상풍/백일해/폴리오/Hib(DTaP-IPV/Hib)</option>
			<option value="파상풍/디프테리아/백일해(Tdap)">파상풍/디프테리아/백일해(Tdap)</option>
			<option value="파상풍/디프테리아(Td)">파상풍/디프테리아(Td)</option>
			<option value="폴리오(IPV)">폴리오(IPV)</option>
			<option value="b형헤모필루스인플루엔자">b형헤모필루스인플루엔자</option>
			<option value="페렴구균(PCV 10가)">페렴구균(PCV 10가)</option>
			<option value="페렴구균(PCV 13가)">페렴구균(PCV 13가)</option>
			<option value="페렴구균(PPSV 23가)">페렴구균(PPSV 23가)</option>
			<option value="로타바이러스(로타릭스)">로타바이러스(로타릭스)</option>
			<option value="로타바이러스(로타텍)">로타바이러스(로타텍)</option>
			<option value="홍역/유행성이하선염/풍진(MMR)">홍역/유행성이하선염/풍진(MMR)</option>
			<option value="수두(VAR)">수두(VAR)</option>
			<option value="A형간염(HepA)">A형간염(HepA)</option>
			<option value="일본뇌염(불활성화 백신,베로세포 유래)">일본뇌염(불활성화 백신,베로세포 유래)</option>
			<option value="일본뇌염(약독화 생백신,씨디제박스)">일본뇌염(약독화 생백신,씨디제박스)</option>
		</select><br>
		병원 엑셀파일 : <input type="file" name="hosFile" ><br>
		<input type="submit" value="올리기"><br>
	</form>
	<jsp:include page="../footer.jsp"/>
</body>
</html>