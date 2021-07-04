<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin/report.css">
		<style>
			.send_btn {
                background-color: rgba(25,169,133,0.81); 
                width:150px;
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 18px; 
                font-weight: 500;
                border-radius: 10px;
                margin-left:15px;
            }
			.search {
			    position: relative;
			    text-align: center;
			    width: 300px;
			    margin: 0 auto;
			}
			input {
			    width: 100%;
			    border-radius: 20px;
			    border: 1px solid #bbb;
			    margin: 10px 0;
			    padding: 10px 12px;
			    font-family: fontAwesome;
			}
			.fa-search {
			    position: absolute;
			    right: 15px;
			    top: 10px;
			    margin: 0;
			    
			}
			.overlay {
  				position: fixed;
				top: 0;
				bottom: 0;
				left: 0;
				right: 0;
				background: rgba(0, 0, 0, 0.7);
				transition: opacity 500ms;
				visibility: hidden;
				opacity: 0;
				z-index: 900;
				height: 150% !important;
			}
			.overlay:target {
				visibility: visible;
				opacity: 1;
			}
			.popup {
				position: fixed;
				width: 70%;
				padding: 10px;
				max-width: 600px;
				border-radius: 10px;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background: rgba(255, 255, 255);
				-webkit-transition: opacity .5s, visibility 0s linear .5s;
				transition: opacity .5s, visibility 0s linear .5s;
				z-index: 1;
			}
			.popup:target {
				visibility: visible;
				opacity: 1;
				-webkit-transition-delay: 0s;
				transition-delay: 0s;
			}
			.popup-close {
				position: absolute;
				padding: 10px;
				max-width: 500px;
				border-radius: 10px;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background: rgba(255, 255, 255, .9);
			}
			.popup .close {
				position: absolute;
				right: 5px;
				top: 5px;
				padding: 5px;
				color: #000;
				transition: color .3s;
				font-size: 2em;
				line-height: .6em;
			}
			.popup .close:hover {
				color: #007a5c;
			}
            .btn_submit, .certification {
                background-color: #45B99C; 
                height: 45px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
                width: 100px;
            }
		</style>
		<script src="https://kit.fontawesome.com/4978ce16d0.js" crossorigin="anonymous"></script>
	</head>
	<body data-spy="scroll" data-target=".navbar-collapse">
		<jsp:include page="../common/userHeader.jsp"/>

		<div class="blog-list" style="position: absolute; top:25%; width: 15%; margin-top: 45px;">
			<nav>
				<ul style="margin-left: 30%;">
					<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/user/select/shareInfo/list" style="color: #979797;">일반 정보 공유</a></li>
					<hr style="margin-right: 10%; margin-left: 10%; border-color: lightgray;">
					<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/views/user/main/sharePlace.jsp"style="color: #45B99C; font-size: 1.3em; font-weight: 600;">프렌들리 플레이스</a></li>
				</ul>
			</nav>
		</div>
    
	 	<section id="product" class="product" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
			<div class="col-md-20">
				<div class="container-fluid" style="float:left;">
					<p role="presentation" style="font-weight:800; font-size:25px; color:#45B99C; margin-top:10px; float:left; margin-right:15px;">프렌들리 플레이스</p>
						<button type="button" class="send_btn" onclick="location.href='#completeReport'" style="vertical-align: text-top;"><strong>게시글 작성신청</strong></button>
	                
				</div>	
				<form class="d-flex" style="float:right;">
					<div class="search">
						<input type="text" placeholder="키워드로 검색해주세요." style="vertical-align: text-top;">
						<i class="fas fa-search fa-2x"></i>
					</div>
				</form>
			</div>
		</section>
		
		<section>
			<div class="carousel-inner" role="listbox" style="width: 70%; margin: 0px auto; margin-bottom: 50px;">
	            <div class="col-sm-3">
	            	<div class="port_item xs-m-top-30">
	                	<div class="port_img">
	                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="width:290px; height:250px;"/>
	                    </div>
	                	<div class="port_caption m-top-20" align="center" style="margin-bottom:20px;">
	                    	<h4><strong>서울 프렌들리 플레이스 추천</strong></h4>
	                    	<h5><strong>황주디</strong></h5>
	                    </div>
	                </div>
	            </div>
	        	<div class="col-sm-3">
	                <div class="port_item xs-m-top-30">
	                    <div class="port_img">
	                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="width:290px; height:250px;"/>
	                    </div>
	                    <div class="port_caption m-top-20" align="center" style="margin-bottom:20px;">
	                        <h4><strong>경기도의 고양이카페들</strong></h4>
	                        <h5>업나라</h5>
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-3">
	                <div class="port_item xs-m-top-30">
	                    <div class="port_img">
	                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="width:290px; height:250px;"/>
	                    </div>
	                    <div class="port_caption m-top-20" align="center" style="margin-bottom:20px;">
	                        <h4><strong>갱얼쥐와의 추억여행 장소 Best 5</strong></h4>
	                        <h5>뉴쥔</h5>
	                    </div>
	                </div>
	            </div>
       		</div><!-- End off container -->
   		</section><!-- End off Product section -->
   
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
			</ul>
		</div>
	
       	<!-- 오른쪽 배너 -->
		<jsp:include page="../../common/banner.jsp"/>
        <div id="completeReport" class="overlay">
        	<div class="popup">
                <img alt="warning" src="${ pageContext.servletContext.contextPath }/resources/images/warning.png" style="width: 120px; margin: 0px auto; margin-left: 220px; margin-bottom: -70px;">
    			<i class="far fa-times-circle fa-4x" style="float:right; color:#45B99C; cursor:pointer;" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/main/sharePlace.jsp'"></i>
                <p style="font-size: 22px; text-align: center; font-weight:bold; color: black; margin-top: 50px;">
                   	<strong>정보공유 게시판은 글 작성시 관리자의 확인이 필요합니다</strong><br>
                </p>
                <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 20px;">
                 	정보에 대한 사실확인등을 위하여 글 작성시 <br> 관리자의 검토에 의해 글이 게시됩니다.<br> 신청에 대한 검토는 1~2일 소요 될 수 있습니다.
                </p>
                <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/main/sharePlaceWrite.jsp'">확인</button></div>
            </div>
        </div>

  		<jsp:include page="../common/footer.jsp"/>
	</body>
</html>