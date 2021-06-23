<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 상세 페이지</title>
<style>
.table>tr>td{
	text-align: center;
}
</style>
<script src="${ pageContext.servletContext.contextPath }/ckeditor/ckeditor.js"></script>
	
</head>
<body>
	<jsp:include page="../../admin/common/header.jsp"></jsp:include> 
	
	<div class="row">
	    <div class="col-md-2"></div>
	    	<div class="col-md-8">
		        <h2 class="text-center">게시글 상세 보기</h2>
			        <form action="">
					
					<button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/views/admin/main/newsletterWrite.jsp'" style="border: 0 !important; outline: 0 !important;">
						<img src="${ pageContext.servletContext.contextPath }/resources/images/edit-button.png" style="width:50px; float: right; cursor:pointer;">
						
					</button>
			         <img alt="뉴스레터" src="${ pageContext.servletContext.contextPath }/resources/images/unnamed.gif" style="margin-left: 20%;">
			         <img alt="뉴스레터" src="${ pageContext.servletContext.contextPath }/resources/images/newslettersample.gif" style="margin-top:2px; margin-left: 20%;">
		        
		        	
			        
			        </form>
		    </div>
		</div>




	<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 
	
	</body>
</html>