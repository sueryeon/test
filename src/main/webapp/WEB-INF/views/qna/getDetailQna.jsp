<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    import="java.util.Date"
    import = "javax.servlet.http.HttpSession"
    import = "carezone.member.vo.MemberVO"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<c:set var="memVO" value="${memVO}"/>
<c:set var="adVO" value="${adVO}"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

<script type="text/javascript">
	
	//페이지 로딩 시 세션 아이디와 게시글 아이디 비교하기
	$(document).ready(function(){
		   // 댓글 가져오기
		   fn_allreply();
		   
		   var mid = "${memVO.mid}";
		   var qid = "${qnaVO.qid}";
		   var updateBtn = document.getElementById("updateBtn");
		   var deleteBtn = document.getElementById("deleteBtn");
		   var adminreply=document.getElementById("adminreply");
		   if(mid == qid){
			   updateBtn.style.display="block";
			   deleteBtn.style.display="block";
			   adminreply.style.display="none";
		   }
		   else{
			   updateBtn.style.display="none";
			   deleteBtn.style.display="none";
			   adminreply.style.display="block";
		   }

	});
	
	
	   function readURL(input){
		      if(input.files&&input.files[0]){
		         var reader=new FileReader();
		         reader.onload=function(e){
		            $('#preview').attr('src',e.target.result);
		         }
		         reader.readAsDataURL(input.files[0]);
		      }
		   }
		   
	   //이전
		   function backToList(obj){
		      obj.action = "${contextPath}/qna/getlistQna.do";
		      obj.submit();
		   }
		 
	   //글수정
		   function fn_update_qna(obj){
		      
			   	document.getElementById("qtitle").disabled = false;
				document.getElementById("qcontent").disabled = false;
				document.getElementById("i_qimgFile").disabled=false;
				var updateBtn = document.getElementById("updateBtn");
				var deleteBtn = document.getElementById("deleteBtn");
				var qnaUpdate = document.getElementById("qnaUpdate");
				var qnaCancel = document.getElementById("qnaCancel");
				
				updateBtn.style.display="none";
				deleteBtn.style.display="none";
				qnaUpdate.style.display="block";
				qnaCancel.style.display="block";
		   
		   }
	   
	   //수정취소
	   
	   function fn_backBoard(obj){
		document.getElementById("qtitle").disabled = true;
		document.getElementById("qcontent").disabled = true;
		document.getElementById("i_qimgFile").disabled=true;
		var updateBtn = document.getElementById("updateBtn");
		var deleteBtn = document.getElementById("deleteBtn");
		var qnaUpdate = document.getElementById("qnaUpdate");
		var qnaCancel = document.getElementById("qnaCancel");
		
		updateBtn.style.display="block";
		deleteBtn.style.display="block";
		qnaUpdate.style.display="none";
		qnaCancel.style.display="none";
	}
	   //글수정
	   function fn_modify_article(qarticleno){
		var url = "${contextPath}/qna/updateQna.do?qarticleno="+qarticleno;
	    // 파일 선택 여부 확인
	    var selectedFile = document.getElementById("i_qimgFile").files[0];
	    if (selectedFile=='null') {
	        // 파일 선택하지 않은 경우 기존 파일 이름 사용
	        document.getElementsByName("qimgfile")[0].value = "${qnaVO.qimgfile}";
	    }
		document.forms[0].action = url;
		document.forms[0].submit();
	 }
	   
		   //글삭제
		   function fn_delete_qna(obj){
		      
		      alert("삭제되었습니다.");
		      
		      var Qarticleno=${qnaVO.qarticleno};
		      obj.action = "${contextPath}/qna/deleteQna.do?qarticleno="+Qarticleno;
		      obj.submit();
		   }
		   
		   function fn_reply_qna(){      
		      var Qarticleno=${qnaVO.qarticleno};
		      var Qrecontent=$('#qrecontent').val();
		      
		      $.ajax({
		         type:"post",
		         url:"${contextPath}/qna/insertReplyQna.do",
		         data:{
		            'Qarticleno' : Qarticleno,
		            'Qrecontent' : Qrecontent
		         },
		         success:function(data,textStatus){
		        	 fn_allreply();
		         },
		         error:function(data,textStatus){
		            
		         },
		         complete:function(data,textStatus){
		        	 $('#qrecontent').val('');
		         }
		      });
		   }
		   
		   function fn_allreply(){
		      
		      var qre_article_no=${qnaVO.qarticleno};
		      
		      $.ajax({
		         type:"post",
		         dataType:"text",
		         async:true,
		         url:"${contextPath}/qna/getlistReplyQna.do",
		         data:{qrearticleno:qre_article_no},
		         
		         success:function(data,textStatus){
		            $('#listReply').html(data);
		         },
		         error:function(data,textStatus){
		            
		         },
		         complete:function(data,textStatus){
		        	 $('#qrecontent').val('');
		         }
		      });      
		   }
		   
		   function fn_modify(_qreplyno){
		      
		      var qreplyno=_qreplyno;
		      var qrecontent=document.getElementById("qrecontent"+qreplyno);
		      var modify=document.getElementById("modify"+qreplyno);
		      var update=document.getElementById("update"+qreplyno);
		      var back=document.getElementById("back"+qreplyno);
		      var Delete=document.getElementById("delete"+qreplyno);
		      
		      qrecontent.disabled=false;
		      modify.style.display="none";
		      update.style.display="block";
		      back.style.display="block";
		      Delete.style.display="none";
		   
		   }
		   

		   function fn_back(_qreplyno){
		      
		      var qreplyno=_qreplyno;
		      var qrecontent=document.getElementById("qrecontent"+qreplyno);
		      var modify=document.getElementById("modify"+qreplyno);
		      var update=document.getElementById("update"+qreplyno);
		      var back=document.getElementById("back"+qreplyno);
		      var Delete=document.getElementById("delete"+qreplyno);
		      
		      qrecontent.disabled=true;
		      modify.style.display="block";
		      update.style.display="none";
		      back.style.display="none";
		      Delete.style.display="block";
		      
		   }
		   
		   function fn_delete(_qreplyno){
		      
		      var qreplyno=_qreplyno
		      
		      $.ajax({
		         type:"post",
		         dataType:"text",
		         async:true,
		         url:"${contextPath}/qna/deleteReplyQna.do",
		         data:{qreply_no:qreplyno},
		      
		         success:function(data,textStatus){
		            alert("댓글이 삭제되었습니다.");
		            fn_allreply();
		         },
		         error:function(data,textStatus){
		            
		         },
		         complete:function(data,textStatus){
		            
		         }
		      });      
		      
		   }

		   function fn_update(_qreplyno){
		         
		      var qreplyno=_qreplyno;
		      var qrecontent=document.getElementById("qrecontent"+qreplyno);
		      var modify=document.getElementById("modify"+qreplyno);
		      var update=document.getElementById("update"+qreplyno);
		      var back=document.getElementById("back"+qreplyno);
		      var Delete=document.getElementById("delete"+qreplyno);
		      var qrecontent=$('#qrecontent'+qreplyno).val();
		      
		      qrecontent.disabled=true;
		      modify.style.display="block";
		      update.style.display="none";
		      back.style.display="none";
		      Delete.style.display="block";
		      
		      $.ajax({
		         type:"post",
		         dataType:"text",
		         async:true,
		         url:"${contextPath}/qna/updateReplyQna.do",
		         data:{
		            'qreplyno':qreplyno,
		            'qrecontent':qrecontent
		         },
		      
		         success:function(data,textStatus){
		            fn_allreply();
		            
		         },
		         error:function(data,textStatus){
		            
		         },
		         complete:function(data,textStatus){
		            alert("댓글이 수정되었습니다.");
		         }
		      });
		   }
