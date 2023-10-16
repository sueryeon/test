<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    import="java.util.Date" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String contextPath = request.getContextPath();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
	<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="../resources/CSS/listVcc.css">

<title>백신 정보 목록</title>
</head>
<body>
	<jsp:include page="../nav.jsp"/>
	<div class="container-fluid p-3 pt-4 bg-light text-dark pb-5">
		<div class="wrap-container d-flex justify-content-between">
			<!-- 왼쪽 -->
			<div class="left me-4" style="width: 20%;">
				<!-- 왼쪽 회원 서비스 -->
				<div class="vccform-leftwrap-container">
					<div class="vccleft-box">
						<div class="vccservice-box">
							<div class="vccservice form-control">
	                           백신 정보
	                        </div>
	                        <div class="card vcc-service-box mt-2">
	                        <div class="list-group" id="list-tab" role="tablist">
							      <a class="list-group-item border-secondary-subtle list-group-item-action  active" id="list-home-list" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">결핵(BCG)</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-profile-list" data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile">B형간염</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-messages-list" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="list-messages">디프테리아</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings" role="tab" aria-controls="list-settings">파상풍</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings1" role="tab" aria-controls="list-settings">백일해</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings2" role="tab" aria-controls="list-settings">폴리오</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings3" role="tab" aria-controls="list-settings">B형헤모필루스 인플루엔자</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings4" role="tab" aria-controls="list-settings">폐렴구균</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings5" role="tab" aria-controls="list-settings">홍역</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings6" role="tab" aria-controls="list-settings">유행성이하선염</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings7" role="tab" aria-controls="list-settings">풍진</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings8" role="tab" aria-controls="list-settings">수두</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings9" role="tab" aria-controls="list-settings">A형간염</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings10" role="tab" aria-controls="list-settings">일본뇌염</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings11" role="tab" aria-controls="list-settings">사람유두종바이러스</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings12" role="tab" aria-controls="list-settings">인플루엔자</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings13" role="tab" aria-controls="list-settings">장티푸스</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings14" role="tab" aria-controls="list-settings">신증후군출혈열</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings15" role="tab" aria-controls="list-settings">로타바이러스</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings16" role="tab" aria-controls="list-settings">수막구균</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings17" role="tab" aria-controls="list-settings">대상포진</a>
							      <a class="list-group-item border-secondary-subtle list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings18" role="tab" aria-controls="list-settings">엠폭스</a>
							    </div>
	                        </div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 오른쪽 -->
			<div class="right ms-4" style="width: 80%;" >
				    <div class="tab-content" id="nav-tabContent">
					      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
								<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>결핵(BCG)</strong></h2>
					      		<h4 class="mt-4 mb-4">결핵은 결핵군(Mycobacterium tuberculosis)에 의한 공기매개 감염 질환</h4>
					      		<h6>폐를 침범할 뿐만 아니라 흉막, 림프절, 복부, 골 및 관절, 중추신경계, 비뇨생식기, 기도, 심낭 등 신체의 여러 부분을 침범하는 질환입니다.</h6>
					      		<br>
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">결핵은 어떻게 전파되나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>호흡기 결핵 환자의 기침, 재채기 등을 통해 나오는 미세한 비말형태의 분비물을 통하여 다른 사람에게 전파됩니다.</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">결핵의 증상은 무엇인가요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>발열, 식욕부진, 체중감소, 야간발한 등의 전신증상이 있을 수 있습니다. 폐결핵의 경우 지속되는 기침, 가래, 객혈(가래에 피가 섞임) 등의 호흡기 증상이 있고 영아에서는 마른기침, 경한 호흡곤란이 가장 흔한 증상으로 나타납니다. 폐외결핵의 경우 발열, 식욕부진, 체중감소, 쇠약감, 오한 등의 전신증상과 감염부위의 통증 등의 국소증상이 나타날 수 있습니다.</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">결핵의 치료는 어떻게 하나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>항결핵제를 복용하는 내과적 치료를 실시하며 수술과 같은 외과적 치료를 병행할 수 있습니다. 결핵이 발병한 사람은 의사의 지시에 따라 치료효과와 부작용에 대한 검사를 정기적으로 받고, 처방된 약을 꾸준히 복용해야 내성균 발현을 막고 결핵을 완치할 수 있습니다.</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">결핵은 어떻게 예방하나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>BCG 예방접종을 통해 결핵을 예방 수 있습니다.<br>
						      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>
						      					금기사항이 없는 모든 신생아를 예방할 수 있습니다.
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">BCG 예방접종 후 이상반응에는 무엇이 있나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					가장 흔한 국소반응은 광범위한 국소 피부 궤양, 켈로이드, 국소 림프절염으로 면역이 정상인 접종자의 1% 미만에서 발생하는데, 대개 수주에서 수개월 사이에 발생하며 간혹 수 년 후에 나타나기도 합니다. 
						      					중증 이상반응으로는 매우 드물게 골염/골수염, 파종성 BCG 감염증(BCGosis)이 있을 수 있습니다.
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>B형간염</strong></h2>
				      		<h4 class="mt-4 mb-4">B형간염 바이러스(Hepatitis B virus, HBV)에 감염</h4>
				      		<h6>간에 염증이 발생하는 질환으로 경과에 따라 급성과 만성으로 구별할 수 있습니다.<br>
				      			급성 B형간염 중 5~10%가 만성 B형간염으로 진행되며 만성 B형간염이 지속되면 간경화증이나 간세포암으로 진행할 수 있습니다.<br>
				      			예방접종으로 국내 B형간염 바이러스 보유자가 많이 감소하였지만 미국 및 유럽의 여러 국가에 비해 아직도 많이 발생하고 있습니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					B형간염은 어떻게 전파되나요?	
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					B형간염 바이러스에 감염된 사람의 혈액이나 체액을 통해 전파됩니다.<br>
					      					주요 감염 경로는 주산기감염(B형간염 바이러스에 감염된 모체로부터의 감염), 
					      					오염된 혈액이나 체액에 의한 피부 및 점막을 통한 감염(수혈, 오염된 주사기에 찔리는 것, 혈액 투석, 침습적 검사나 시술 등), 성 접촉 등이 있습니다.<br>
					      					<input class="form-control" type="text" value="B형간염은 일상적인 활동(재채기, 기침, 껴안기, 음식 나눠먹기, 모유수유 등)으로는 전염되지 않음" aria-label="Disabled input example" disabled>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">B형간염의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>급성 B형간염의 임상경과는 다른 간염 바이러스의 급성 경과와 구분이 불가능합니다. 
					      				    대개 무증상 또는 다른 바이러스성 간염과 유사한 피로감, 식욕부진, 구역, 구토 등 비특이적인 증상과 우상복부 불편감, 쇠약감, 무기력, 황달, 옅은 색 또는 회색 변, 간의 압통과 종대 등이 나타날 수 있습니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">B형간염은 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>급성 B형간염의 치료는 증상을 줄이기 위한 대증요법이 주된 치료법이며, 만성 B형간염에서는 항바이러스제 투약 등의 치료법이 있습니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">B형간염은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>B형간염 예방접종을 통해 B형간염을 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>
					      					모든 신생아 및 영아에게 생후 0, 1, 6개월 일정으로 3회 접종
					      					<div class="text-bg-light p-3">
					      						<ul>
						      						<li class="corylist">단, 모체가 B형간염 표면항원(HBsAg) 양성인 경우에는 면역글로블린(HBIG)과 B형간염 1차접종을 분만 직후(12시간 이내) 각각 다른 부위에 접종</li>
						      						<li class="corylist">출생 후 B형간염 단독백신으로 접종한 영아에게 생후 2, 4, 6개월에 DTaP-IPV-HepB-Hib 혼합백신으로 접종 가능하며, 
						      						이 경우 B형간염은 총 4회 접종됨(DTaP-IPV-HepB-Hib 혼합백신은 국가예방접종 지원 대상 백신이 아님)
						      						단, B형간염 표면항원(HBsAg) 양성 산모로부터 태어난 영아에게는 별도의 지침이 있기 전까지 기존의5가 혼합백신(DTaP-IPV/Hib)과 B형간염 단독백신의 0, 1, 6개월 일정의 접종을 권장함</li>
						      						<li class="corylist">DTaP-IPV-HepB-Hib 혼합백신으로 접종 시에는 동일 제조사의 백신으로 접종하도록 권장함</li>
						      						<li class="corylist">다음에 해당하는 사람은 B형간염 바이러스에 노출될 위험이 높은 사람으로, 과거의 백신 완전 접종력이 없거나 이전의 면역상태를 모르는 경우는 검사를 통해 확인 후 B형간염 항체가 없다면 백신 접종을 권고함
						      							<ul>
						      								<li>B형간염 바이러스 만성 감염자의 가족</li>
						      								<li>혈액제제를 자주 수혈받아야 되는 환자</li>
						      								<li>혈액 및 복막투석을 받는 환자</li>
						      								<li>주사용 약물 중독자</li>
						      								<li>의료기관 종사자</li>
						      								<li>수용시설의 수용자 및 근무자</li>
						      								<li>성매개질환의 노출 위험이 큰 집단</li>
						      								<li>C형 간염, HIV 감염자</li>
						      								<li>당뇨 환자 및 만성 간질환자(예: 간경변증, 지방간, 자가면역 감염 환자 등)</li>
						      							</ul>
						      						</li>
						      					</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">B형간염 예방접종 후 이상반응에는 무엇이 있나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					B형간염 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 이상반응 중 가장 흔한 것은 주사 부위의 통증이며 미열, 발적, 경한 종창, 두통 등 경미한 이상반응이 나타날 수 있습니다. 
						      					드물게 중한 전신 이상반응 및 알레르기 반응이 나타날 수 있습니다.
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>디프테리아(Diphtheria)</strong></h2>
					      	<h4 class="mt-4 mb-4">디프테리아균(Corynebacterium Diphtheriae) 감염 후</h4>
				      		<h6>발생하는 급성, 독소(toxin) 매개성 호흡기 감염병입니다. 디프테리아는 온대기후 지역에서 상대적으로 발생율이 높으나 전 세계적으로 디프테리아 발생은 매우 드물며, 
				      			예방접종으로 국내에서는 1988년 이후부터는 환자가 발생하고 있지 않습니다.
				      		</h6>
				      		<br>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">디프테리아는 어떻게 전파되나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>환자나 보균자와의 직접 접촉으로 주로 호흡기계를 통하여 전파되며 드물게 피부나 다른 병변의 분비물과의 직접 접촉에 의해 전파됩니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">디프테리아의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					디프테리아균은 인체 모든 부위의 점막을 침범할 수 있으며 침범 부위의 막 형성이 특징입니다.<br>
					      					가장 흔한 발생부위는 인두와 편도부위입니다. 초기에는 피로, 인두통, 식욕감퇴, 미열 등의 증상이 나타나며, 중증인 경우 림프절염을 동반한 광범위한 경부 부종(bull neck)이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">디프테리아의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					디프테리아로 진단되거나 의심되는 환자는 일단 항생제와 항독소를 투여하고 격리한 후 호흡기 관리와 기도유지를 해야합니다. 
					      					항생제 투여 후 48시간이 지나면 대개 전염력이 소실되며 치료 후 두 번 연속 배양검사에서 균이 자라지 않는 것을 확인해야 합니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">디프테리아는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					DTaP, Tdap, Td 예방접종을 통해 디프테리아를 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
					      					모든 영유아(DTaP 혹은 DTaP-IPV, DTaP-IPV/Hib)<br>
					      					<span class="badge text-bg-success">접종시기</span><br>
					      					<ul>
					      						<li class="corylist">생후 2, 4, 6개월에 3회 기초접종(DTaP 혹은 DTaP-IPV, DTaP-IPV/Hib)</li>
					      						<li class="corylist">DTaP 백신으로만 생후 15~18개월 접종, 만 4~6세에 DTaP(혹은 DTaP-IPV) 백신으로 각각 1회 추가접종</li>
					      						<li class="corylist">만 11~12세 때 Tdap 또는 Td 백신으로 1회 접종, 이후 매 10년마다 Td 또는 Tdap 백신 추가접종</li>
					      						<li class="corylist" style="list-style-type: none;">(만 11세 이후 접종 중 한번은 Tdap으로 접종하며, 가능한 11~12세에 Tdap으로 접종)</li>
					      					</ul>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">총 3회의 기초접종과 만 4~6세 추가접종은 DTaP-IPV 혼합백신으로 접종이 가능하며, 기초접종 시 DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로도 접종 가능함(단, DTaP-IPV-HepB-Hib 혼합백신은 국가예방접종 지원 대상 백신이 아님)</li>
						      						<li class="corylist">DTaP 단독, DTaP-IPV, DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로 기초접종 시에는 동일 제조사의 백신으로 접종하도록 권장함</li>
					      						</ul>
					      					</div>	      				
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">DTaP 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					국소반응인 통증을 동반하거나 동반하지 않은 발적과 부종은 디프테리아 톡소이드가 포함된 백신 접종 후 나타나는 흔한 이상반응입니다. 
					      					이러한 국소반응은 주로 자연 소실되고 치료를 필요로 하지 않습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>파상풍(Tetanus)</strong></h2>
					      	<h4 class="mt-4 mb-4">파상풍균(Clostridium tetani)이 생산하는 독소에 의해 유발되는</h4>
				      		<h6>
				      			급성질환으로 파상풍에 이환되면 골격근의 경직과 근육수축이 발생하는 질병입니다.
				      		</h6>
				      		<br>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">파상풍은 어떻게 전파되나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>파상풍균은 토양이 풍부한 고온다습 기후의 인구 밀집 지역에서 흔히 발생하며 오염된 상처를 통해 감염됩니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">파상풍의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					잠복기는 1일~수개월까지 다양하지만 일반적으로 3일~21일 이내에 증상이 발생하며 상처가 심할수록 잠복기가 짧아집니다. 
					      					파상풍 환자의 80% 이상이 전신형으로 나타나며, 저작근 수축으로 인한 아관긴급①, 후궁반장②등의 증상을 보입니다. 
					      					제대감염에 의해 발생하는 신생아 파상풍은 생후 3~14일 후부터 증상이 발현되고, 신생아가 젖을 잘 빨지 못하거나, 심하게 우는 등의 증상이 발생합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	①아관긴급 : 개구운동이 제한되어 입을 충분히 벌리지 못하는 상태<br>
					      	②후궁반장 : 온몸에 걸칠 근육의 긴장 발작으로 팔다리를 뻣뻣하게 뻗고 등을 활처럼 젖히는 상태 <br><br>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">파상풍의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					대증치료와 독소가 중추신경계에 더 이상 침범하는 것을 방지하고 균주를 제거해 독소 생성을 차단해야 합니다.<br>
					      					파상풍 사람면역글로불린(Tetanus Immunoglobuline, TIG)을 투여하고(TIG가 없는 경우에는 정맥용 면역글로불린 투여 고려 가능), 적절한 항생제 사용 및 상처 부위 배농이나 절제가 필수적입니다. 
					      					파상풍은 감염 후에도 방어면역이 획득되지 않기 때문에 회복기에 반드시 파상풍 백신을 접종해야 합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">파상풍은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					DTaP, Tdap, Td 예방접종을 통해 파상풍을 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
					      					모든 영유아(DTaP 혹은 DTaP-IPV, DTaP-IPV/Hib), 청소년 및 성인(Tdap 혹은 Td)<br>
					      					<span class="badge text-bg-success">접종시기</span><br>
					      					<ul>
					      						<li class="corylist">생후 2, 4, 6개월에 3회 기초접종(DTaP 혹은 DTaP-IPV, DTaP-IPV/Hib)</li>
					      						<li class="corylist">DTaP 백신으로만 생후 15~18개월 접종, 만 4~6세에 DTaP(혹은 DTaP-IPV) 백신으로 각각 1회 추가접종</li>
					      						<li class="corylist">만 11~12세 때 Tdap 또는 Td 백신으로 1회 접종, 이후 매 10년마다 Td 또는 Tdap 백신 추가접종</li>
					      						<li class="corylist" style="list-style-type: none;">(만 11세 이후 접종 중 한번은 Tdap으로 접종하며, 가능한 11~12세에 Tdap으로 접종)</li>
					      					</ul>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">총 3회의 기초접종과 만 4~6세 추가접종은 DTaP-IPV 혼합백신으로 접종이 가능하며, 기초접종 시 DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로도 접종 가능함(단, DTaP-IPV-HepB-Hib 혼합백신은 국가예방접종 지원 대상 백신이 아님)</li>
						      						<li class="corylist">DTaP 단독, DTaP-IPV, DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로 기초접종 시에는 동일 제조사의 백신으로 접종하도록 권장함</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">DTaP, Tdap, Td 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					DTaP, Tdap, Td 예방접종 후에 생길 수 있는 이상반응 중 가장 흔한 것은 접종부위가 빨갛게 변하고 붓고, 통증, 어지러움, 식욕부진, 구토, 미열이 나타날 수 있습니다. 
					      					디프테리아 혹은 파상풍 성분이 포함된 백신을 접종 받은 사람 중에 극히 드물게 악화된 국소반응인 아루투스 반응(Arthus reaction)이 발생합니다. 
					      					전신반응으로는 전신 두드러기, 아나필락시스 반응, 신경학적 합병증 등이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-settings1" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>백일해</strong></h2>
				      		<h4 class="mt-4 mb-4">백일해는 그람음성간균인(Bordetella pertussis)에 의한 호흡기 감염 질환입니다.</h4>
				      		<h6>계절에 따른 발병률 차이는 명백히 밝혀진 바 없으나, 여름과 가을에 증가하는 경향을 보이며 전염성이 매우 높아 가족 내 2차 발병률이 80%에 달합니다.</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					백일해는 어떻게 전파되나요?	
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					기침이나 재채기 등의 호흡기 분비물이나 비말을 통한 호흡기 전파가 주된 경로로 사람에서 사람으로 전파됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">백일해의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					콧물, 재채기, 미열, 경미한 기침 등의 감기와 비슷한 증상이 발생하며 기침이 점진적으로 심해져서 1~2주가 경과하면 매우 심한 기침발작이 2~3주간 더 지속되다가 기침발작의 빈도나 정도가 줄어들면서 점진적으로 회복기로 접어들게 됩니다. 
					      					신생아의 경우 심한 발작적인 기침으로 사망률이 높습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">백일해의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>대증적 치료가 주를 이루고, 항생제 치료의 효과는 제한적입니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">백일해는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					DTaP, Tdap, Td 예방접종을 통해 디프테리아를 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
					      					모든 영유아(DTaP 혹은 DTaP-IPV, DTaP-IPV/Hib)<br>
					      					<span class="badge text-bg-success">접종시기</span><br>
					      					<ul>
					      						<li class="corylist">생후 2, 4, 6개월에 3회 기초접종(DTaP 혹은 DTaP-IPV, DTaP-IPV/Hib)</li>
					      						<li class="corylist">DTaP 백신으로만 생후 15~18개월 접종, 만 4~6세에 DTaP(혹은 DTaP-IPV) 백신으로 각각 1회 추가접종</li>
					      						<li class="corylist">만 11~12세 때 Tdap 또는 Td 백신으로 1회 접종, 이후 매 10년마다 Td 또는 Tdap 백신 추가접종</li>
					      						<li class="corylist" style="list-style-type: none;">(만 11세 이후 접종 중 한번은 Tdap으로 접종하며, 가능한 11~12세에 Tdap으로 접종)</li>
					      					</ul>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">총 3회의 기초접종과 만 4~6세 추가접종은 DTaP-IPV 혼합백신으로 접종이 가능하며, 기초접종 시 DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로도 접종 가능함(단, DTaP-IPV-HepB-Hib 혼합백신은 국가예방접종 지원 대상 백신이 아님)</li>
						      						<li class="corylist">DTaP 단독, DTaP-IPV, DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로 기초접종 시에는 동일 제조사의 백신으로 접종하도록 권장함</li>
					      						</ul>
					      					</div>	      				
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">DTaP, Tdap 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					모든 주사용 백신과 마찬가지로 통증, 발적 등의 국소 이상반응이 발생할 수 있습니다. 
					      					접종 부위의 국소 이상반응은 4차, 5차 접종 때 심하게 발생하는 경향이 있습니다. 
					      					Tdap을 접종 받은 경우에 흔한 이상반응으로는 주사 부위의 통증, 발적, 종창과 같은 국소반응이 나타나고, 이외 고열, 두통, 피로, 소화기 증상과 같은 비특이적 전신 증상이 드물게 발생하기도 합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-settings2" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>폴리오(Poliomyelitis - Polio)</strong></h2>
				      		<h4 class="mt-4 mb-4">폴리오바이러스(Poliovirus) 감염으로 인해</h4>
				      		<h6>소아에게 하지 마비를 일으키는 질병이며 흔히 소아마비로 알려져 있습니다. 예방접종으로 국내에서는 1983년 이후 환자가 발생하지 않고 있습니다.</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					폴리오는 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					사람이 유일한 숙주로 대개 분변-경구 혹은 호흡기를 통해 전파됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폴리오의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					소아마비로 알려진 질환으로 대부분은 감염되어도 증상이 나타나지 않지만, 일부에서 회색질 척수염 또는 수막염이 발생하고, 보다 드물게 팔이나 다리를 움직일 수 없는 마비성 회색질 척수염이 발생하기도 합니다. 
					      					마비성 회색질 척수염 발생 시 장애가 영구적으로 남을 수 있고, 호흡근 마비가 있을 경우 사망하기도 합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폴리오의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>특별한 치료법은 없으며 이환된 신경의 급성 증상에 대해서는 보존적 치료를 시행하고, 증상이 호전된 후에는 치유되지 않는 마비에 대한 재활치료를 합니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폴리오는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					폴리오 예방접종을 통해 폴리오를 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
					      					모든 영유아 및 소아에게 접종<br>
					      					<span class="badge text-bg-success">접종시기</span><br>
					      					<ul>
					      						<li class="corylist">생후 2, 4, 6개월에 3회 기초접종(3차 접종 권장시기: 생후 6~18개월까지)</li>
					      						<li class="corylist">만 4~6세 때 1회 추가접종</li>
					      					</ul>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">총 3회의 기초접종과 만 4~6세 추가접종은 DTaP-IPV 혼합백신으로 접종이 가능하며, 기초접종 시 DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로도 접종 가능함(단, DTaP-IPV-HepB-Hib 혼합백신은 국가예방접종 지원 대상 백신이 아님)</li>
						      						<li class="corylist">DTaP 단독, DTaP-IPV, DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로 기초접종 시에는 동일 제조사의 백신으로 접종하도록 권장함</li>
					      						</ul>
					      					</div>	      				
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폴리오 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					주사용 불활성화 폴리오 백신(사백신)은 현재까지 보고된 심각한 이상반응이 거의 없으며, 다른 주사용 백신과 마찬가지로 접종부위의 통증, 발적, 경결(단단하게 굳음) 등을 보일 수 있습니다. 
					      					불활성화 폴리오 백신은 소량의 항생제(스트렙토마이신, 네오마이신, 폴리믹신 B)를 함유하고 있으므로 이러한 항생제에 과민반응이 있는 경우에는 접종 후 과민반응을 보일 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-settings3" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>B형 헤모필루스 인플루엔자(Haemophilus influenzae type b(Hib))</strong></h2>
				      		<h4 class="mt-4 mb-4">B형 헤모필루스 인플루엔자균(Haemophilus influenzae type b)은</h4>
				      		<h6>뇌수막염, 후두개염, 폐렴, 관절염, 봉와직염 등 중증 침습성 감염 질환의 원인이 되며, 특히 5세 미만 소아에서 주로 발생합니다.</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					B형 헤모필루스 인플루엔자균은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					주로 기침이나 재채기를 할 때 분비되는 호흡기 비말에 의해서 상기도를 통하여 몸 속으로 침입하는 것으로 알려져 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">B형 헤모필루스 인플루엔자균의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					b형 헤모필루스 인플루엔자균에 의한 침습성 질환은 여러 장기를 침범할 수 있으며, 가장 흔한 형태는 수막염, 후두개염, 폐렴, 관절염 및 봉와직염 등이 있습니다.<br>
					      					이 외에도 심낭염, 심내막염, 결막염, 골수염, 복막염, 고환 부고환염, 패혈성 혈전 정맥염 등을 일으킵니다.<br>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">B형 헤모필루스 인플루엔자균의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>침습성 Hib 질환이 의심되는 환자는 즉시 입원하여 정맥용 항생제 치료를 시작해야 합니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">B형 헤모필루스 인플루엔자균은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					Hib 백신 접종을 통해 예방이 가능합니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">생후 2개월부터 5세 미만의 소아</li>
						      						<li class="corylist">소아기에 Hib 백신 예방접종을 받지 않은 침습성 Hib 감염의 위험성이 높은 5세 이상의 소아청소년 및 성인</li>
						      						<li class="corylist" style="list-style-type: none;">(고위험군: 겸상적혈구증, 비장절제술 후, 면역결핍증, 악성 종양으로 인해 화학요법 또는 방사선 요법에 따른 면역저하, HIV 감염(성인 제외), 초기 요소 보체결핍증, 조혈모세포이식 등)</li>
					      						</ul>
					      					</div>	
					      					<span class="badge text-bg-success">접종시기</span><br>
					      					<ul>
					      						<li class="corylist">정기접종 : 생후 2, 4, 6개월에 기초접종 및 생후 12~15개월에 추가접종(총 4회 접종)</li>
					      						<li class="corylist">따라잡기 접종 : 생후 7개월 이상의 영아 및 소아에게 접종을 시작한 경우 시작 연령에 따라 1~3회 접종</li>
					      						<li class="corylist">
					      							고위험군
					      						</li>
					      					</ul>
					      					<ul>
				  								<li class="corylist" style="list-style-type: none;">1)12개월 미만 : 정지접종에 준함</li>
				  								<li class="corylist" style="list-style-type: none;">2)12개월~59개월의 고위험군</li>
				  							</ul>
				
				   							<table class="table">
									      		<thead>
									      			<tr>
									      				<th class="table-primary">고위험군</th>
									      				<th class="table-primary">접종 방법</th>
									      			</tr>
									      		</thead>
									      		<tbody>
									      			<tr>
									      				<td>12개월 미만에 1회 이하 접종</td>
									      				<td>8주 간격 2회 접종</td>
									      			</tr>
									      			<tr>
									      				<td>12개월 미만에 2회 이하 접종</td>
									      				<td>마지막 접종으로부터 8주 이상의 간격을 두고 1회 접종</td>
									      			</tr>
									      			<tr>
									      				<td>화학요법 또는 방사선 치료 중 또는 14일 이내 접종</td>
									      				<td>무효로 간주, 치료 3개월 후 재접종</td>
									      			</tr>
									      		</tbody>
									      	</table>
									        <ul>
				   								<li class="corylist" style="list-style-type: none;">3)그 외 고위험군</li>
				   							</ul>
					      					<table class="table">
									      		<thead>
									      			<tr>
									      				<th class="table-primary">고위험군</th>
									      				<th class="table-primary">접종 방법</th>
									      			</tr>
									      		</thead>
									      		<tbody>
									      			<tr>
									      				<td>비장적출술이 계획된 15개월 이상의 소아 및 성인</td>
									      				<td>접종력 없는 경우 : 수술 전 1회 접종</td>
									      			</tr>
									      			<tr>
									      				<td>무비증을 가진 60개월 이상의 소아와 성인</td>
									      				<td>접종력 없는 경우 : 1회 접종</td>
									      			</tr>
									      			<tr>
									      				<td>60개월 이상의 HIV 감염 소아(성인 제외)</td>
									      				<td>접종력 없는 경우 : 1회 접종</td>
									      			</tr>
									      			<tr>
									      				<td>조혈모세포이식(전 연령)</td>
									      				<td>3회 접종①</td>
									      			</tr>
									      		</tbody>
									      	</table>
									      	
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">Hib 예방접종 시 DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신으로도 접종 가능(단, DTaP-IPV-HepB-Hib 혼합백신은 국가예방접종 지원 대상 백신이 아님)</li>
						      						<li class="corylist">단, DTaP-IPV/Hib, DTaP-IPV-HepB-Hib 혼합백신은 기초접종 시에만 사용하도록 하며 동일 제조사의 백신으로 접종하도록 권장</li>
					      						</ul>
					      					</div>
					      					① 이전 접종력과 상관없이, 이식 6~12개월 이후부터 최소 4주 간격으로 3회 접종	      				
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">b형 헤모필루스 인플루엔자 예방접종 후의 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					5~30%에서 주사부위에 국소적인 종창 및 발적, 통증 등이 있을 수 있으나 대부분 12~24시간 내에 소실됩니다.<br>
											발열과 보챔 등의 전신증상은 흔하지 않고 심각한 이상반응은 아직 보고된 바가 없습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      <div class="tab-pane fade" id="list-settings4" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>폐렴구균</strong></h2>
				      		<h4 class="mt-4 mb-4">폐렴구균(Streptococcus pneumoniae)은</h4>
				      		<h6>급성 중이염, 폐렴 및 균혈증, 수막염 등 침습성 감염을 일으키는 주요 원인균 중의 하나이며, 폐렴구균에 의한 침습성 감염은 영아 및 어린 소아와 65세 이상의 고령자에서 발생 빈도가 높습니다.</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					폐렴구균은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					폐렴구균의 병원소는 증상이 없는 보균자의 비인두이며, 호흡기 비말(미세 침방울)을 통해 사람에서 사람으로 직접 전파되거나 상기도에 균을 가진 사람에서 자가접종(autoinoculation)에 의해 전파됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폐렴구균의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					폐렴구균에 의한 감염은 비침습성 감염(부비동염, 중이염, 폐렴 등)과 침습성 감염(수막염, 균혈증 등)으로 구분되며, 성인에서는 폐렴이 가장 흔하고 소아에서는 급성 중이염, 부비동염, 폐렴 및 패혈증 등이 흔히 나타납니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폐렴구균의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>폐렴구균의 감염 부위와 항생제 내성 여부를 고려하여 적절한 항생제 치료가 필요합니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폐렴구균은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					폐렴구균 예방접종을 통해 폐렴구균에 의한 감염증 발생을 줄일 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
				      						<ul>
					      					 	<li class="corylist">단백결합 백신(10가, 13가)</li>
					      						<li class="corylist" style="list-style-type: none;">- 19세 미만 소아청소년</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">생후 2개월부터 5세 미만의 모든 소아</li>
						      						<li class="corylist">
						      							5세 미만에 접종을 받지 않은 5세 이상의 고위험군(표1)중
						      							<ul>
						      								<li class="corylist">60~71개월의 만성질환 및 면역저하 상태의 소아</li>
						      								<li class="corylist">면역저하, 무비증, 뇌척수액 누출, 인공와우 이식 상태에 있는 6~18세 소아청소년</li>
						      							</ul>
													</li>
					      						</ul>
					      					</div>
					      					<ul>
					      						<li class="corylist" style="list-style-type: none;">- 19세 이상 성인</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">면역저하상태, 무비증, 뇌척수액 누출, 인공와우 이식(표2)</li>
					      						</ul>
					      					</div>
					      					<ul>
					      					 	<li class="corylist">다당 백신(23가)</li>
					      					 	<li class="corylist" style="list-style-type: none;">- 2세 이상 고위험군인 소아청소년과 성인(표1, 표2)</li>
					      					 	<li class="corylist" style="list-style-type: none;">- 65세 이상 노인</li>
				      						</ul>
				      						<div>&lt;표1, 19세 미만 소아청소년에서 폐렴구균 백신 접종의 대상이 되는 기저질환들 &gt;</div>
				      						<table class="table">
									      		<thead>
									      			<tr>
									      				<th class="table-primary">위험군</th>
									      				<th class="table-primary">질환</th>
									      			</tr>
									      		</thead>
									      		<tbody>
									      			<tr>
									      				<td class="border-end">정상면역 소아청소년</td>
									      				<td>
									      					<ul>
									      						<li>만성 심장 질환 ①</li>
									      						<li>만성 폐질환 ②</li>
									      						<li>당뇨병</li>
									      						<li>뇌척수액누출</li>
									      						<li>인공와우 이식 상태</li>
									      						<li>만성 간 질환</li>
									      					</ul>
									      				</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">기능적 또는 해부학적 무비증 소아청소년</td>
									      				<td>
									      					<ul>
									      						<li>겸상구 빈혈 또는 헤모글로빈증</li>
									      						<li>무비증 또는 비장 기능 장애</li>
									      					</ul>
									      				</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">면역저하 소아청소년</td>
									      				<td>
									      					<ul>
									      						<li>HIV 감염증</li>
									      						<li>만성 신부전과 신증후군</li>
									      						<li>면역억제제나 방사선 치료를 하는 질환 (악성 종양, 백혈병, 림프종,호지킨병) 또는 고형 장기 이식</li>
									      						<li>선천성 면역결핍질환③</li>
									      					</ul>
									      				</td>
									      			</tr>
									      		</tbody>
									      	</table>
									      	<div>&lt;표2, 19~64세 성인에서 폐렴구균 백신 접종의 대상이 되는 기저질환들 &gt;</div>
				      						<table class="table">
									      		<thead>
									      			<tr>
									      				<th class="table-primary">위험군</th>
									      				<th class="table-primary">질환</th>
									      			</tr>
									      		</thead>
									      		<tbody>
									      			<tr>
									      				<td class="border-end">정상면역 성인</td>
									      				<td>
									      					<ul>
									      						<li>만성 심혈관 질환 (고혈합 제외) ④</li>
									      						<li>만성 폐질환 ⑤</li>
									      						<li>당뇨병</li>
									      						<li>뇌척수액누출</li>
									      						<li>인공와우 이식 상태</li>
									      						<li>알코올 중독</li>
									      						<li>간경변을 포함한 만성 간 질화</li>
									      						<li>흡연</li>
									      					</ul>
									      				</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">기능적 또는 해부학적 무비증 가진자⑥</td>
									      				<td>
									      					<ul>
									      						<li>겸상구 빈혈 또는 헤모글로빈증</li>
									      						<li>무비증 또는 비장 기능 장애 비장제거술</li>
									      					</ul>
									      				</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">면역저하자</td>
									      				<td>
									      					<ul>
									      						<li>선천성 또는 후천성 면역결핍증⑦</li>
									      						<li>HIV 감염증</li>
									      						<li>만성 신부전, 신증후군</li>
									      						<li>신증후군</li>
									      						<li>백혈병, 림프종</li>
									      						<li>전신적인 악성종양</li>
									      						<li>면역억제제, 장기간의 스테로이드 전신요법 및 방사선 치료를 필요로 하는 질환</li>
									      						<li>고형 장기 이식</li>
									      						<li>다발성골수종</li>
									      					</ul>
									      				</td>
									      			</tr>
									      		</tbody>
									      	</table>
					      					<span class="badge text-bg-success">접종시기</span><br>
					      					<ul>
					      						<li class="corylist">단백결합 백신(10가, 13가)</li>
					      						<li class="corylist" style="list-style-type: none;">- 생후 2~59개월 소아 : 생후 2, 4, 6개월에 3회 기초 접종, 12~15개월에 1회 추가 접종</li>
					      					</ul>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">생후 7개월 이후 접종을 시작할 경우 시작연령 및 백신 종류에 따라 1~3회 접종</li>
						      						<li class="corylist">10가와 13가 백신간의 교차접종은 권고하지 않음</li>
					      						</ul>
					      					</div>
					      					<ul>
					      						<li class="corylist">다당 백신(23가)</li>
					      						<li class="corylist" style="list-style-type: none;">- 65세 이상 연령에서 1회 접종</li>
					      						<li class="corylist" style="list-style-type: none;">- 비장적출술, 면역억제치료, 인공와우 이식술 등이 예정된 소아는 수술이나 치료 시작 전 최소 2주까지는 단백결합 백신 또는 다당 백신으로 접종 완료</li>
					      						<li class="corylist" style="list-style-type: none;">- 기능적 또는 해부학적 무비증, 면역기능 저하 상태의 소아청소년(2세 이상)</li>
					      						<li class="corylist" style="list-style-type: none;">- 65세 이전에 첫 번째 다당 백신을 접종받은 사람이 65세 이상 되었을 경우 첫 번째 다당 백신접종으로부터 5년이 경과한 후 1회에 한하여 재접종</li>
					      					</ul>
					      					<div>
					      					① 특히 선천성 청색 심질환과 심부전<br>
					      					② 고용량의 스테로이드를 경구로 복용하는 천식환자도 포함함<br>
					      					③ B세포(체역면역) 혹은 T세포 결핍증, 보체결핍증(특히 C1, C2, C3 및 C4 결핍증), 탐식구 질환(만성 육아종질환은 제외)<br>
					      					④ 울혈성 심부전과 심근증 포함<br>
					      					⑤ 만성폐쇄성 폐질환, 폐기종 및 천식 포함<br>
					      					⑥ 기능적 혹은 해부학적 무비증 환자나 면역저하자는 1차 다당 백신 접종으로부터 5년이 경과한 후 2차 다당 백신 접종이 권장됨<br>
					      					⑦ B세포(체액면역) 혹은 T세포 결핍증, 보체결핍증(특히 C1, C2, C3 및 C4 결핍증), 탐식구 질환(만성 육아종질환은 제외)<br>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">폐렴구균 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					폐렴구균 백신은 접종 후 심한 알레르기 반응과 같은 이상반응을 일으킬 수도 있지만 매우 드물고, 대부분의 이상반응은 경미하며 수일 후 호전되는 일시적인 반응입니다. 
					      					이상반응 중 가장 흔한 것은 접종부위 부어오름, 발적, 통증 등의 국소 이상반응이며 발열, 근육통 등 전신 이상반응이 있을 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
				
					      <div class="tab-pane fade" id="list-settings5" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>홍역(Measles)</strong></h2>
				      		<h4 class="mt-4 mb-4">홍역은 전 세계적으로 유행하는 급성 발진성 바이러스 질환으로</h4>
				      		<h6>
				      		전염성이 매우 높은 급성 유행성 감염병입니다. <br>
							이전에는 소아에서 생명을 위협하는 주요한 질병이었지만 백신이 개발된 이후 그 발생이 현저히 감소하였습니다. 
							하지만 일부 개발도상국가에서는 아직도 흔히 발생하고 있습니다. 국내에서는 2001년 대유행 이후로는 환자가 급격히 감소하였고, 우리나라는 36개월 이상 토착형 홍역바이러스에 의한 환자발생이 없고, 
							높은 홍역 예방접종률과 적절한 감시체계 유지, 유전자형 분석결과 등 세계보건기구의 홍역퇴치인증기준을 달성하여 2014년 홍역퇴치인증을 받았습니다.
							최근 국내에서 보고되는 환자들은 대부분 국외에서 감염된 사례로 확인되고 있습니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					홍역은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					홍역 바이러스는 인간만이 유일한 숙주이며 주로 호흡기 분비물 등의 비말(droplet)에 의하거나 오염된 물건을 통하여 호흡기로 감염됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">홍역의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					처음에는 감기처럼 콧물, 기침 같은 증상과 결막염 등이 나타나다가 고열과 함께 얼굴에서 몸통으로 퍼지는 발진이 나타납니다.<br>
											중이염이나 폐렴 같은 합병증이 흔히 발생하고 홍역 환자 1,000명 중 1~2명은 뇌염처럼 심각한 후유증을 앓거나 사망에 이를 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">홍역의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>특별한 치료방법은 없습니다. 대다수의 환자가 자연 치유되므로 대증요법으로 충분한 경우가 대부분입니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">홍역은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					MMR 예방접종을 통해 홍역을 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>
				      						<ul>
					      					 	<li class="corylist">소아 : 생후 12~15개월과 만4~6세에 각각 1회 접종(총 2회)</li>
					      					 	<li class="corylist">청소년 및 성인 : 과거 백신 접종기록이 없으면서 해당 감염병에 걸린 적이 없거나 홍역 항체가 확인되지 않는 1968년 1월 1일 이후 출생자는 적어도 1회 접종</li>
					      						<li class="corylist" style="list-style-type: none;">(특히, 대학생, 직업교육원생, 의료종사자, 해외여행자는 1차 접종과 최소 4주(28일) 이상의 간격으로 2차 접종)</li>
				      						</ul>
				      						<table class="table">
									      		<thead>
									      			<tr>
									      				<th class="table-primary">연령</th>
									      				<th class="table-primary">과거 MMR 접종횟수</th>
									      				<th class="table-primary">해외여행 대비 가속접종① 일정</th>
									      				<th class="table-primary">향후 MMR 접종일정</th>
									      			</tr>
									      		</thead>
									      		<tbody>
									      			<tr>
									      				<td class="border-end">생후 0~5개월</td>
									      				<td class="border-end">없음</td>
									      				<td class="border-end">-</td>
									      				<td class="border-end">권장 접종일정(생후 12~15개월, 만4~6세)에 따라 2회 접종</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">생후 6~11개월</td>
									      				<td class="border-end">없음</td>
									      				<td class="border-end">1회</td>
									      				<td class="border-end">생후 12개월 이후 1회 재접종이 필요하며, 2차 접종은 권장 접종일정(만 4~6세)에 따라 접종</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end" rowspan=3>생후 12개월~만53세②</td>
									      				<td class="border-end">없음</td>
									      				<td class="border-end">최소 4주 간격으로 2회 접종</td>
									      				<td class="border-end" rowspan=3>2회 접종을 완료한 경우 향후 추가 접종 필요하지 않음</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">1회</td>
									      				<td class="border-end">
									      					1회 접종 <br>
															(이전 접종과 최소 4주 간격)
									      				</td>
									      			</tr>
									      			<tr>
									      				<td class="border-end">2회</td>
									      				<td class="border-end">-</td>
									      			</tr>
									      		</tbody>
									      	</table>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<div>
					      		<p>① 가속접종 : 불가피하게 표준접종일정을 지키지 못할 상황에서 신속하게 면역을 획득해야 하는 경우 적용
					      		<p>② 1968년 1월 1일 이전에 출생한 성인의 경우 홍욕에 대한 자연면역이 있는 것으로 판단하여 접종 불필요
					      	</div>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">MMR 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					MMR 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 국소 이상반응으로 접종부위 통증, 압통 등이 발생할 수 있으며, 
					      					전신 이상반응으로 발열, 발진, 열성 경련, 혈소판감소증 등이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-settings6" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>유행성이하선염(Mumps)</strong></h2>
				      		<h4 class="mt-4 mb-4">유행성이하선염은 ‘볼거리’라고도 하며,</h4>
				      		<h6>
					      		귀 아래의 침샘이 부어오르고 열과 두통이 동반되는 전염성 바이러스 질환입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					유행성이하선염은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					호흡기 비말(미세 침방울) 감염, 오염된 타액과의 직접 접촉을 통해 감염됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">유행성이하선염의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					발병 초기에 발열, 두통, 근육통, 식욕부진, 권태감 등의 증상이 나타나며, 침샘염은 가장 흔한 증상 중 하나로 감염된 환자 30~65%에서 나타나게 되며 한쪽 또는 양쪽 볼이 붓는 증상이 1주정도 지속되다가 대개 10일 후면 회복하게 됩니다. 
					      					합병증으로 수막염을 일으킬 수 있고 간혹 뇌염, 청력장애, 고환염, 난소염, 췌장염, 심근염 등을 일으킬 수도 있으며, 매우 드물지만 사망하는 경우도 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">유행성이하선염의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>특별한 치료방법은 없습니다. 대다수의 환자가 자연 치유되므로 대증요법으로 충분한 경우가 대부분입니다. 통증이 심한 경우에는 진통제를 투여할 수 있습니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">유행성이하선염은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>MMR 예방접종을 통해 유행성이하선염을 예방할 수 있습니다.
					      					<br>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>
				      						<ul>
					      					 	<li class="corylist">소아 : 생후 12~15개월과 만4~6세에 각각 1회 접종(총 2회)</li>
					      					 	<li class="corylist">청소년 및 성인 : 과거 백신 접종기록이 없으면서 해당 감염병에 걸린 적이 없거나 항체가 확인되지 않았다면 적어도 1회 접종</li>
					      						<li class="corylist" style="list-style-type: none;">(특히, 대학생, 직업교육원생, 의료종사자, 해외여행자는 1차 접종과 최소 4주(28일) 이상의 간격으로 2차 접종)</li>
				      						</ul>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">MMR 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					MMR 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 전신 이상반응으로 발열, 발진은 대개 홍역 성분에 의한 것이며, 
					      					MMR 백신 접종 후 발생하는 이상반응인 알레르기 반응을 제외하고는 드물게 이하선염 등이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      <div class="tab-pane fade" id="list-settings7" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>풍진(Rubella)</strong></h2>
				      		<h4 class="mt-4 mb-4">풍진은 발진, 림프절염을 동반하는 급성 바이러스성 질환입니다</h4>
				      		<h6>
					      		임신 초기의 임신부가 풍진에 감염될 경우 유산을 하거나 태아에게 선천성 기형을 유발할 수 있습니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					풍진은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					호흡기 비말(미세 침방울) 감염 또는 태아의 경우 태반을 통하여 모체로부터 감염됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">풍진의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					소아는 뚜렷한 증상 없이 반점 구진성 발진으로 시작할 수 있으며, 연장아나 성인의 경우에는 미열, 귀 뒤, 목 뒤와 후두부의 림프절 종창 및 상기도 감염 증상이 발진이 나타나기 전 1~5일간 지속될 수 있습니다. 
					      					임신 초기에 풍진에 이환될 경우 태아의 모든 장기에 영향을 줄 수 있고 태아사망, 자궁 내 발육부전, 백내장, 난청, 선천성 심장질환(특히 동맥관 개존증, 폐동맥 협착), 소두증, 신생아 자반, 수막뇌염 등이 나타날 수 있습니다. 
					      					감염자의 30∼60%에서 선천적인 기형이 초래됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">풍진 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>특별한 치료방법은 없습니다. 대다수의 환자가 자연 치유되므로 대증요법으로 충분한 경우가 대부분입니다.</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">풍진은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>MMR 예방접종을 통해 유행성이하선염을 예방할 수 있습니다.
					      					<br>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>
				      						<ul>
					      					 	<li class="corylist">소아 : 생후 12~15개월과 만4~6세에 각각 1회 접종(총 2회)</li>
					      					 	<li class="corylist">청소년 및 성인 : 과거 백신 접종기록이 없으면서 해당 감염병에 걸린 적이 없거나 항체가 확인되지 않았다면 적어도 1회 접종</li>
				      						</ul>
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">
						      					 		가임기 여성이 MMR 백신을 과거에 1회 또는 2회 접종을 받았더라도 풍진에 대한 항체검사 결과 양성이 아니라면, MMR 백신을 1회 더 접종하며, 총 접종횟수는 3회를 넘지 않도록 함
						      					 	</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">MMR 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					MMR 예방접종 후에 생길 수 있는 이상반응은 발열, 림프절 비대와 관절통입니다. 국소 이상반응으로 접종부위 통증, 압통 등이 발생할 수 있으며, 
					      					이러한 이상반응은 풍진에 대한 면역이 없던 사람에서만 나타나며 성인, 특히 여성에서 더 흔하게 나타납니다.
					      					
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
				
					      <div class="tab-pane fade" id="list-settings8" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>수두(Varicella)</strong></h2>
				      		<h4 class="mt-4 mb-4">수두는 수두-대상포진 바이러스(Varicella-Zoster virus, VZV)에 의한</h4>
				      		<h6>
					      		일차 감염으로 전염력이 매우 강한 급성 감염질환입니다. 급성의 미열로 시작되고 전신적으로 가렵고 발진성 수포가 발생하는 질환입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					수두는 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					수두 바이러스는 호흡기 분비물 등의 비말(미세 침방울, droplet)을 통해 호흡기로 감염되거나 피부 병변 수포액에 직접 접촉함으로써 사람에서 사람으로 전파될 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수두의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					발진, 발열, 두통, 식욕상실 등의 증상이 흔하게 나타날 수 있습니다.<br>
					      					가려움을 동반한 수포성 발진이 보통 머리에서 나타나, 이후 몸통, 사지로 퍼지는 양상으로 나타나며, 수포는 가피를 남기고 호전됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수두의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					수두는 특별한 치료제 없이 대증적인 치료만으로 호전 경과를 밟습니다. 해열제로는 라이증후군을 일으킬 수 있는 아스피린 대신 아세트아미노펜을 사용합니다.<br>
					      					환자의 나이, 이전 건강상태, 감염의 범위와 치료시기에 따라 중등도 이상의 심한 수두 질환의 위험이 있는 경우에는 항바이러스제의 투여가 필요합니다.
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">라이증후군(Reye syndrome)</li>
						      					 	<li class="corylist" style="list-style-type: none;">
						      					 		<p>원인은 알려지지 않았으나, 인플루엔자나 수두 등 바이러스 질환에 걸린 소아에게서 발생하며 아스피린 등 살리실산제제의 복용과 관련이 있을 것으로 추측됨.
						      					 			급성 뇌증과 함께 간의 지방병변을 초래하는 질환으로 심한 구토와 함께 경련, 혼수, 사망에 이를 수 있음
						      					 	</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수두는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>수두 예방접종을 통해 수두를 예방할 수 있습니다.
					      					<br>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>
				      						<ul>
					      					 	<li class="corylist">모든 영유아에게 생후 12~15개월에 1회 접종</li>
				      						</ul>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수두 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					수두 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 이상반응 중 가장 흔한 것은 접종부위의 통증, 발적이나 부어오름 등이며, 전신 이상반응으로 발열, 수두 유사 발진이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
				
					      <div class="tab-pane fade" id="list-settings9" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>A형간염(Hepatitis A)</strong></h2>
				      		<h4 class="mt-4 mb-4">A형간염은 A형간염 바이러스(Hepatitis A virus, HAV)에 의하여</h4>
				      		<h6>
					      		발생하는 간염으로 환경 및 위생개선과 적절한 예방조치로 예방이 가능합니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					A형간염은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					A형간염은 분변-경구 경로로 전파되며, 대부분 사람에서 사람으로 직접적으로 전파되거나 분변에 오염된 물이나 음식물을 섭취함으로써 간접적으로 전파되기도 합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">A형간염의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					전형적인 증상은 고열, 권태감, 식욕부진, 메스꺼움, 복통, 암갈색 소변, 황달 등으로 갑자기 발생합니다.<br>
					      					증상의 발현은 연령과 관련이 있어 6세 미만의 소아에서는 증상이 경하며 황달이 생기는 경우는 드물지만, 6세 이상의 소아나 성인에서는 대부분 간염의 증상이 생기며, 이 중 70% 이상에서 황달이 동반됩니다. 
					      					이러한 증상은 대체로 2개월을 넘지 않으나 10~15%에서는 6개월 이상 증상이 지속되거나 재발할 수 있습니다. 하지만 만성화되는 경우는 없습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">A형간염의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					A형간염은 특별한 치료법이 없으며 대증요법으로 치료합니다.
					      					
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">A형간염은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>A형간염 예방접종을 통해 A형간염을 예방할 수 있습니다.
					      					<br>
					      					<span class="badge text-bg-success">접종대상</span><br>
				      						<p>12~23개월의 모든 소아
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">A형간염의 병력이나 백신 접종력이 없다면 권장되는 백신의 접종대상은 아래와 같습니다. 접종대상자 중 만 40세 미만에서는 항체검사 없이 백신을 접종하고, 만 40세 이상에서는 항체검사를 실시하여 항체가 없는 경우에 접종하는 것을 권장합니다.</li>
						      					 	<li class="corylist" style="list-style-type: none;">1)A형간염 바이러스의 감염 위험이 높은 상황</li>
						      					 	<li class="corylist" style="list-style-type: none;">- A형간염의 유행지역으로의 여행자나 장기 체류자</li>
						      					 	<li class="corylist" style="list-style-type: none;">- 남성 동성애자</li>
						      					 	<li class="corylist" style="list-style-type: none;">- 불법 약물 남용자</li>
						      					 	<li class="corylist" style="list-style-type: none;">- 직업적으로 노출될 위험이 있는자(실험실 종사자, 의료인, 군인 등)</li>
						      					 	<li class="corylist" style="list-style-type: none;">2)A형간염 바이러스에 감염되면 중증 질환으로 발전될 위험이 높은 상황</li>
						      					 	<li class="corylist" style="list-style-type: none;">- 면역저하자: 선천 또는 후천 면역결핍자, 사람면역결핍바이러스 감염자, 만성 신질환자(투석 중), 고형기관 및 조혈모세포 이식자, 면역저하 약제 및 생물학적 제제의 피치료자</li>
						      					 	<li class="corylist" style="list-style-type: none;">- 만성 간 질환자: B형 및 C형간염 감염자, 간경변증, 지방간, 알코올성 간질환, 자가면역 간염이 있는 자, alanine aminotranferase(ALT) 또는 aspartate aminotransferase(AST) 수치가 정상치의 2배 이상이거나 6개월 이상 지속적으로 증가한 자</li>
						      					 	<li class="corylist" style="list-style-type: none;">- 만 41세 이상</li>
						      					 	<li class="corylist" style="list-style-type: none;">3)기타</li>
						      					 	<li class="corylist" style="list-style-type: none;">- A형간염 감염 위험이 높거나 중증 질환의 위험이 높은 임신부</li>
						      					 	<li class="corylist" style="list-style-type: none;">- A형간염이 유행할 때 A형간염에 대한 면역력이 없는 자</li>
						      					 	<li class="corylist" style="list-style-type: none;">- A형간염 감염자와 접촉할 기회가 많은 직업을 가진 자</li>
					      						</ul>
					      					</div>
					      					<span class="badge text-bg-success">접종 시기</span><br>
					      					<ul>
					      						<li class="corylist">생후 12~23개월에 1차 접종 후, 6개월 이상 경과한 후에 2차 접종</li>
					      					</ul>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">A형간염  예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					A형간염 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 이상반응 중 가장 흔한 것은 접종 부위의 통증, 발적, 부종, 전신 권태감, 피로, 미열 등이 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings10" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>일본뇌염(Japanese Encephalitis (JE))</strong></h2>
				      		<h4 class="mt-4 mb-4">일본뇌염은 Flavivirus 속 일본뇌염 바이러스(Japanese encephalitis virus)에 의한</h4>
				      		<h6>
					      		인수공통감염병으로 작은빨간집모기(Culex tritaeniorhynchus)에 의해 감염되어 뇌염을 일으키는 질환입니다.<br>
					      		일단 일본뇌염에 걸리면 특별한 치료방법이 없으므로 백신 접종을 통한 예방이 최선입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					일본뇌염은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					일본뇌염 바이러스를 가진 "작은빨간집모기"에 물리면 감염됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
						      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">일본뇌염의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					일본뇌염 바이러스의 인체 감염은 대부분 무증상이며, 감염자의 약 250명 중 1명에서 임상증상을 나타내며, 열을 동반하는 가벼운 증상이나 바이러스성 수막염으로 이행되기도 하고 드물게 뇌염으로까지 진행될 수 있습니다.
					      					뇌염으로 진행된 경우 약 30%의 치명률을 보입니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">일본뇌염의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					일본뇌염에 대한 특이적인 치료법은 없고 호흡장애, 순환장애, 세균감염 등에 대해서는 보존적인 치료가 필요합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">일본뇌염은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>일본뇌염 예방접종을 통해 일본뇌염을 예방할 수 있습니다.
					      					<ul>
					      						<li class="corylist" style="list-style-type:none;">1)불활성화 백신</li>	 
					      					</ul>	
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist">기초접종 : 생후 12~23개월에서 1개월 간격으로 2회 접종</li>
					      					 	<li class="corylist">추가접종 : 생후 24~35개월(2차 접종 11개월 후). 만6세, 만12세에 각각 1회 접종</li>
				      						</ul>
				      						<ul>
					      						<li class="corylist" style="list-style-type:none;">2)약독화 생백신</li>	 
					      					</ul>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>		
				      						<ul>
					      					 	<li class="corylist">기초접종 : 생후 12~23개월에 1회 접종하고, 1차 접종 12개월 뒤 2차 접종</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">일본뇌염 불활성화 백신과 약독화 생백신의 교차접종은 권장하지 않음</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">일본뇌염 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					일본뇌염 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 이상반응 중 가장 흔한 것은 접종 부위의 발적, 통증과 주사부위 부어오름 및 발열, 발진이며, 아주 드물게 중추신경계 이상반응이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					      
					      
					      <div class="tab-pane fade" id="list-settings11" role="tabpanel" aria-labelledby="list-settings-list">
						      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>사람유두종바이러스(Human papillomavirus (HPV)) 감염증</strong></h2>
					      		<h4 class="mt-4 mb-4">사람유두종바이러스는 생식기 감염을 일으키는</h4>
					      		<h6>
						      		가장 흔한 원인 병원체 중 하나로, 고위험군 HPV 감염과 관련 있는 암으로는 자궁경부암, 질암, 외음부암, 음경암, 항문암, 구강암, 구인두암 등이 있고 저위험군 HPV 감염과 관련 있는 질환으로는 
						      		생식기 사마귀, 재발성 호흡기 유두종 등이 있습니다.
					      		</h6>
					      		<br>
					      		<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">
						      					사람유두종바이러스는 어떻게 전파되나요?
						      				</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					사람유두종바이러스는 주로 감염된 사람과의 성접촉을 통해 전파됩니다.
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
							      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">사람유두종바이러스 감염이 일으키는 질병은 무엇인가요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					사람유두종바이러스 감염은 대부분 증상이 없고, 여성 생식기에 약 6~12개월간 유지되었다가 자연적으로 소멸되지만, 
						      					지속적인 HPV 감염은 자궁경부암, 자궁경부 전암병변, 질암과 외음부암, 항문 및 생식기 사마귀와 호흡기에 생기는 유두종 등의 다양한 임상질환을 일으킵니다.
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">사람유두종바이러스 감염의 치료는 어떻게 하나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					사람유두종바이러스 감염 자체를 치료할 수 있는 방법은 없으며 사람유두종바이러스로 인한 질병의 종류에 따라 치료법이 달라집니다.
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">사람유두종바이러스 감염증은 어떻게 예방하나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					<p>사람유두종바이러스 감염증 예방접종을 통해 백신에 포함된 유형에 의한 사람유두종바이러스 감염을 예방할 수 있습니다.
						      					<span class="badge text-bg-success">사람유두종바이러스 감염증 백신</span>
						      					<div>
						      						우리나라에서 사용되는 사람유두종바이러스 감염증 백신은 세가지 종류로 가다실(4가), 서바릭스(2가), 가다실(9가)가 있으며,<br>
						      						<b>국가예방접종을 통해 지원되는 백신은 가다실(4가), 서바릭스(2가) 두 가지 종류입니다.</b>
						      					</div>
						      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>	
					      						<ul>
						      					 	<li class="corylist">가다실(4가)</li>
						      					 	<li class="corylist" style="list-style-type:none;">- 만 9∼14세 연령에서 첫 접종시 6~12개월 간격으로 2회 접종</li>	 
						      					 	<li class="corylist" style="list-style-type:none;">- 만 15∼26세 이상 연령에서 첫 접종시 0, 2, 6개월 간격으로 3회 접종</li>
					      						</ul>
					      						<ul>
						      					 	<li class="corylist">서바릭스(2가)</li>
						      					 	<li class="corylist" style="list-style-type:none;">- 만 9∼14세 연령에서 첫 접종시 6~12개월 간격으로 2회 접종</li>	 
						      					 	<li class="corylist" style="list-style-type:none;">- 만 15∼25세 연령에서 첫 접종시 0, 1, 6개월 간격으로 3회 접종</li>
					      						</ul>
					      						<ul>
						      					 	<li class="corylist">가다실(9가)</li>
						      					 	<li class="corylist" style="list-style-type:none;">- 만 9∼14세 연령에서 첫 접종시 6~12개월 간격으로 2회 접종</li>	 
						      					 	<li class="corylist" style="list-style-type:none;">- 만 15~45세(남성의 경우 15∼26세) 연령에서 첫 접종시 0, 2, 6개월 간격으로 3회 접종</li>
					      						</ul>
						      					<div class="text-bg-light p-3">
						      						<ul>
							      					 	<li class="corylist">단, 2회 접종으로 종료되는 연령(만 9~14세)에 접종을 시작한 경우, 접종이 지연되더라도 처음부터 다시 접종을 하거나 추가 접종을 할 필요는 없으며, 총 2회 접종으로 완료</li>
							      					 	<li class="corylist">사람유두종바이러스 감염증 예방접종 시에는 동일한 백신으로 접종하도록 권장</li>
						      						</ul>
						      					</div>
						      				</td>
						      			</tr>
						      		</tbody>
						      	</table>
						      	
						      	<table class="table">
						      		<thead>
						      			<tr>
						      				<th class="table-primary">사람유두종바이러스 감염증 예방접종 후 이상반응에는 무엇이 있나요?</th>
						      			</tr>
						      		</thead>
						      		<tbody>
						      			<tr>
						      				<td>
						      					사람유두종바이러스 감염증 예방접종 후 접종부위 통증, 부어오름, 발적, 두드러기 등의 국소반응 또는 발열, 메스꺼움, 근육통 등의 전신반응이 나타날 수 있지만 대부분 가볍고 수일 내에 회복됩니다.
						      					
						      					<div class="text-bg-light p-3">
						      						<ul>
							      					 	<li class="corylist">
								      					 	청소년 및 젊은 성인들에서 백신 접종 후 통증 또는 심한 긴장으로 인해 일시적으로 정신을 잃고 넘어질 수 있지만, 이는 다른 예방접종 후에도 발생할 수 있는 상황으로 충분히 예방 가능합니다. 
								      					 	접종 시 등받이가 있는 의자에 앉거나 누워서 접종 받고, 예방접종 후 20~30분간 의료기관에 앉아 있거나 누워서 경과를 관찰합니다.
							      					 	</li>
						      						</ul>
						      					</div>
						      				</td>
						      			</tr>
						      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings12" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>인플루엔자(Influenza (Flu))</strong></h2>
				      		<h4 class="mt-4 mb-4">인플루엔자는 인플루엔자 바이러스(Influenza virus)에 의한</h4>
				      		<h6>
					      		감염병으로 매년 겨울철에 유행하여 고열과 함께 기침 등의 호흡기 증상을 일으키는 질환입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					인플루엔자는 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					인플루엔자 환자가 기침이나 재채기를 할 때 분비되는 호흡기 비말을 통해서 사람에서 사람으로 전파됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">인플루엔자의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					갑작스러운 발열(38℃ 이상), 두통, 근육통, 피로감 등의 전신 증상과 함께 인두통, 콧물, 코막힘 및 기침 등이 인플루엔자의 흔한 증상입니다.<br>
					      					소아의 경우 오심, 구토 및 설사 등의 소화기 증상이 동반될 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">인플루엔자의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					안정을 취하고 수분 섭취를 하고, 필요에 따라 해열진통제 등을 사용하는 지지요법으로 충분히 호전됩니다.<br>
					      					인플루엔자에 의한 합병증 발생의 위험이 높은 고위험군은 인플루엔자 항바이러스제가 유용하게 사용될 수 있으나 인플루엔자 증상 발현 후 48시간 이내 투약하는 경우에 
					      					증상을 완화시키거나 이환기간을 단축시키는 효과가 있습니다. 항바이러스제 사용여부는 담당의사와 상의 후 결정하여야 합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">인플루엔자는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>인플루엔자 예방접종을 통해 인플루엔자를 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>	
				      						<ul>
					      					 	<li class="corylist">우선접종 권장대상</li>
					      					 	<li class="corylist" style="list-style-type:none;">1)예방접종의 실시기준 및 방법(질병관리청고시 제2023-5호)</li>	 
					      					 	<li class="corylist" style="list-style-type:none;">
					      					 		①인플루엔자 바이러스 감염 시 합병증 발생이 높은 대상자(고위험군)
					      					 		<ul>
					      					 			<li class="corylist" style="list-style-type:none">- 65세 이상 노인</li>
					      					 			<li class="corylist" style="list-style-type:none">- 생후6개월~59개월 소아</li>
					      					 			<li class="corylist" style="list-style-type:none">- 임신부</li>
					      					 			<li class="corylist" style="list-style-type:none">- 만성폐질환자, 만성심장질환자(단순 고혈압 제외)</li>
					      					 			<li class="corylist" style="list-style-type:none">- 만성질환으로 사회복지시설 등 집단 시설에서 치료, 요양, 수용 중인 사람</li>
					      					 			<li class="corylist" style="list-style-type:none">- 만성간질환자, 만성신질환자, 신경-교육 질환, 혈액-종양 질환, 당뇨 환자, 면역저하자(면역억제제 복용자), 60개월~18세의 아스피린 복용자</li>
					      					 			<li class="corylist" style="list-style-type:none">- 50~64세 성인</li>
					      					 		</ul>
					      					 	</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">50~64세 성인은 인플루엔자 합병증 발생의 고위험 만성질환을 갖고 있는 경우가 많으나 예방접종률이 낮아 포함된 대상으로 65세 이상 노인과 구분</li>
					      						</ul>
					      					</div>
				      						<ul>
					      					 	<li class="corylist" style="list-style-type:none;">
					      					 		2)사스 및 조류인플루엔자 대응 정책에 따라 대응기관 종사자 및 관련 업계 종사자도 인플루엔자 백신 우선접종 권장
					      					 	</li>
					      					 	<li class="corylist" style="list-style-type:none;">
					      					 		3)코로나19 대응과 관련한 종사자도 인플루엔자 백신 우선 접종 권장
					      					 	</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종시기</span><br>
				      						<ul>
					      					 	<li class="corylist">매년 10~12월</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종횟수 및 용량</span><br>
				      						<ul>
					      					 	<li class="corylist">생후 6개월 이상~만 9세 미만 소아: 1~2회* 근육주사</li>
					      					 	<li class="corylist">만 9세 이상 소아 및 성인: 과거 접종력과 상관없이 1회 접종
					      					 		<ul>
					      					 			<li class="corylist" style="list-style-type:none;">*인플루엔자 예방접종을 처음 받는 경우(또는 접종력을 모르는 경우) 최소 4주 간격으로 2회 접종</li>
					      					 		</ul>
					      					 	</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">우리나라에서 사용되는 인플루엔자 백신은 주사용(불활성화 백신)이 있습니다.</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">인플루엔자 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					인플루엔자 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 접종부위 국소 이상반응으로 발적, 통증 등이 발생할 수 있으며, 전신 이상반응으로 발열, 무력감, 근육통, 관절통, 두통 등이 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings13" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>장티푸스(Typhoid Fever)</strong></h2>
				      		<h4 class="mt-4 mb-4">장티푸스는 장티푸스균(Salmonella Typhi)의 파종감염에 의해 발생하는</h4>
				      		<h6>
					      		급성 전신성 열성질환으로 상하수도 시설이 미비한 개발도상국에서 지속적으로 유행이 되는 질환입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					장티푸스는 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					환자나 보균자의 소변이나 분변으로 오염된 식수나 음식을 섭취 시 감염이 되며 오염된 하천에서 자란 갑각류나 어패류, 배설물이 묻은 과일 등을 통해 감염됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">장티푸스의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					3~60일(평균 8~14일) 정도의 잠복기를 지나 환자는 지속적인 발열과 두통, 오한, 기침, 식은땀, 식욕부진, 근육통, 권태감 등이 있으며, 발병 초기(1주 말)에 몸통에 일시적으로 피부발진(장미진, rose spot)이 나타날 수 있고, 
					      					변비, 설사 등도 나타납니다. 설사는 어린 소아에서 더 흔하며 변비는 나이가 많은 소아와 성인에게 주로 발생합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">장티푸스의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					일반적으로 충분한 휴식, 수액과 전해질 균형 유지, 적절한 식이를 제공하고, 항생제 투여로 합병증을 예방할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">장티푸스는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>장티푸스 예방접종을 통해 장티푸스를 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>	
				      						<ul>
					      					 	<li class="corylist">위험요인 및 접종환경 등을 고려하여 제한적으로 고위험군을 대상으로 접종 권장</li>
					      					 	<li class="corylist" style="list-style-type:none;">- 장티푸스 보균자와 밀접하게 접종하는 사람(가족 등)</li>	 
					      					 	<li class="corylist" style="list-style-type:none;">- 장티푸스가 유행하는 지역으로 여행하는 사람이나 체류자</li>	 
					      					 	<li class="corylist" style="list-style-type:none;">- 장티푸스균을 취급하는 실험실 요원</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist">불활성화 백신 : 만 2세 이상에서 1회 접종</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">2∼5세 미만 소아의 경우 역학적 배경과 장티푸스에 노출될 위험성을 감안하여 결정</li>
					      						</ul>
					      					</div>
					      					<ul>
					      					 	<li class="corylist">경구용 생백신: 만 5세 이상에서 격일로 3회(1, 3, 5일) 투여</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">위험환경에 지속적으로 노출 시 3년마다 추가접종</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">장티푸스 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					장티푸스 예방접종 후에 생길 수 있는 이상반응은 실제로 드뭅니다. 불활성화 백신의 경우 접종부위 통증, 발열, 부기, 발적 등이 있으며, 
					      					성인에 비해 소아에서 증상이 경미합니다. 경구용 생백신의 경우 복부팽만, 식욕부진, 소화불량, 무력감 등이 나타날 수 있으며, 설사, 구역, 구토, 피부발진 등이 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings14" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>신증후군출혈열(Hemorrhagic Fever with renal Syndrome)</strong></h2>
				      		<h4 class="mt-4 mb-4">신증후군출혈열(유행성출혈열)은</h4>
				      		<h6>
					      		고열, 혈소판 감소증, 신부전 등을 특징으로 하는 급성 열성 질환으로 Bunyaviridae과의 Hantavirus 속에 포함되는 여러 종의 바이러스에 의한 설치류 매개 인수공통감염병입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					신증후군출혈열은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					바이러스가 포함된 설치류의 배설물이 에어로졸의 형태로 호흡기를 통해 유입되어 발생하거나 드물게 설치류에게 물린 상처를 통해 전염됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">신증후군출혈열의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					잠복기는 9~35일(평균 약 2~3주)이며 갑작스러운 발열, 출혈경향, 요통, 신부전이 특징인 질환입니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">신증후군출혈열의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					치료를 위한 특이요법은 없고 임상경과 시기별로 적절한 보조요법(혈압상승제 투여, 수액요법, 알부민 정맥주사 그리고 신부전 발생 시 투석 치료 등)을 실시하며, 치료에 앞서 출혈이나 쇼크의 발생을 감소시키기 위해 절대 안정이 필요합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">신증후군출혈열은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<p>신증후군출혈열 위험지역에서 야외 노출을 최소화하는 것이 중요하며 신증후군출혈열 예방접종을 통해 신증후군출혈열을 예방할 수 있습니다.<br>
					      					<span class="badge text-bg-success">접종대상</span><br>	
				      						<ul>
					      					 	<li class="corylist">만 19세 이상의 성인으로 다음의 대상자 중 위험요인 및 접종환경 등을 고려하여 제한적으로 접종 권장</li>
					      					 	<li class="corylist" style="list-style-type:none;">- 군인 및 농부 등 직업적으로 신증후군출혈열 바이러스에 노출될 위험이 높은 집단</li>	 
					      					 	<li class="corylist" style="list-style-type:none;">- 신증후군출혈열 바이러스를 다루거나 쥐 실험을 하는 실험실 요원</li>	 
					      					 	<li class="corylist" style="list-style-type:none;">- 야외활동이 빈번한 사람 등 개별적 노출 위험이 크다고 판단되는 자</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist">1개월 간격으로 2회 기초 접종하고, 12개월 뒤에 1회 추가 접종(즉, 0, 1, 13개월 일정으로 3회에 걸쳐 접종)</li>
				      						</ul>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">신증후군출혈열 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					신증후군출혈열 예방접종 후에 생길 수 있는 이상반응은 대개 경미하며, 일상생활에 지장을 줄 정도는 아닌 것으로 보고되고 있습니다.<br>
					      					국소 이상반응으로 접종 후 가려움증, 색소침착, 발적, 통증, 종창 등이 있으며, 전신 이상반응으로 발열, 권태감, 구역질 등이 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings15" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>로타바이러스 감염증(Rotavirus)</strong></h2>
				      		<h4 class="mt-4 mb-4">로타바이러스는 영유아에게서 발생하는 위장관염의 흔한 원인으로</h4>
				      		<h6>
					      		감염 시 구토, 설사, 발열, 복통 등의 증상이 나타나게 됩니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					로타바이러스는 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					로타바이러스는 분변-경구 경로로 전파되며, 대부분 사람에서 사람으로 직접적으로 전파되나 분변에 오염된 물건이나 음식물, 호흡기를 통해서도 간접적으로 전파되기도 합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">로타바이러스 감염에 의한 위장관염의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					약 2일 정도의 잠복기를 거쳐 구토, 설사, 발열 등의 증상이 나타납니다.<br>
					      					5세까지 대부분의 소아는 로타바이러스에 감염되며, 심한 증상은 주로 4~36개월 연령의 소아에게 일어납니다. 신생아는 태반을 통해 전달된 항체가 심한 증상 발생을 예방하여 이 시기에 감염되면 대부분 증상이 없거나 경미합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">로타바이러스 감염에 의한 위장관염의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					로타바이러스 위장관염은 특별한 치료법이 없으며 설사나 구토, 발열로 인한 탈수 및 전해질의 불균형이 문제가 될 수 있으므로 수액보충이나 전해질 불균형을 교정하는 등 환자의 상태에 따라 대증요법으로 치료합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">로타바이러스 감염에 의한 위장관염은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<div>
						      					로타바이러스 감염증 예방접종을 통해 로타바이러스 감염에 의한 위장관염을 예방할 수 있습니다.<br>
						      					로타바이러스 감염증 예방접종은 2023년부터 필수예방접종 대상 감염병에 포함되었으며, 예방접종의 효과 등을 고려하여 의사와 상의한 후 접종 여부를 결정하도록 합니다.
					      					</div>
					      					<span class="badge text-bg-success">로타바이러스 백신</span><br>	
				      						<ul>
					      					 	<li class="corylist">우리나라에서 사용되는 로타바이러스 백신은 경구용 생백신으로 두 가지 종류(로타텍, 로타릭스)가 있습니다.</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist">5가 백신(로타텍) : 생후 2, 4, 6개월에 3회 접종</li>
					      					 	<li class="corylist">1가 백신(로타릭스) : 생후 2, 4, 6개월에 2회 접종</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
				      						<ul>
					      					 	<li class="corylist">로타바이러스 백신은 생후 15주 0일 이후에는 1차 접종을 시작하지 않으며, 최대 생후 8개월 0일까지 접종 완료</li>
					      					 	<li class="corylist">로타바이러스 감염증 예방접종 시에는 동일 제조사의 백신으로 접종</li>
				      						</ul>
				      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">로타바이러스 감염증 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					로타바이러스 감염증 예방접종 후 발열, 설사, 구토, 혈변 등이 있을 수 있으나 대부분 경미하며, 매우 드물게 장겹침증이 발생할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings16" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>수막구균(Neisseria meningitidis)</strong></h2>
				      		<h4 class="mt-4 mb-4">수막구균 감염증은 수막구균(Neisseria meningitidis)에 의한</h4>
				      		<h6>
					      		급성 감염병으로, 주로 수막염과 패혈증을 일으키는 중증 질환입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					수막구균은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					환자나 건강한 보균자의 코나 입의 점액에 있던 수막구균이 작은 수포 또는 직접 접촉을 통해 전파됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수막구균 감염증의 증상은 무엇인가요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					수막구균은 수막염과 패혈증, 기타 감염을 일으킵니다. 수막구균에 의한 수막염은 두통, 발열, 경부 경직, 오심, 구토 등이 급격히 시작하며, 더 진행되면 의식이 혼탁해집니다.<br>
					      					수막구균 패혈증은 수막염의 증상이 없으면서 혈액에서 수막구균이 발견되는 경우로 피부에 출혈소견이 동반되기도 하며, 발병 24시간 이내에 사망하기도 합니다.<br>
					      					기타 감염으로 폐렴, 관절염, 후두개염, 중이염, 심낭염 등이 있으나 수막구균 감염증의 특징적인 증상 없이 해당 부위 검체에서 수막구균이 확인된 경우입니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수막구균 감염증의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					빠르게 진행하는 세균 감염이므로 항생제 치료가 중요합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수막구균 감염증은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<div>
						      					수막구균 예방접종을 통해 예방이 가능합니다.<br>
						      					수막구균 예방접종은 필수예방접종 대상 감염병에 포함되지 않으며, 수막구균 감염 위험이 높은 대상자에게 접종이 권고되므로 의사와 상의한 후 접종여부를 결정하도록 합니다.
					      					</div>
					      					<span class="badge text-bg-success">접종대상</span><br>	
				      						<ul>
					      					 	<li class="corylist">보체 결핍</li>
					      					 	<li class="corylist">비장 절제 등의 해부학적 또는 기능정 무비증</li>
					      					 	<li class="corylist">HIV 감염증</li>
					      					 	<li class="corylist">신입 훈련병</li>
					      					 	<li class="corylist">수막구균을 다루는 실험실 종사자</li>
					      					 	<li class="corylist">수막구균 유행지역 여행자 또는 체류자</li>
					      					 	<li class="corylist">소속 집단 또는 지역사회 내 유행 시</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist">멘비오(Menveo): 생후 2개월~55세 이하</li>
					      					 	<li class="corylist">메낙트라(Menactra): 생후 9개월 ~ 55세 이하</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">접종시기 및 접종횟수 등 세부사항은 접종기관의 의사와 상담하시기 바랍니다.</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">수막구균 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					수막구균 예방접종 후에 생길 수 있는 국소 이상반응에는 접종부위 발적, 부종, 동통이 있으며, 전신 이상반응으로 미열, 감각 이상, 무기력 등이 나타날 수 있습니다.
					      					<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">
							      					 	청소년 및 성인에서 백신 접종 후 통증 또는 심한 긴장으로 인해 일시적으로 실신하는 경우가 있을 수 있으나, 이는 다른 예방접종 후에도 발생할 수 있으며 충분히 예방 가능합니다. 
							      					 	발생 시 넘어지면서 다칠 수 있으므로, 예방접종 후 20~30분 간 접종기관에 앉아있거나 누워있도록 합니다.
						      					 	</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings17" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>대상포진(Herpes zoster)</strong></h2>
				      		<h4 class="mt-4 mb-4">대상포진은 피부분절을 따라서 수포성 발진이 발생하는 질환으로</h4>
				      		<h6>
					      		수두-대상포진바이러스(Varicella-zoster virus, VZV)의 일차 감염 후 감각신경절에 잠복해 있던 바이러스가 재활성화되어 발생하는 질환입니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					대상포진은 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					대상포진의 수포에는 VZV가 있기 때문에 VZV에 대한 면역력이 없는 사람이 대상포진 환자와 접촉하는 경우 VZV가 재활성되면서 수두를 일으킬 수 있습니다. 
					      					국소적인 대상포진의 경우 수포가 생기기 시작할 때부터 모든 병소에 가피가 생길 때까지 전파가능성이 있으며 대개 병소와 직접 접촉에 의해 전파됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					대상포진의 증상은 무엇인가요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					발진과 수포가 등신경뿌리 신경절이 분포하는 편측에 국한적으로 발생하며, 해당 부위 심한 통증과 지각 이상이 동반될 수 있으며, 
					      					특이하게 대상포진과 안면신경마비나 내이신경증상이 동반하는 람지-헌트 증후군(Ramsay-Hunt syndrome)이 나타날 수 있습니다. 
					      					대상포진의 합병증으로 가장 문제가 되는 것은 대상포진 후 신경통으로 연령이 많을수록 발생 빈도가 높습니다. 소아에게 대상포진은 흔하지 않으며 발생하는 경우에도 증상이 경미합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">대상포진의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					성인의 경우 항바이러스제를 투여하면 증상의 경감과 치료기간의 단축, 합병증 감소를 기대할 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">대상포진은 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<div>
						      					대상포진 예방접종을 통해 예방이 가능하나 대상포진 예방접종은 필수예방접종 대상 감염병에 포함되지 않습니다.
					      					</div>
					      					<span class="badge text-bg-success">접종대상 및 접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist" style="list-style-type: none;">- 약독화 생백신(종류: 조스타박스, 스카이조스터) : 만 50세 이상의 성인</li>
					      					 	<li class="corylist" style="list-style-type: none;">
					      					 		- 재조합 백신(종류: 싱그릭스)
					      					 		<ul>
					      					 			<li class="corylist" style="list-style-type: none;">
					      					 				: 만 50세 이상 성인, 만 18세 이상에서 질병 혹은 치료로 인한 면역저하 또는 면역억제로 인하여 대상포진의 위험이 높거나 높을 것으로 예상되는 사람<br>
					      					 				(예: 자가조혈모세포이식자, 고형암 환자, 혈액암 환자, 고형장기 이식 환자)
					      					 			</li>
					      					 		</ul>
					      					 	</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">
						      					 	대상포진을 앓은 후 대상포진 백신 접종의 적절한 시기는 약독화 생바이러스백신의 경우 회복 후 최소 6∼12개월이 경과한 후 접종하는 것을 권장하고, 
						      					 	대상포진 재조합백신의 경우 명시된 기간은 없지만 급성기 증상이 있는 환자에게는 접종하지 않음.
						      					 	</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">대상포진 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					대상포진 예방접종 후 접종 부위 발적, 통증, 부종과 같은 국소반응이 가장 흔하게 나타납니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
				
					      <div class="tab-pane fade" id="list-settings18" role="tabpanel" aria-labelledby="list-settings-list">
					      	<h2 class="border-bottom border-2 border-secondary-subtle pb-3 mt-4 pt-5 mb-0"><strong>엠폭스(MPOX)</strong></h2>
				      		<h4 class="mt-4 mb-4">엠폭스(MPOX)는 원숭이두창 바이러스(Monkeypox virus)에 감염되어 발생하는</h4>
				      		<h6>
					      		급성 발열, 발진성 질환으로 2022년 5월 이후 유럽과 북미를 중심으로 다수국가에서 풍토병 지역과 연관성이 없는 감염사례가 이례적으로 유행하여 환자가 증가하고 발생지역이 확대되고 있습니다.
				      		</h6>
				      		<br>
				      		<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					엠폭스는 어떻게 전파되나요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					엠폭스(원숭이두창)는 인수공통감염병으로 원숭이두창 바이러스에 감염된 사람, 감염된 동물(쥐, 다람쥐, 프레리도그와 같은 설치류 및 원숭이 등) 또는 오염된 물질에 접촉할 경우 감염될 수 있습니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">
					      					엠폭스의 증상은 무엇인가요?
					      				</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					발열, 오한, 림프절 부종, 피로, 근육통 및 요통, 두통, 호흡기 증상(인후통, 코막힘, 기침 등) 등 이 나타나는 증상 초기에는 감기와 유사하기도 하며 보통 1~4일 후에 발진이 나타납니다.<br>
					      					※ ‘22년 5월 이후 비풍토병 국가에서 유행 중인 사례는 발진 전 전구기(발열 등)가 없거나 발진 후에 전구기가 나타나기도 함.<br>
					      					특정부위(항문생식기)에 발진 수가 5개 미만으로 나타나기도 하고 항문궤양, 구강 점막 궤양, 항문직장 통증, 안구 통증, 이급후증 등을 동반하는 사례가 다수 보고되고 있음.<br>
					      					발진은 얼굴, 입, 손, 발, 가슴, 항문생식기 근처 등에서 나타날 수 있습니다.<br>
					      					※ 발진은 대체로 반점부터 시작하여 여러 단계로(반점→구진→수포(물집)→농포(고름)→가피(딱지))로 진행되며 초기에는 뾰루지나 물집처럼 보일 수 있으며, 통증과 가려움증 동반하기도 함.<br>
					      					'22년 이후 유럽과 북미를 중심으로 발생 중인 서아프리카 계통 엠폭스(원숭이두창)는 대부분 2~4주 후 자연 치유되며, 치명률은 1% 미만으로 보고되어 있습니다.<br>
					      					※ 면역저하자, 8세 미만 소아, 습진 병력, 임신 및 모유 수유자에서 중증도가 높을 수 있음.<br>
					      					※ 풍토병 국가를 중심으로 발생하는 중앙아프리카 계통 엠폭스(원숭이두창)의 치사율은 약 10%로 보고됨<br>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">엠폭스의 치료는 어떻게 하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					엠폭스(원숭이두창)에 감염된 경우, 대부분 경미하게 증상이 나타나고 2-4주 후 완치가 되는 것으로 보고되고 있으며 주로 대증적인 증상 완화 치료를 시행합니다. 
					      					다만, 고위험군(면역저하자, 소아, 임산부, 수유부, 기저질환자 등)에서 드물게 중증(출혈, 패혈증, 뇌염, 융합된 병변 등)으로 진행되거나, 합병증(이차세균감염, 심한 위염, 설사, 탈수, 기관지폐렴 등)이 발생할 수도 있으며, 
					      					폐렴과 같은 합병증이나 뇌(뇌염) 또는 눈에 감염이 일어난 경우에는 치명적일 수 있습니다.<br>
					      					엠폭스(원숭이두창) 진단검사 검사결과 양성으로 확인되면, 격리입원하여 증상에 따른 대증 치료를 받게 되는데, 의료진은 환자의 중증도와 사망 위험도를 고려하여, 필요시 항바이러스제같은 치료제를 투여하게 됩니다. 
					      					항바이러스제(테코비리마트)는 환자에게 기대되는 임상적 유익성이 위해성을 상회하는 경우에만 사용하게 되므로, 치료와 관련해서는 담당주치의와 상의가 필요합니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">엠폭스는 어떻게 예방하나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					<div>
						      					엠폭스 예방접종을 통해 엠폭스를 예방할 수 있습니다.<br>
												3세대 두창 백신은 두창과 엠폭스 모두에 대해 효과성이 입증되었으며, FDA(미국)와 EMA(유럽)에서는 두창과 엠폭스 백신으로 3세대 백신을 승인한 바 있습니다. 
												3세대 두창 백신은 약독화 비복제 백시니아 바이러스를 사용하지만 유전자 변형을 통해 복제할 수 없도록 만들어 부작용을 줄였습니다.
					      					</div>
					      					<span class="badge text-bg-success">접종대상</span><br>	
				      						<ul>
					      					 	<li class="corylist" style="list-style-type: none;">위험요인 등 고려하여 제한적으로 노출 가능성이 높은 고위험군을 대상으로 접종을 권장하고 있으며, 현재 일반 국민 접종은 대상이 아닙니다.</li>
					      					 	<li class="corylist" style="list-style-type: none;">- 노출 전 : 치료병상 의료진, 진단검사 실험실 요원, 역학조사관, 고위험군 등</li>
					      					 	<li class="corylist" style="list-style-type: none;">- 노출 후 : 역학조사 결과 관리대상 접촉자</li>
				      						</ul>
				      						<span class="badge text-bg-success">접종시기</span><br>	
				      						<ul>
					      					 	<li class="corylist" style="list-style-type: none;">4주 간격, 2회* 접종</li>
				      						</ul>
				      						<div class="text-bg-light p-3">
					      						<ul>
						      					 	<li class="corylist">
						      					 		과거 두창 백신을 접종한 경우, 1회 접종(78년 이전 출생자는 두창 백신 접종 가능성이 있으므로 팔에 접종 흔적 확인 필요)
						      					 	</li>
					      						</ul>
					      					</div>
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      	<table class="table">
					      		<thead>
					      			<tr>
					      				<th class="table-primary">엠폭스 예방접종 후 이상반응에는 무엇이 있나요?</th>
					      			</tr>
					      		</thead>
					      		<tbody>
					      			<tr>
					      				<td>
					      					백신 접종 후 예상 가능한 흔한 반응은 주사부위 통증, 발적, 부기 등이 있으나 대부분 며칠 후 자연 소실됩니다.
					      				</td>
					      			</tr>
					      		</tbody>
					      	</table>
					      </div>
					</div>
			</div>
		</div>
	</div>
</body>
</html>