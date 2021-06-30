<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>PET-PAL</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/slick/slick.css"> 
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/slick/slick-theme.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/animate.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/iconfont.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/bootsnav.css">

        <!-- xsslider slider css -->


        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/xsslider.css">-->




        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css">
        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" />

        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">


        <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->


            <jsp:include page="../common/userHeader.jsp"/>
            <!--Home Sections-->

            <section id="message" class="message" style="width: 70%; margin: 0px auto;  margin-bottom: 40px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600;">쪽지 확인</div>
            </section> <!--End off Home Sections-->

            <section id="account" class="account" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="font-size: 20px; font-weight: 600; float: left; margin-left: 10px;">쪽지 리스트</div>
                <br>
                <hr style="border-color: rgb(175, 175, 175);">
            </section>

            <section id="messagetable" class="messagetable">
                <div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 80px;">
	                <table class="table table-hover" style="margin-bottom: 50px;">
	                    <thead>
	                        <tr style="background-color: #F1FAF8;">
	                            <th style="text-align: center; border-radius: 21px 0px 0px 0px;"><b>쪽지 대상</b></th>
	                            <th style="text-align: center;"><b>쪽지 내용</b></th>
	                            <th style="text-align: center; border-radius: 0px 21px 0px 0px;"><b>날짜</b></th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <%-- <tr onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/messageDetail.jsp'">
	                            <td style="text-align: center;">킘해인</td>
	                            <td>택배로 보내드리겠습니다.</td>
	                            <td style="text-align: center;">2021-06-17</td>
	                        </tr>
	                        <tr onclick="location.href=''">
	                            <td style="text-align: center;">업나라</td>
	                            <td>리뷰 잘봤습니다.</td>
	                            <td style="text-align: center;">2021-06-17</td>
	                        </tr>
	                        <tr onclick="location.href=''">
	                            <td style="text-align: center;">황주디</td>
	                            <td>뎅이 너무 귀여워요~</td>
	                            <td style="text-align: center;">2021-06-17</td>
	                        </tr> --%>
	                        
	                        <%-- <c:forEach>
	                        	<c:if test="{}">
	                        	</c:if>
	                        </c:forEach> --%>
	                        
	                        
	                    </tbody>
	                </table>
	                <div class="text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
						</ul>
					</div>
                </div>
            </section>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
         
</html>