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
                <div style="color: #45B99C; font-size: 25px; font-weight: 600;">내가 쓴 게시글 / 댓글 목록</div>
            </section> <!--End off Home Sections-->

            <section id="list" class="list" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div class="tab">
                	<img src="${ pageContext.servletContext.contextPath }/resources/images/back.png" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/'" style="width:50px; float: right;">
					<span id="sp0" class="tab_btn active" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=A';">실종 게시판</span>
					<span id="sp1" class="tab_btn" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=B';" >입양 게시판</span>
					<span id="sp2" class="tab_btn" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=C';">정보공유 게시판</span>
					<span id="sp3" class="tab_btn" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=D';">자유 게시판</span>
					<span id="sp4" class="tab_btn" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=E';">무료나눔 게시판</span>
					<span id="sp5" class="tab_btn" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=F';">용품리뷰 게시판</span>
					<span id="sp7" class="tab_btn" data-toggle="tab" onclick="location.href='${ pageContext.servletContext.contextPath }/user/mypage/boardCommentList?type=G';">댓글목록</span>
				</div>
            </section>

            <section id="menutable" class="menutable">
				<div class="tab-content">
	                <div id="menu0" class="tab-pane fade in active">
						<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		                	<table class="table table-hover" style="margin-bottom: 50px;">
			                    <thead>
			                        <tr style="background-color: #F1FAF8;">
			                            <th style="text-align: center; border-radius: 21px 0px 0px 0px;"><b>제목</b></th>
	                                    <th style="text-align: center;"><b>날짜</b></th>
			                            <th style="text-align: center; border-radius: 0px 21px 0px 0px;"><b>게시글 삭제</b></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/community/reviewList.jsp'">
			                            <td style="text-align: center;">강아지 옷 리뷰</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;"><button>삭제</button></td>
			                        </tr>
			                        <tr onclick="location.href=''">
			                            <td style="text-align: center;">저희 코코 자랑~!</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;"><button>삭제</button></td>
			                        </tr>
			                        <tr onclick="location.href=''">
			                            <td style="text-align: center;">약 3개월 시바견 임보 중</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td class="notbutton" style="text-align: center;"><button disabled>삭제불가</button></td>
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
			                            <th style="text-align: center; border-radius: 21px 0px 0px 0px;"><b>게시판 유형</b></th>
			                            <th style="text-align: center;"><b>제목</b></th>
			                            <th style="text-align: center;"><b>댓글 내용</b></th>
	                                    <th style="text-align: center;"><b>날짜</b></th>
			                            <th style="text-align: center; border-radius: 0px 21px 0px 0px;"><b>댓글 삭제</b></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr onclick="location.href=''">
			                            <td style="text-align: center;">용품리뷰</td>
			                            <td>강아지 옷 리뷰</td>
			                            <td>감사합니다~</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;"><button>삭제</button></td>
			                        </tr>
			                        <tr onclick="location.href=''">
			                            <td style="text-align: center;">자유게시판</td>
			                            <td>뽀삐 근황~</td>
			                            <td>뽀삐 너무 귀엽네요</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;"><button>삭제</button></td>
			                        </tr>
			                        <tr onclick="location.href=''">
			                            <td style="text-align: center;">입양게시판</td>
			                            <td>약 3개월 시바견 임보 중</td>
			                            <td>쪽지 부탁드립니다.</td>
			                            <td style="text-align: center;">2021-06-17</td>
			                            <td style="text-align: center;"><button>삭제</button></td>
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
				
	
			</script>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>