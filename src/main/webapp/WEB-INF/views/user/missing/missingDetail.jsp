<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            img {
                width: 600px;
                height: 600px;
                margin-bottom: 90px;
                margin-left: 300px;
                margin-right: 30px;
                text-align: center;
            }
            .sendmessage > input {
                width: 1000px;
                height: 50px;
                border-radius: 10px;
                border: 1px solid rgb(175, 175, 175);
                margin-bottom: 50px;
                margin-left: 80px;
            }
            .sendmessage > button {
                background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                width: 10%;
                height: 45px; 
                font-size: 16px; 
                font-weight: 600;
                border-radius: 10px;
                margin-left: 2%;
            }
            .sendmessage > input::placeholder {
                color:#45B99C;
            }
            
             /* The Modal (background) */
              .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            overflow-y: scroll;
           }
    
           /* Modal Content/Box */
           .modal-content {
               background-color: #fefefe;
               margin: 15% auto; /* 15% from the top and centered */
               padding: 20px;
               border: 1px solid #888;
               width: 800px; /* Could be more or less, depending on screen size */      
           }
           /* Modal Content/Box */
           .modal-content {
               background-color: #fefefe;
               margin: 15% auto; /* 15% from the top and centered */
               padding: 20px;
               margin-top: 10px;
               border: 1px solid #888;
               width: 800px;
               height: 900px;
               overflow-y: auto;                         
           }
           .modal-body{
            height: 250px;
            overflow-y: scroll;
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
            width: 60%;
            padding: 10px;
            max-width: 500px;
            border-radius: 10px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: rgba(255, 255, 255, .9);
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
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
            }
            
            .findpwd-content > div {
                margin: 0px auto;
            }
        </style>
        <meta charset="utf-8">
        <title>PET-PAL</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">


        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
              	<script src="https://kit.fontawesome.com/4978ce16d0.js" crossorigin="anonymous"></script>
         <script type="text/javascript"src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
       	 <script>
          var $j3 = jQuery.noConflict();
      	 </script>
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
         <section>
       <!--      <div class="port_img" style="float: left; width: 600px;"> -->
                   <%-- <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="float: left; margin-left: 50px;"alt="" /> --%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="float: left;">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
	                                   <div class="port_img">
	                                       <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="float: left; margin-left: 50px;"alt="" />
	                                   </div>
                                </div>
                                <div class="item">
                                         <div class="port_img">
                                             <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="float: left; margin-left: 50px;"alt="" />
                                         </div>
                                </div>
                                <div class="item">
                                         <div class="port_img">
                                             <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="float: left; margin-left: 50px;"alt="" />
                                         </div>
                                </div>
                                <div class="item">
                                         <div class="port_img">
                                             <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" style="float: left; margin-left: 50px;"alt="" />
                                         </div>
                                </div>
                              </div> 
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="background-image:none !important;">
                                <i class="fas fa-arrow-circle-left fa-3x" style="margin-top: 250px;"></i>
                                <span class="sr-only">Previous</span>
                            </a>

                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="background-image:none !important;">
                           		<i class="fas fa-arrow-circle-right fa-3x" style="margin-top: 250px;"></i>
                                <span class="sr-only">Next</span>
                            </a>
                     </div>


                <div style="float: left;width: 500px;display: flex;flex-direction: row;">
                   <h2 style="background-color: orange; width: 100px; border-radius: 8px; height: 60px; color: white; font-weight: bold; padding-top: 10px;" align="center">
                   실종 
                   </h2>
                   <!-- 상태 값에 따른 c:if 처리 -->
                   <!-- <h2 style="background-color: #44B99C; width: 130px; border-radius: 8px; height: 60px; color: white; font-weight: bold; padding-top: 10px;" align="center">
                   집 도착
                   </h2> -->
                   <img onclick="location.href='#reportPost'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="height: 50px; width: 50px; margin-top: 0px; margin-bottom: 0px; margin-left: 20px; cursor:pointer;">
                </div>
                <div>
                   <ul style="font-size: large;">
                      <li>작성자 : 
                      <b>QlQlfl</b>
                      <img src="${ pageContext.servletContext.contextPath }/resources/images/message icon.png" alt="" style="height: 50px; width: 50px; margin-top: 0px; margin-bottom: 0px; margin-left: 0px; cursor:pointer;"/>
                      </li>
                   </ul>
                </div>
                <div style="float: left;width: 600px;text-align: center;margin-left:20px; margin-top: 20px;">
                   <h1 style="font-weight: bold;">차이니즈 크레스티드 / 수컷  <br> 3살 / 14KG / 커피색</h1>
                </div>
                <div style="float: left; width: 600px; margin-left: 20px;margin-top: 20px;">
                   <table style="margin-bottom: 50px;width: 600px;">
                    <tbody>
                        <tr>
                            <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
                               날 짜 
                            </td>
                            <td style="font-size: 20px; padding-left: 30px;">
                            2021-06-21
                            </td>
                        </tr>
                        <tr>
                           <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
                               장 소 
                           </td>
                           <td style="font-size: 20px; padding-left: 30px; ">
                                 서울특별시 xx구 xx동 xxxxxxxx아파트 앞 횡단보도
                           </td>
                         </tr>
                         <tr>
                           <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
                               특 징
                           </td>
                           <td style="font-size: 20px; padding-left: 30px; width: 300px;">
                                 등에 연한 갈색의 얼룩처럼 보이게 털이 자랐어요. 코에 상처가 났어요. 꼬리가 비정상적으로 길어요.
                           </td>
                         </tr>
                         <tr>
                           <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
                               기 타
                           </td>
                           <td style="font-size: 20px; padding-left: 30px; width: 300px;">
                                 겁이 많은 아이에요. 발견하시면 다가가지 말고 제보 부탁드려요ㅠㅠ
                           </td>
                         </tr>
                         <tr>
                           <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
                               연 락 처
                           </td>
                           <td style="font-size: 20px; padding-left: 30px; width: 300px;">
                                 010-1234-5673
                           </td>
                         </tr>
                    </tbody>
                </table>
                </div>
                <div style="float: left; width: 600px; margin-left: 30px;" align="center">
                   <button onclick="show();"  style="background-color: red; border: 0px; border-radius:10px; width: 250px; margin-left:10px;">
                         <h3 style="color: white; padding-top: 10px; font-weight: bold;">전단지 생성하기</h3>
                   </button>
                   <button  
                      style="background-color: #45B99C; border: 0px; border-radius:10px; width:250px; margin-left:10px;">
                         <h3 style="color: white; padding-top: 10px; font-weight: bold;">찾았습니다!</h3>
                   </button>
                   <br>
                   <button>삭제하기</button>
                   <button>수정하기</button>
                   <!-- 찾았습니다 버튼이 눌릴시 아래의 h3이 나오면 된다. -> 상태에 따른 c:if처리 -->
                   <!-- <h3 style="background-color: #45B99C; width: 600px; border-radius: 8px; height: 50px; color: white; font-weight: bold; padding-top: 10px;">
                   찾았습니다! 많은 관심과 제보 감사합니다!
                   </h3> -->
                </div>
         </section>
            <section id="boradtable" class="boradtable">
               <div class="carousel-inner" role="listbox">
                   <div class="item active">
                       <div class="container">
                           <div class="row">
                               <table class="table" style="margin-bottom: 50px;">
                                <tbody>
                                    <tr>
                                        <td style="text-align: center;">펫파파</td>
                                        <td>오늘 농협 옆 골목길에서 목격했습니다. 꼭 찾길 바랄게요</td>
                                        <td style="text-align: center;">2021-06-22</td>
                                        <td><img onclick="location.href='#reportComment'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; height: 25px; margin-bottom: 0px; cursor:pointer;"></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">유기농간식</td>
                                        <td style="width: 500px;">xx초등학교 앞에서 봤습니다.</td>
                                        <td style="text-align: center;">2021-06-23</td>
                                         <td><img onclick="location.href='#reportComment'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; height: 25px; margin-bottom: 0px; cursor:pointer;"></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">삐띠딕</td>
                                        <td>아직 못찾았나요? 꼭 찾길 바랄게요ㅠㅠ</td>
                                        <td style="text-align: center;">2021-06-23</td>
                                         <td><img onclick="location.href='#reportComment'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; height: 25px; margin-bottom: 0px; cursor:pointer;"></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">Qododor</td>
                                        <td>아이구야 힘내세요</td>
                                        <td style="text-align: center;">2021-06-23</td>
                                         <td><img onclick="location.href='#reportComment'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; height: 25px; margin-bottom: 0px; cursor:pointer;"></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">Backgu</td>
                                        <td>멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍</td>
                                        <td style="text-align: center;">2021-06-23</td>
                                         <td><img onclick="location.href='#reportComment'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; height: 25px; margin-bottom: 0px; cursor:pointer;"></td>
                                    </tr>
                                    <tr>
                                       <td style="text-align: center;"> </td>
                                        <td>삭제 된 댓글입니다.</td>
                                        <td style="text-align: center;"> </td>
                                         <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="text-center">
                           <ul class="pagination">
                              <li><a href="#"><</a></li>
                              <li><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">></a></li>
                           </ul>
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p style="margin-left: 380px; font-weight: bold; font-size: 20px;">
                삐비디딕
                </p>
             <section id="sendmessage" class="sendmessage" style="width: 70%; margin: 0px auto;">
                <input type="text" id="messagecontent" placeholder="  혹시 이 아이를 보셨나요? 댓글로 목격 제보를 남겨보세요." >
                <button class="sendmessagecontent">댓글 작성</button>
            </section>
            </section>
            
            <!-- The Modal -->
            <div id="flyerModal" class="modal">
               <!-- Modal content -->
               <div class="modal-content">
               <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px; width: 30px; float: right; background-color: white;" onClick="close_pop();">
                   <span class="pop_bt" style="font-size: 13pt; font-weight: bold;" >
                     X
                   </span>
               </div>
                   <div style="height: 50px; width: 600px; background-color: yellow; margin-left: 80px;" align="center">
                      <h2 style="color: red; font-weight: bold; margin-top: 0px;">강아지를 찾습니다</h2>
                   </div>
                   <div style="margin-top: 20px;" align="center">
                      <img style="margin-left: 40px; margin-bottom: 20px; height: 600px; width: 600px;" src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                   </div>
                   <div style="background-color: red; margin-bottom: 20px;" align="center">
                      <h2 style="color: white; font-weight: bold; font-size: 20px; margin-bottom: 0px;">차이니즈 크레스티드</h2>
                      <h3 style="color: white; font-weight: bold; font-size: 20px; margin-bottom: 0px;">서울특별시 xx구 xx동 xxxxxxxx아파트 앞 횡단보도</h3>
                      <h2 style="color: white; font-weight: bold; font-size: 20px; margin-bottom: 0px;">날짜 2021-06-21</h2>
                   </div>
                   <div align="center">
                      <ul style="font-size: 20px;">
                         <li>장소 : 
                         <b>서울특별시 xx구 xx동 xxxxxxx아파트 부근 앞 횡단보도</b>
                         </li>
                         <li>특징 : 
                         <b style="color: red;">등에 연한 갈색의 얼룩처럼 보이게 털이 자랐어요. 코에 상처가 났어요. 꼬리가 비정상적으로 길어요</b>
                         </li>
                      </ul>
                      <br><br>
                      <h3 style="font-size: 20px;">※ 겁이 많아요. 발견하시면 다가가지 말고 연락 부탁드립니다.</h3>
                      <!-- 아래의 전단지 자진수거는 따로 데이터가 들어오는 것이 아니라 기본적으로 적혀져있는 포멧 -->
                      <h3>※동물을 찾으면 자진수거 하겠습니다. 전단지를 떼지 말아주세요!</h3>
                   </div>
                   <div align="center">
                      <hr style="border: soild 1px; border-color: black;">
                      <div>
                         <h2 style="color: #19A985; font-weight: bold; width: 200px; float: left; padding-top: 20px;">PET-PAL</h2>
                         <h2 style="color: red; font-weight: bold; width: 400px;">TEL) 010-8123-1234</h2>
                         <p style="font-size: 15px; width: 400px; padding-left: 35px;">반려동물 입양/실종동물 찾기는 '펫팔'을 검색해보세요!</p>
                      </div>
                      <hr style="border: soild 1px; border-color: black;">
                   </div>
                   <div align="center">
                      <button style="background-color: #19A985; width: 250px; height: 60px; font-size: 20px; color: white;">
                         PDF 생성하기
                      </button>
                      <button style="background-color: #19A985; width: 250px; height: 60px; font-size: 20px; color: white; margin-left: 30px;">
                         SNS 공유하기
                      </button>
                   </div>
            </div>
           </div> 
            <!-- 게시글 신고 팝업창 -->
            <div id="reportPost" class="overlay">
                <div class="popup">
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 10px;">게시글 신고</p>
                    <div class="findpwd-content" id="contStep02" style="display: block;">
                        <div class="cont-step_preface">
                            <hr style="border:0.5px solid #A8A8A8;">
                        </div>
                        <!-- 신고 내용 입력 -->
                        <div style="text-align: center; margin-top: 30px; width: 80%;"><input type="text" placeholder="신고내용을 입력하세요" style="height: 200px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#completeReport'">신고하기</button></div>
                    </div>
                 </div>
            </div> 
            
            <!-- 댓글 신고 팝업창 -->
            <div id="reportComment" class="overlay">
                <div class="popup">
                    <a href="#none" class="close">&times;</a>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 10px;">댓글 신고</p>
                    <div class="findpwd-content" id="contStep02" style="display: block;">
                        <div class="cont-step_preface">
                            <hr style="border:0.5px solid #A8A8A8;">
                        </div>
                        <!-- 신고 내용 입력 -->
                        <div style="text-align: center; margin-top: 30px; width: 80%;"><input type="text" placeholder="신고내용을 입력하세요" style="height: 200px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#completeReport'">신고하기</button></div>
                    </div>
                </div>
            </div> 
            
             <!-- 신고 완료 팝업창 -->
            <div id="completeReport" class="overlay">
                <div class="popup">
                    <p style="font-size: 30px; text-align: center; font-weight:bold; margin-top: 50px;">
                        신고가 정상적으로 접수되었습니다.<br>
                    </p>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 20px;">
                        신고에 대한 처리는 1~2일 소요될 수 있으며<br>
                        신고 내역에서 확인 가능합니다.
                    </p>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#none'">확인</button></div>
                    </div>
                </div>
            </div>
            
            
           <script>
              function show(){
                   $('#flyerModal').show();
              };
              //팝업 Close 기능
              function close_pop(flag) {
                   $('#flyerModal').hide();
              };
           </script>

            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
             <jsp:include page="../common/footer.jsp"/>
            
	</body>
</html>