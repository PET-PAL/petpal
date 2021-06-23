<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .inquiry .tab_each{display:none}
			.inquiry .tab_each:first-child{display:block}
			.inquiry .tab{display:none}
			.tab_each{clear:both;border-top:1px solid rgba(0,0,0,0.08)}
			.tab .active, .tab .tab_btn.active {
    			color: #000;
    			font-weight: bold;
    			color: #45b99c8a;
			}
			.tab span.tab_btn {
			    display: inline-block;
			    float: none;
			    position: relative;
			    width: auto;
			    height: 40px;
			    margin-right: 22px;
			    font-size: 18px;
			    line-height: normal;
			    color: rgba(0,0,0,0.56);
			    text-align: left;
			    cursor: pointer;
			}
            .tab {
    			height: auto;
    			border-bottom: 1px solid rgba(0,0,0,0.2);
			}
			.tab .active:after {
			    display: block;
			    content: '';
			    position: absolute;
			    bottom: 0;
			    left: 0;
			    width: 100%;
			    height: 2px;
			    background: #45b99c8a;
			}
			td > button {
				background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                width: 80px; 
                height: auto; 
                font-size: 13px; 
                font-weight: 500;
                border-radius: 10px;
			}
			td > button:hover {
				background-color: white; 
                color: #45B99C;
                border-color: white; 
                border: 1px solid;
			}
			td.notbutton > button {
				background-color: rgb(175, 175, 175); 
                color: white;
                border-color: rgb(175, 175, 175); 
                border: 1px solid; 
                width: 80px; 
                height: auto; 
                font-size: 13px; 
                font-weight: 500;
                border-radius: 10px;
			}
			.filtering {
				cursor: pointer;
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

            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 40px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600;">문의 / 신고 내역</div>
            </section> <!--End off Home Sections-->

            <section id="list" class="list" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div class="tab">
					<span class="tab_btn active" data-toggle="tab" href="#menu0" >문의 내역</span>
					<span class="tab_btn" data-toggle="tab" href="#menu1">신고 내역</span>
				</div>
            </section>

            <section id="menutable" class="menutable">
				<div class="tab-content">
	                <div id="menu0" class="tab-pane fade in active">
						<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		                	<table class="table table-hover" style="margin-bottom: 50px;">
			                    <thead>
			                        <tr style="background-color: #F1FAF8;">
			                            <th style="text-align: center; border-radius: 21px 0px 0px 0px;"><b>문의 제목</b></th>
	                                    <th class="filtering" onclick="qnaFiltering();" style="text-align: center;"><b>문의 구분</b><img src="${ pageContext.servletContext.contextPath }/resources/images/filter.png" style="width:15px; margin-left:10px;"></th>
			                            <th style="text-align: center;"><b>날짜</b></th>
			                            <th style="text-align: center; border-radius: 0px 21px 0px 0px;"><b>답변 여부</b></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr class="generalQna" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/qnaDetail.jsp'">
			                            <td style="text-align: center; padding-left: 15px;">회원탈퇴하고싶습니다.</td>
			                            <td style="text-align: center;">일반문의</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;">N</td>
			                        </tr>
			                        <tr class="generalQna" onclick="location.href=''">
			                            <td style="text-align: center; padding-left: 15px;">이메일 변경</td>
			                            <td style="text-align: center;">일반문의</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;">N</td>
			                        </tr>
			                        <tr class="adQna" onclick="location.href=''">
			                            <td style="text-align: center; padding-left: 15px;">광고 신청 문의합니다.</td>
			                            <td style="text-align: center;">광고문의</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;">Y</td>
			                        </tr>
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
					</div>
					
					<div id="menu1" class="tab-pane fade">
						<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		                	<table class="table table-hover" style="margin-bottom: 50px;">
			                    <thead>
			                        <tr style="background-color: #F1FAF8;">
			                            <th style="width: 31%; text-align: center; border-radius: 21px 0px 0px 0px;"><b>신고 제목</b></th>
			                            <th style="width: 23%; text-align: center;"><b>신고 대상</b></th>
			                            <th style="width: 23%; text-align: center;"><b>신고 일자</b></th>
			                            <th class="filtering" onclick="statusFiltering();" style="width: 23%; text-align: center; border-radius: 0px 21px 0px 0px;"><b>접수 상태</b><img src="${ pageContext.servletContext.contextPath }/resources/images/filter.png" style="width:15px; margin-left:10px;"></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr class="before" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/reportDetail.jsp'">
			                            <td style="text-align: center; padding-left: 15px;">광고성 게시글 작성</td>
			                            <td style="text-align: center;">황주디</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center; color: red;">처리전</td>
			                        </tr>
			                        <tr class="before" onclick="location.href=''">
			                            <td style="text-align: center; padding-left: 15px;">비속어 사용</td>
			                            <td style="text-align: center;">업나라</td>
			                            <td style="text-align: center;">2021-06-17</td>
										<td style="text-align: center; color: red;">처리전</td>
			                        </tr>
			                        <tr class="after" onclick="location.href=''">
			                            <td style="text-align: center; padding-left: 15px;">도배성 댓글</td>
			                            <td style="text-align: center;">킘해인</td>
			                            <td style="text-align: center;">2021-06-17</td>
										<td style="text-align: center; color: #45B99C;">처리완료</td>
			                        </tr>
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
					</div>
            	</div>
            </section>
            
            <script>
				let targetLink = document.querySelectorAll('.tab span');
				for(var i = 0; i < targetLink.length; i++) {
					targetLink[i].addEventListener('click', function(e){
	        			e.preventDefault();
						for(var x = 0; x < targetLink.length; x++){
	            			targetLink[x].classList.remove('active');
	            			e.target.classList.add('active');
	        			}
					}
				)};
				
				
				var filterNo = 0;
				function qnaFiltering() {
					
					filterNo++;
					
					if(filterNo > 2) {
						filterNo = 1;
					}
					
					if(filterNo == 1) {
						$(".adQna").hide();
						$(".generalQna").show();
					} else {
						$(".generalQna").hide();
						$(".adQna").show();
					}
					
				}
				
				var filterNoo = 0;
				function statusFiltering() {
					
					filterNoo++;
					
					if(filterNoo > 2) {
						filterNoo = 1;
					}
					
					if(filterNoo == 1) {
						$(".after").hide();
						$(".before").show();
					} else {
						$(".before").hide();
						$(".after").show();
					}
					
				}
			</script>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>