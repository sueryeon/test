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
<c:set var="memVO" value="${memVO}"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
<link rel="stylesheet" href="../resources/CSS/findBoard.css">
<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		   // 댓글 가져오기
		   fn_allreply();
		   
		   var mid = "${memVO.mid}";
		   var qid = "${qnaVO.qid}";
		   var fn_update_qna = document.getElementById("fn_update_qna");
		   var fn_delete_qna = document.getElementById("fn_delete_qna");
		   
		   if(mid == bid){
			   fn_update_qna.style.display="block";
			   fn_delete_qna.style.display="block";
		   }
		   else{
			   updateBtn.style.display="none";
			   deleteBtn.style.display="none";
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
   
   function backToList(obj){
      obj.action = "${contextPath}/qna/getlistQna.do";
      obj.submit();
   }
   
   function fn_update_qna(obj){
      
      var Qarticleno=${qnaVO.qarticleno};
      obj.action ="${contextPath}/qna/updateQnaForm.do?qarticleno="+Qarticleno;
      obj.submit();
   
   }
   
   function fn_delete_qna(obj){
      
      alert("삭제되었습니다.");
      
      var Qarticleno=${qnaVO.qarticleno};
      obj.action ="${contextPath}/qna/deleteQna.do?qarticleno="+Qarticleno;
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
								    <li class="list-group-item a-boardform"><a class="board-alink" href="${contextPath}/board/listBoards.do">게시판</a></li>
								    <li class="list-group-item a-qnaform"><a class="board-alink" href="${contextPath}/qna/getlistQna.do">QnA</a></li>
							   </ul>
		                   </div>
                        </div>
                    </div>
                </div>
			</div>
             <!-- 오른쪽 -->
            <div class="right ms-4" style="width: 80%;" >
				<h3 class="border-bottom border-2 border-secondary-subtle text-start pb-3 mt-4 pt-5 mb-4"><strong>Q&A</strong></h3>
				<form name="QnaArticle" method="post" action="${contextPath}/" enctype="multipart/form-data">
					<table class="table table-borderless">
					  <tbody>
					    <tr class="border-bottom">
					      <th colspan="6" scope="row" class="fs-4"><input type="hidden" name="qarticleno">${qnaVO.qtitle}</th>
					    </tr>
					    <tr>
					    	<td colspan="6" class="text-end">작성자:<span>${qnaVO.qid}</span>작성일:<span>${qnaVO.qwritedate}</span></td>
					    </tr>
					    <c:if test="${not empty qnaVO.qimgfile&&qnaVO.qimgfile!='null'}">
					         <tr>
					            <td>
					            	<img class="preview" src="" height=300>
									<input type="hidden" name="originalFileName" value="${qnaVO.qimgfile}"/>
					            </td>
					         </tr>
					    </c:if>
					    <tr>
					     	<td colspan="6">${qnaVO.qcontent}</td>
					    </tr>
					    <tr>
					     	<td colspan="6" class="d-flex">
					     		<input type=button class="btn btn-primary me-2" value="이전" onClick="backToList(this.form)">
					     		<input type="button" id="qnaupdate" class="btn btn-primary me-2" value="글수정" onClick="fn_update_qna(this.form)">
		            			<input type="button" id="qnadelete" class="btn btn-primary me-2" value="글삭제" onClick="fn_delete_qna(this.form)">
					     	</td>
					    </tr>
					  </tbody>
					</table>

					<div class="mb-3 mt-4">
						<div id="adqnaReply" style="display:none;">
					   		<table>
					   			<tr>
							         <td width="150" align="center" bgcolor="#FF9933">
							            <input type="hidden" name="qrearticleno" id="qrearticleno" value="${qnaVO.qarticleno}"/> 관리자
							         </td>
							         <td>
							            <textarea rows="5" cols="80" name="qrecontent" id="qrecontent" style="resize:none"></textarea>
							         </td>
							         <td>
							            <input type=button class="btn btn-primary" value="등록" onClick="fn_reply_qna();">
							         </td>
					      	 	</tr>
					   		</table>
						</div>
					</div>
					
					<div id="listReply" style="display:none;"></div>
				</form>
		    </div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>