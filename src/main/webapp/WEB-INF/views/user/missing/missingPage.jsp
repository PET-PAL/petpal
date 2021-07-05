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
        </style>

        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
       	<script src='https://cdn.jsdelivr.net/npm/underscore@1.12.0/underscore-min.js'></script>
        <script type="text/javascript"src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
       	 <script>
          var $j3 = jQuery.noConflict();
      	 </script>
    </head>

       <jsp:include page="../common/userHeader.jsp"/>

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


            <!--Home Sections-->
            <section id="borad" class="borad" style="width: 80%; margin: 0px auto;  margin-bottom: 10px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; margin-left: 7%;">실종신고
                <button 
                style="color: white; background-color: #FFA800; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px;">
                	실종
                </button>
                <button 
                style="color: white; background-color: #45B99C; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px; position: relative; bottom: 10%;">
                	집에 왔어요!
                </button>
                </div>
                <hr style="border-color: rgb(175, 175, 175); width: 90%;">
            </section> <!--End off Home Sections-->
            <div style="width: 370px; position: relative; left: 60%;">
		            <form style="margin-bottom: 40px;">
						<input type="search" placeholder="지역 키워드를 입력해주세요" aria-label="Search"
						style="width: 300px; border-radius: 5px; background-color: #F1FAF8; height:40px; border: solid 1px; border-color: black;">
						<span>
						<button type="submit" style="background-color: white; height: 40px; width: 50px; float: right; border: solid 1px; border-color: black; border-radius: 5px;">
							검색
						</button>
						</span>
					</form>
					</div>

            <section id="boradtable" class="boradtable">
                 <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row" id="missingTotalList">
                                        
                                        <script>
                                            
                                            var missingList1;
                                            
                                            $j3(document).ready(function(){
										     		console.log("MissingPage select script");
										     		
										     		$j3.ajax({
										     			url:"/petpal/user/missingList",
										     			success:function(data,status,xhr){
										     				missingList1 = JSON.parse(data.missingList);
										     				var missingList = _.uniq(missingList1, 'boardCode');
										     			
										     				
										     				console.table(missingList);
										     				output='';
										     				$j3.each(missingList,function(){
											     				var statusName = this.stateName;
											     				var gender = this.missingGender;
											     				console.log(statusName);
											     				
										     					output += '<div class="col-sm-3">';
										     					output += '<div class="port_item xs-m-top-30" style="cursor:pointer;">';
										     					output += '<div class="port_img" style="position: relative;" onclick="location.href='+'\'' + '${ pageContext.servletContext.contextPath }/user/missing/detail/' + this.boardCode +'\''+'">';
										     					output += '<input type="hidden" id="boardCode" value='+this.boardCode+'/>';
										     					if(statusName == '대기'){
										     						output += '<p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 0px 5px 5px 5px; font-weight: bold;" align="center">실종</p>';
										     					}
										     					if(statusName == '승인'){
										     						output+='<p style="position: absolute; font-size: 20px; background-color: #45B99C; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 0px 5px 5px 5px; font-weight: bold;" align="center">집 도착</p>'
										     					}
										     					output += '<img style="width:290px; height:250px;" src="${ pageContext.servletContext.contextPath }/'+this.pictureUtilPath+'" alt="" />';
										     					output += '</div>';
										     					output += '<div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">';
										     					if(gender == 'M'){
										     						output += '<h4>'+this.missingBreed+'/남아/'+this.missingColor+'</h4>';
										     					}
										     					if(gender == 'F'){
										     						output += '<h4>'+this.missingBreed+'/여아/'+this.missingColor+'</h4>';
										     					}
										     					output += '<h6>'+this.missingArea+'</h6>';
										     					output += '</div>';
										     					output += '</div>';
										     					output += '</div>';
								                                    
								                             
										     				});
										     				
										     				$j3('#missingTotalList').append(output);
										                
										     				
										     			},error:function(xhr,status,error){
										     				alert("에러 발생~삐뽀~");
										     				console.log(error);
										     			}
										     		});
										     	}); 
                                            
                                            </script>
                                        </div>
                                    </div>
                                </div>
                             </div>
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
            </section>
            <div style="position: fixed; top: 310px; left: 200px;">
	            <button style="border: 0px; background-color: red; width: 50px; height: 200px; border-radius: 10px;" onclick="location.href='${ pageContext.servletContext.contextPath }/user/missing/write'" >
	            <h4 style="writing-mode: vertical-rl; color: white; font-weight: bold;" align="center">실종 알리기</h4>
	            </button>
			</div>
            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
        </div>
         <jsp:include page="../common/footer.jsp"/>

	</body>            
</html>