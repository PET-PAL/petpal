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
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
  		<script src='https://cdn.jsdelivr.net/npm/underscore@1.12.0/underscore-min.js'></script>
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

            <section id="borad" class="borad" style="width: 80%; margin: 0px auto;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; margin-left: 5%;">입양홍보
                <button id="adopt_wait_btn" 
                style="color: white; background-color: #FFA800; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px;">
                	입양 대기중
                </button>
                <button id="adopt_com_btn" 
                style="color: white; background-color: #FF6230; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px;">
                	입양 완료
                </button>
                </div>
                <hr style="border-color: rgb(175, 175, 175); width: 90%;">
            </section> <!--End off Home Sections-->
			<div style="width: 370px; position: relative; left: 60%; margin-bottom:20px;">
		           <!--  <form style="margin-bottom: 40px;"> -->
						<input type="search" id="search" name="search" placeholder="지역 키워드를 입력해주세요" aria-label="Search"
						style="width: 300px; border-radius: 5px; background-color: #F1FAF8; height:40px; border: solid 1px; border-color: black;" autofocus/>
						<span>
						<button id="search_btn" type="submit" style="background-color: white; height: 40px; width: 50px; float: right; border: solid 1px; border-color: black; border-radius: 5px;">
							검색
						</button>
						</span>
					<!-- </form> -->
			</div>
			
			<script>
			
			$j3('#search_btn').click(function(){
					
					console.log("search ajax");
					var rsearch = $j3('#search').val();
					console.log(rsearch);
					/* var search = decodeURIComponent(rsearch,"UTF-8");
					console.log(search); */
					
					$j3("#adoptlistList").empty();
					
					$j3.ajax({
						url:"adopt/search/"+decodeURIComponent(rsearch,"UTF-8"),
						type:"GET",
						success: function(data,status,xhr){
							const adoptSearchList1 = JSON.parse(data.adoptSearchList);
		     				var adoptSearchList = _.uniq(adoptSearchList1, 'boardCode');
							
		     				console.table(adoptSearchList);
		     				
		     				output1='';
		     				
		     				$j3.each(adoptSearchList,function(){
		     					
		     					var statusName1 = this.stateName;
			     				var gender1 = this.adoptGender;
			     				
		     					output1 += '<div class="col-sm-3">';
		     					output1 += '<div class="port_item xs-m-top-30" style="cursor:pointer;">';
		     					output1 += '<div class="port_img" style="position: relative;" onclick="location.href='+'\'' + '${ pageContext.servletContext.contextPath }/user/adopt/detail/' + this.boardCode +'\''+'">';
		     					output1 += '<input type="hidden" id="boardCode" value='+this.boardCode+'/>';
		     					
		     					if(statusName1 == '대기'){
		     						output1 += '<p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">'+'대기중'+'</p>';
		     					}
		     					if(statusName1 == '승인'){
		     						output1+='<p style="position: absolute; font-size: 20px; background-color: #FF6230; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">'+'완료'+'</p>'
		     					}
		     					output1 += '<img style="width:290px; height:250px;" src="${ pageContext.servletContext.contextPath }/'+this.pictureUtilPath+'" alt="" />';
		     					output1 += '</div>';
		     					output1 += '<div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">';
		     					if(gender1 == 'M'){
		     						output1 += '<h4>'+this.adoptBreed+'/남아/'+this.adoptColor+'</h4>';
		     					}
		     					if(gender1 == 'F'){
		     						output1 += '<h4>'+this.adoptBreed+'/여아/'+this.adoptColor+'</h4>';
		     					}
		     					output1 += '<h6>'+this.userAddress+'</h6>';
		     					output1 += '</div>';
		     					output1 += '</div>';
		     					output1 += '</div>';
                                    
                             
		     				});
		     				
		     				$j3('#adoptlistList').append(output1);
		     				
		     				
						},error: function(xhr,status,error){
							
							alert("에러 발생~삐뽀~");
		     				console.log(error);
						}
					});
				});
			
			</script>
			
            <section id="boradtable" class="boradtable">
                 <!-- Wrapper for slides -->
                         <div class="carousel-inner" role="listbox">
                             <div class="item active">
                                 <div class="container">
                                     <div class="row" id="adoptlistList">
                                     
                                            <script>
                                            
                                            var adoptList1;
                                            
                                            $j3(document).ready(function(){
										     		console.log("adoptPage select script");
										     		
										     		$j3.ajax({
										     			url:"/petpal/user/adoptData",
										     			success:function(data,status,xhr){
										     				adoptList1 = JSON.parse(data.adoptList);
										     				var adoptList = _.uniq(adoptList1, 'boardCode');
										     			
										     				
										     				console.table(adoptList);
										     				output='';
										     				$j3.each(adoptList,function(){
											     				var statusName = this.stateName;
											     				var gender = this.adoptGender;
											     				console.log(statusName);
											     				
										     					output += '<div class="col-sm-3">';
										     					output += '<div class="port_item xs-m-top-30" style="cursor:pointer;">';
										     					output += '<div class="port_img" style="position: relative;" onclick="location.href='+'\'' + '${ pageContext.servletContext.contextPath }/user/adopt/detail/' + this.boardCode +'\''+'">';
										     					output += '<input type="hidden" id="boardCode" value='+this.boardCode+'/>';
										     					if(statusName == '대기'){
										     						output += '<p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius:0px 5px 5px 5px; font-weight: bold;" align="center">'+'대기중'+'</p>';
										     					}
										     					if(statusName == '승인'){
										     						output+='<p style="position: absolute; font-size: 20px; background-color: #FF6230; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 0px 5px 5px 5px; font-weight: bold;" align="center">'+'완료'+'</p>'
										     					}
										     					output += '<img style="width:290px; height:250px;" src="${ pageContext.servletContext.contextPath }/'+this.pictureUtilPath+'" alt="" />';
										     					output += '</div>';
										     					output += '<div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">';
										     					if(gender == 'M'){
										     						output += '<h4>'+this.adoptBreed+'/남아/'+this.adoptColor+'</h4>';
										     					}
										     					if(gender == 'F'){
										     						output += '<h4>'+this.adoptBreed+'/여아/'+this.adoptColor+'</h4>';
										     					}
										     					output += '<h6>'+this.userAddress+'</h6>';
										     					output += '</div>';
										     					output += '</div>';
										     					output += '</div>';
								                                    
								                             
										     				});
										     				
										     				$j3('#adoptlistList').append(output);
										                
										     				
										     			},error:function(xhr,status,error){
										     				alert("에러 발생~삐뽀~");
										     				console.log(error);
										     			}
										     		});
										     	}); 
                                            
                                            /* 입양 대기중 버튼 클릭시 필터  */
                                            $j3('#adopt_wait_btn').click(function(){
                                            	console.log("adopt_wait_btn 들어오나?");
                                            	
                                            	console.table(adoptList1);
                                            	var adoptWaitingList1 = _.uniq(adoptList1, 'boardCode');
                                            	$j3("#adoptlistList").empty();
                                            	function isWaiting(w){
                                            		if(w.stateName == '대기'){
                                            			return true;
                                            		};
                                            	};
                                            	
                                            	
                                            	var adoptWaitingList = adoptWaitingList1.filter(isWaiting);
                                            	console.table(adoptWaitingList);
                                            	
                                            	output2='';
							     				$j3.each(adoptWaitingList,function(){
								     				var gender = this.adoptGender;
								     				
							     					output2 += '<div class="col-sm-3">';
							     					output2 += '<div class="port_item xs-m-top-30" style="cursor:pointer;">';
							     					output2 += '<div class="port_img" style="position: relative;" onclick="location.href='+'\'' + '${ pageContext.servletContext.contextPath }/user/adopt/detail/' + this.boardCode +'\''+'">';
							     					output2 += '<input type="hidden" id="boardCode" value='+this.boardCode+'/>';
							     					output2 += '<p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius:0px 5px 5px 5px; font-weight: bold;" align="center">'+'대기중'+'</p>';
							     					output2 += '<img style="width:290px; height:250px;" src="${ pageContext.servletContext.contextPath }/'+this.pictureUtilPath+'" alt="" />';
							     					output2 += '</div>';
							     					output2 += '<div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">';
							     					if(gender == 'M'){
							     						output2 += '<h4>'+this.adoptBreed+'/남아/'+this.adoptColor+'</h4>';
							     					}
							     					if(gender == 'F'){
							     						output2 += '<h4>'+this.adoptBreed+'/여아/'+this.adoptColor+'</h4>';
							     					}
							     					output2 += '<h6>'+this.userAddress+'</h6>';
							     					output2 += '</div>';
							     					output2 += '</div>';
							     					output2 += '</div>';
					                                    
					                             
							     				});
							     				
							     				$j3('#adoptlistList').append(output2);
                                            })
                                            
                                            /* 입양완료 버튼 클릭시 필터 적용 코드 */
                                            
                                            $j3('#adopt_com_btn').click(function(){
                                            	console.log("adopt_wait_btn 들어오나?");
                                            	
                                            	console.table(adoptList1);
                                            	var adoptWaitingList1 = _.uniq(adoptList1, 'boardCode');
                                            	$j3("#adoptlistList").empty();
                                            	function isWaiting(w){
                                            		if(w.stateName == '승인'){
                                            			return true;
                                            		};
                                            	};
                                            	
                                            	
                                            	var adoptWaitingList = adoptWaitingList1.filter(isWaiting);
                                            	console.table(adoptWaitingList);
                                            	
                                            	output3='';
							     				$j3.each(adoptWaitingList,function(){
								     				var gender = this.adoptGender;
								     				
							     					output3 += '<div class="col-sm-3">';
							     					output3 += '<div class="port_item xs-m-top-30" style="cursor:pointer;">';
							     					output3 += '<div class="port_img" style="position: relative;" onclick="location.href='+'\'' + '${ pageContext.servletContext.contextPath }/user/adopt/detail/' + this.boardCode +'\''+'">';
							     					output3 += '<input type="hidden" id="boardCode" value='+this.boardCode+'/>';
							     					output3 +='<p style="position: absolute; font-size: 20px; background-color: #FF6230; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 0px 5px 5px 5px; font-weight: bold;" align="center">'+'완료'+'</p>'
							     					output3 += '<img style="width:290px; height:250px;" src="${ pageContext.servletContext.contextPath }/'+this.pictureUtilPath+'" alt="" />';
							     					output3 += '</div>';
							     					output3 += '<div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">';
							     					if(gender == 'M'){
							     						output3 += '<h4>'+this.adoptBreed+'/남아/'+this.adoptColor+'</h4>';
							     					}
							     					if(gender == 'F'){
							     						output3 += '<h4>'+this.adoptBreed+'/여아/'+this.adoptColor+'</h4>';
							     					}
							     					output3 += '<h6>'+this.userAddress+'</h6>';
							     					output3 += '</div>';
							     					output3 += '</div>';
							     					output3 += '</div>';
					                                    
					                             
							     				});
							     				
							     				$j3('#adoptlistList').append(output3);
                                            })
                                            
                                            
										     	
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
					<script>
						function moveData(){
							var specNum = $j3("#boardCode").val();
							alert(specNum);
						}
					</script>
					            

            </section>
            
										     					
            
            <div style="position: fixed; top: 310px; left: 7%;">
	            <button onclick="location.href='${ pageContext.servletContext.contextPath }/user/adopt/terms'" style="border: 0px; background-color: #19A985; width: 50px; height: 200px; border-radius: 10px;">
	            <h4 style="writing-mode: vertical-rl; color: white; font-weight: bold;" align="center">글 작성하기</h4>
	            </button>
			</div>

        </div>
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
         <jsp:include page="../common/footer.jsp"/>    



</body>
</html>