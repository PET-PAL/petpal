<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin/report.css">
	<style>
.send_btn {
                background-color: #FFB830; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
            }
	</style>
</head>
<jsp:include page="../common/userHeader.jsp"/>
<nav class="col-sm-3 sidenav" style="
      position: fixed;
      width: 250px;
      height: 100%;
      margin-left: -20px;
      font-size: 18px;
      text-align:center;
      color:#25213b">
      <ul class="nav nav-pills nav-stacked">
        <li class="active1"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/paymentManageList.jsp">일반 정보 공유</a></li>
        <hr>
        <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/taxMangeList.jsp">프렌들리 플레이스</a></li>
      </ul>
    </nav>
    <!-- sidebar end -->
    
	 <section id="product" class="product">

		<div class="container">	
			<div class="row">
					 <div class="col-md-20">
							 <div class="container-fluid" style="float:left;">
			
		 			<p role="presentation" style="font-weight:800; font-size:25px; color:#19A985; margin-top:10px;"> 일반정보 공유</p>
							 <button type="button" class="send_btn" onclick.href=>전송 하기</button>
                
							 </div>	
						    <form class="d-flex" style="float:right;">
						      <input class="form-control me-2" type="search" placeholder="유저명으로 검색하시오." aria-label="Search"
						      style="width: 300px; border-radius: 10px; background-color: white; box-shadow:0px 0px 1px 1px RGB(17,17,17,0.68); border:1px solid RGB(17,17,17,0.48); float:left; height:40px">
						      <button class="btn btn-outline-success" type="submit" 
						      style="float: left; margin-left: 30px; width: 10px; border-radius: 50px; height:40px" ><img scr="${ pageContext.servletContext.contextPath }/resources/images/close.png"></button>
						    </form>
						</div>
						<br>
				<div class="carousel-inner" role="listbox">
                       <div class="item active" style="margin-top:20px;">
						 <div class="col-sm-3">
                                                <div class="port_item xs-m-top-40">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-10 text-center">
                                                        <p style="font-size:18px; margin-bottom:-2px"> 당신의 집에 고양이가 없는 이유</p>
                                                        <p style="margin-bottom:10px; font-size:14px;">황주디</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-40">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                    </div><!-- End off row -->
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
	

  <jsp:include page="../common/footer.jsp"/>