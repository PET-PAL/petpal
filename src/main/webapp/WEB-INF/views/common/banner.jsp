<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a > img {
    	width: 50%;
    	height: 50%;
    	margin-top: 20px;
   		margin-bottom: 10px;
    	margin-left: 15px;
    	margin-right: 15px;
    	text-align: center;
	}
</style>
</head>
<body>

	<div style="position: fixed;right: 10px;top:20%; background-color: #F1FAF8; border-radius: 20px;">
                <ul>
                    <li><a href="${ pageContext.servletContext.contextPath }/views/user/mypage/adQna.jsp"><img src="${ pageContext.servletContext.contextPath }/resources/images/conversation.png" style="width: 100px; height: 100px;"></a></li>
                    <li style="text-align: center;">광고 문의</li>
                    <li><a href=""><img src="${ pageContext.servletContext.contextPath }/resources/images/adqna.png" style="width: 100px; height: 100px;"></a></li>
                    <li style="text-align: center;">불편 문의</li>
                    <li><a href="${ pageContext.servletContext.contextPath }/user/select/adsubmit"><img src="${ pageContext.servletContext.contextPath }/resources/images/clipboard.png" style="width: 100px; height: 100px;"></a></li>
                    <li style="text-align: center; margin-bottom: 20px;">광고 신청</li>
                </ul>
     </div>

</body>
</html>