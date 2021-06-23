<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
      <style>
       .table > thead > tr > th {
       text-align: center;
       }
       
        .table > tbody > tr > th {
       text-align: center;
       }
       .table > thead > tr > td {
       text-align: center;
       }
       
        .table > tbody > tr > td {
       text-align: center;
       }
       
       </style>
      </style>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">

        <div class="culmn">
            
            <!-- 헤더  시작 -->
			<jsp:include page="../../admin/common/header.jsp"></jsp:include>
			<!-- 헤더 끝 --> 

             <!-- 관리자관리 바디 시작 -->
             <section>
                <div class="container" style="padding-bottom:10%">
                   
                        <div class="head_title text-left fix">
                            <h2 class="text-uppercase">관리자 관리</h2>
                        </div>
                        
						 <div class="container">
							<div class="col-lg-12">
	                             <div class="col-lg-8" style="padding-left: 0px;">	
		                             <div class="container-fluid" style="margin-top: 15px;">
								    <form class="d-flex">
								      <input class="form-control me-2" type="search" placeholder="아이디  or 이름으로 검색하시오." aria-label="Search"
								      style="width: 300px; border-radius: 15px; background-color: #F1FAF8; float:left; height:40px">
									  <button class="btn btn-outline-success" type="submit" 
								      style="float: left; margin-left: 30px; width: 10px; border-radius: 50px; height:40px" >Search</button>
								    </form>
									</div>
									</div>
                                   <div class="col-lg-2">
                                   <button class="btn btn-outline-success" 
                                   type="button" style="border-radius:10px; margin-right: 20px; float:right; background: white; border:1px solid green; color:green;" 
                                   onclick="location.href='${ pageContext.servletContext.contextPath }/views/admin/main/adminAdd.jsp'">관리자 등록</button></div>
	                              <div class="col-lg-2">
	                              <button class="btn btn-outline-danger" type="button"  style="border-radius:10px; float:right; margin-right:10px; background: white; border:1px solid red; color:red;">관리자 삭제</button></div>
	                         </div>
						</div>
						
						
                        <!-- 관리자관리 표 -->
                        <div class="container" style="padding-top:2%">
                            <table class="table table-hover">
                                <thead>
                                 <tr>
                                    <th></th>
                                    <th scope="col">관리자 코드</th>
                                    <th scope="col">관리자 아이디</th>
                                    <th scope="col">이름</th>
                                    <th scope="col">이메일</th>
                                    <th scope="col">등록일</th>
                                    <th scope="col">권한</th>
                                 </tr>
                                </thead>
                                <tbody>
                                 <tr>
                                    <td><input class="check" type="checkbox" id="admin" onclick="checkClick(this)"></td>
                                    <th scope="row">1</th>
                                    <td>id1</td>
                                    <td onclick="location.href='${ pageContext.servletContext.contextPath }/views/admin/main/adminDetail.jsp'">김관리</td>
                                    <td>admin@gmail.com</td>
                                    <td>2021-06-17</td>
                                    <td>대표관리자</td>
                                  </tr>
                                  <tr>
                                    <td><input class="check" type="checkbox" id="admin" onclick="checkClick(this)"></td>
                                    <th scope="row">2</th>
                                    <td>id1</td>
                                    <td>김관리</td>
                                    <td>admin@gmail.com</td>
                                    <td>2021-06-17</td>
                                    <td>대표관리자</td>
                                  </tr>
                                  <tr>
                                    <td><input class="check" type="checkbox" id="admin" onclick="checkClick(this)"></td>
                                    <th scope="row">3</th>
                                    <td>id1</td>
                                    <td>김관리</td>
                                    <td>admin@gmail.com</td>
                                    <td>2021-06-17</td>
                                    <td>대표관리자</td>
                                  </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        
                </div><!-- End off container -->
            </section><!-- End off Product section -->
		
			<!-- 푸터 시작 -->
            <footer>
       			<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 
            </footer>
			<!-- 푸터 끝 -->



        </div>

     
</html>