</script>
<link rel="stylesheet" href="../resources/CSS/findBoard.css">
<title>게시글 수정</title>
</head>
<body>
	<jsp:include page="../nav.jsp"/>
	<div class="container-fluid p-3 pt-4 bg-light text-dark pb-5">
		<div class="wrap-container d-flex justify-content-between">
			<div class="left me-4" style="width: 20%;">
				<!-- 왼쪽 회원 서비스 -->
				<div class="boardform-leftwrap-container">
					<div class="boardleft-box">
						<div class="boardservice-box">
							<div class="boardservice form-control">
	                           커뮤니티
	                        </div>
	                        <div class="card board-service-box mt-2">
			                  	<ul class="list-group list-group-flush">
								    <li class="list-group-item a-boardform"><a class="board-alink" href="<%=contextPath%>/board/listBoards.do">게시판</a></li>
								    <li class="list-group-item a-qnaform"><a class="board-alink" href="<%=contextPath%>/qna/getlistQna.do">QnA</a></li>
							   </ul>
		                   </div>
                        </div>
                    </div>
                </div>
			</div>
             <!-- 오른쪽 -->
            <div class="right ms-4" style="width: 80%;" >
				<h3 class="border-bottom border-2 border-secondary-subtle text-start pb-3 mt-4 pt-5 mb-4"><strong>Q&A</strong></h3>
				<form name="QnaArticle" action="${contextPath}/" method="post" enctype="multipart/form-data">
					<input type="hidden" value="${qnaVO.qid }" id="qid" name="qid">
					<div class="mb-3">
					<label for="btitle" class="form-label">글 제목</label>
					  	<input type="text" class="form-control" id="qtitle" name="qtitle" value="${qnaVO.qtitle}" disabled>
					</div>
					<div class="mb-3">
					  <label for="bcontent" class="form-label">글 내용</label>
					  <textarea class="form-control" id="qcontent" name="qcontent" rows="3" disabled>${qnaVO.qcontent }</textarea>
					</div>
					<div class="mb-3">
						<c:choose>
							<c:when test="${not empty qnaVO.qimgfile && qnaVO.qimgfile !='null' }">
								<input type="hidden" name="qoriginalFile" value="${qnaVO.qimgfile}">
								<img class="preview" src="<%=contextPath%>/download.do?qarticleno=$${qnaVO.qarticleno}&qimgfile=${qnaVO.qimgfile}" height=300>
								<input type="file" class="form-control" name="bimgFile" id="i_bimgFile" value="${qnaVO.qimgFile}" disabled onchange="fn_readImg(this);">
							</c:when>
					  		<c:otherwise>
					  			<div id="tr_file_upload">
					  				<img class="preview" src="" height=300><br><br>
					  				<input type="hidden" name="qoriginalFile" value="${qnaVO.qimgfile}">
					  				<input type="file" class="form-control" name="qimgfile" id="i_qimgFile" value="${qnaVO.qimgfile}" disabled onchange="fn_readImg(this);">
					  			</div>
					  		</c:otherwise>
						</c:choose>
						<br>
					</div>
					<div class="d-flex">
						<input type=button value="수정하기" class="btn btn-primary me-2" id="updateBtn" onClick="fn_update_qna(this.form)" style="display:block;">
						<input type=button value="삭제하기" class="btn btn-primary me-2" id="deleteBtn" onClick="fn_delete_qna(this.form)" style="display:block;">
					
						<input type=button value="수정반영하기" class="btn btn-primary me-2" id="qnaUpdate" onClick="fn_modify_article(${qnaVO.qarticleno})" style="display:none;">
						<input type=button value="취소" class="btn btn-primary me-2" id="qnaCancel" onClick="fn_backBoard(this.form)" style="display:none;">
						
						<input type=button class="btn btn-primary" value="이전"  onClick="backToList(this.form)">
					</div>		
				</form>
			
				<div class="mb-3 mt-4" id="adminreply" style="display:none;">
					<input type="hidden" id="qrearticleno" name="qrearticleno" value="${qnaVO.qarticleno }">
					<input type="hidden" id="adid" name="adid" value="${adVO.adid}">
				  	<label for="qrecontent" class="form-label">관리자 : </label><input type="text" class="ms-2" value="${adVO.adid}" disabled>
				  	<div style="display: flex;" class="mt-2">
				  		<textarea class="form-control" id="qrecontent" name="qrecontent" rows="3"></textarea>
				  		<input type="button" class="btn btn-primary" value="등록" onClick="fn_reply_qna(this.form)">
				  	</div>
				</div>
				
				<div id="replyinsert" class="mb-3 mt-4"></div>
		    </div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>