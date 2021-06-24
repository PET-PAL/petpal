<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
			td > button {
				background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                width: 10px; 
                height: 15px;
                border-radius: 10px;
				margin-left: 5px;
			}
			td > button:hover {
				background-color: white; 
                color: #45B99C;
                border-color: white; 
                border: 1px solid;
			}
			div > button {
                background-color: #45B99C; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
                width: 130px;
                margin-right: 20px;
            }
            tr, td {
            	font-size: 17px;
				height: 70px;
				text-align: left;
			}
			td > input {
            	height: 40px;
                width: 95%;
                border-radius: 10px;
                border: 1px solid rgb(175, 175, 175);
            }
            td > textarea {
            	height: 130px;
                width: 95%;
                border-radius: 10px;
                border: 1px solid rgb(175, 175, 175);
                resize: vertical;
            }
            input::placeholder {
			  color: #A5A5A5;
			}
			textarea::placeholder {
			  color: #A5A5A5;
			}
        </style>
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
			                
			
            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                
            </section> <!--End off Home Sections-->
            <section id="menutable" class="menutable">
            
						<div style="width: 55%;  margin: 0px auto;  margin-bottom: 50px; ">
		                	<table style="width: 80%; margin-left: 30px; margin-top: 20px; margin-bottom: 20px; ">
		                	<div style="color: #45B99C; font-size: 25px; font-weight: 600; float:left; ">동물의 정보는 어떻게 되나요?
		                	<hr style="border: 1px solid #000000; width: 1066px;height: 0px;left: 177.5px;">
		                	</div>
		                	
								<tr>
									<td>품종</td>
									<td>
										<label name="adradio" style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" value="반려동물 관련 장소" checked> 고양이</label>
										<label name="adradio" style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" value="반려동물 관련 물품(장소 이외)" > 강아지</label>
										<input type="text" id="ownerName" style="width: 130px; background: #F1FAF8;"placeholder=" 예시) 닥스훈트"  >								
									</td>
								</tr>	
																<tr>
									<td>성별</td>
									<td>
										<label name="adradio" style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" value="반려동물 관련 장소" checked> 암컷</label>
										<label name="adradio" style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" value="반려동물 관련 물품(장소 이외)" > 수컷</label>								
									</td>
								</tr>
								<tr>
									<td>나이</td>
									<td><input type="text" id="ownerName" style="width: 80px; background: #F1FAF8;" >  살</td>
								</tr>
								<tr>
									<td>몸무게</td>
									<td><input type="text" id="ownerName" style="width: 80px; background: #F1FAF8;"  >  KG</td>
								</tr>
								<tr>
									<td>소개</td>
									<td><textarea rows="3" id="textArea" class="input-xlarge" style="background: #F1FAF8;"
									placeholder=" 예시) 소심하지만 사람을 좋아하는 아이입니다. 부디 이 아이의 평생 가족을 찾을 수 있게 해주세요. 현재 곰팡이 질환을 앓고 있어요 지금 치료중이지만 피부가 약해진 아이니 꼭 유의해주셔야해요 &#13;&#10;입양신청때 제가 더 필요로 하는 서류가 있어서 모두 충족시킬 수 있는 책임감 있으신 분을 찾고있어요!"
									></textarea></td>
									
								</tr>
								<tr>
									<td>사진</td>
									<td><button style="width: 100px; height: 30px;">사진첨부</button></td>
								</tr>
								
								</table>
								<table style="width: 80%; margin-left: 30px; margin-top: 20px; margin-bottom: 20px;  ">
								<div style="color: #45B99C; font-size: 25px; font-weight: 600; float:left; ">보호자님 연락은 어떻게 할까요?
		                			                	<hr style="border: 1px solid #000000; width: 1066px;height: 0px;left: 177.5px;">
		                	</div>
								
								<tr>
									<td>연락처</td>
									<td><input type="text" id="ownerPhone" style="width: 240px; background: #F1FAF8;" placeholder=" 예시) 010-1234-5678" ></td>
								</tr>
								<tr>
									<td>주의사항</td>
									<td><input type="text" id="ownerPhone" style="width: 330px; background: #F1FAF8;" placeholder=" 예시) 밤 8시이후는 문자로 부탁드립니다." ></td>
								</tr>
									
						</table>
                    	<div style="margin: 0px auto; text-align: center; margin-bottom: 50px"><button onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail2.jsp'">다음으로</button></div>
	                	</div>
            </section>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>