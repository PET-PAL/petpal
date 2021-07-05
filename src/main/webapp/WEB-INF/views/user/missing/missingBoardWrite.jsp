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
			div> button:hover {
				background-color: white; 
                color: red;
                border-color: white; 
                border: 1px solid;
			}
			div > button {
                background-color: red; 
                height: 40px;
                color: white;
                border: 1px solid red;  
                font-size: 18px; 
                font-weight: 600;
                border-radius: 10px;
                width: 150px;
                margin-right: 20px;
                margin-top:20px;
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
            	height: 100px;
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


        <div class="culmn" style="margin-left: -5%;">
            <!--Home page style-->

            <!--Home Sections-->
			
            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                
            </section> <!--End off Home Sections-->
            <section id="menutable" class="menutable">
            
                		<form action="${ pageContext.servletContext.contextPath }/user/missing/write" method="post" enctype="multipart/form-data" id="missingWrite">
						<div style="width: 55%;  margin: 0px auto;  margin-bottom: 50px; ">
		                	<table style="width: 80%; margin-left: 30px; margin-top: 20px; margin-bottom: 20px; ">
		                	<div style="color: #45B99C; font-size: 25px; font-weight: 600; float:left; ">언제 어디서 잃어버렸나요?
		                		<hr style="border: 1px solid #000000; width: 1066px;height: 0px;left: 177.5px;">
		                	</div>
								<tr>
									<td>날짜</td>
									<td>
										<select class="form-select" >
						                    <option value="2021" >2021</option>
							                <option value="2020">2020</option>
							                <option value="2019">2019</option>
						                 </select>	
						                 -
						                 <select class="form-select" size="1" style="overflow-y:scroll;">
						                    <option value="1" >01</option>
							                <option value="2">02</option>
							                <option value="3">03</option>
							                <option value="4">04</option>
							                <option value="5">05</option>
							                <option value="6">06</option>
							                <option value="7">07</option>
							                <option value="8">08</option>
							                <option value="9">09</option>
							                <option value="10">10</option>
							                <option value="11">11</option>
							                <option value="12">12</option>
						                 </select>
						                 -
						                 <select class="form-select" size="1" style="overflow-y:scroll;" >
						                    <option value="1" >01</option>
							                <option value="2">02</option>
							                <option value="3">03</option>
							                <option value="4">04</option>
							                <option value="5">05</option>
							                <option value="6">06</option>
							                <option value="7">07</option>
							                <option value="8">08</option>
							                <option value="9">09</option>
							                <option value="10">10</option>
							                <option value="11">11</option>
							                <option value="12">12</option>
							                <option value="13">13</option>
							                <option value="14">14</option>
							                <option value="15">15</option>
							                <option value="16">16</option>
							                <option value="17">17</option>
							                <option value="18">18</option>
							                <option value="19">19</option>
							                <option value="20">20</option>
							                <option value="21">21</option>
							                <option value="22">22</option>
							                <option value="23">23</option>
							                <option value="24">24</option>
							                <option value="25">25</option>
							                <option value="26">26</option>
							                <option value="27">27</option>
							                <option value="28">28</option>
							                <option value="29">29</option>
							                <option value="30">30</option>
							                <option value="31">31</option>
						                 </select>						
									</td>
								</tr>
								<tr>
									<td>지역</td>
									<td>
									<input type="text" id="missingarea" name="missingarea" style="width: 240px; background: #F1FAF8;" placeholder=" 예시) 서울특별시 서초구" > 
									    
									</td>
									
								</tr>
								<tr>
									<td>장소</td>
									<td><input type="text" id="missingPlace" name="missingPlace" style="width: 240px; background: #F1FAF8;" placeholder=" 예시) 강남초등학교 정문 부근" ></td>
								</tr>
								
								<tr>
									<td>연락처</td>
									<td><input type="text" id="ownerPhone" name="ownerPhone" style="width: 240px; background: #F1FAF8;" placeholder=" 예시) 010-1234-5678" ></td>
								</tr>
								</table>
								<table style="width: 80%; margin-left: 30px; margin-top: 20px; margin-bottom: 20px;  ">
								<div style="color: #45B99C; font-size: 25px; font-weight: 600; float:left; ">잃어버린 동물의 정보는 어떻게 되나요?
		                			                	<hr style="border: 1px solid #000000; width: 1066px;height: 0px;left: 177.5px;">
		                	</div>
								<tr>
									<td>품종</td>
									<td>
										<label style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" name="dogOrcat" value="C" checked> 고양이</label>
										<label style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" name="dogOrcat" value="D" > 강아지</label>
										<input type="text" id="ownerName" style="width: 130px; background: #F1FAF8;"placeholder=" 예시) 닥스훈트"  >								
									</td>
								</tr>	
																<tr>
									<td>성별</td>
									<td>
										<label style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" name="missingGender" value="F" checked> 암컷</label>
										<label style="font-size: 15px; font-weight: normal; padding-right: 30px;"><input type="radio" name="missingGender" value="M" > 수컷</label>													
									</td>
								</tr>
								<tr>
									<td>나이</td>
									<td><input type="text" name="missingAge" id="age" style="width: 80px; background: #F1FAF8;" >  살</td>
								</tr>
								<tr>
									<td>몸무게</td>
									<td><input type="text" id="weight" name="missingWeight" style="width: 80px; background: #F1FAF8;"  >  KG</td>
								</tr>
								<tr>
									<td>특징</td>
									<td><textarea name="missingCharacter" rows="3" id="textArea" class="input-xlarge" style="background: #F1FAF8;"
									placeholder=" 예시) 빨간 목줄을 하고 있어요. 꼬리가 사고로 짧아요. &#13;&#10; 바로 알아 볼 수 있는 특징을 적어주세요! (특수기호, 공백 포함 50자 이내)"
									></textarea></td>
									
								</tr>
								<tr>
									<td>기타</td>
									<td><textarea name ="missingRequest" rows="3" id="textArea" class="input-xlarge" style="background: #F1FAF8;"
									placeholder=" 예시) 예민한 아이입니다. 목격시 다가가지 말고 연락주세요. &#13;&#10; 목격 했을 때의 상황 등의 주의사항을 적어주세요! (특수기호, 공백 포함 40자 이내)"
									></textarea></td>
								</tr>
								<tr>
									<td>사진</td>
									<td>
										<div class="mb-3" style="border-color: none;">
										  <input type="file" name="picture" id="file" multiple="multiple" style="width: 300px; background: #F1FAF8;" onchange="fileLimit(this)" required>
										</div>
									</td>
								</tr>	
						</table>
                    	<div style="margin: 0px auto; text-align: center; margin-bottom: 50px"><button type="submit"> 동물 신고하기</button></div>
	                </div>
				</form>
            </section>
			
			<script>
       			function fileLimit(fl){
       				if(fl.files.length == 0){
       					alert("0개 이상의 파일이 입력 되었습니다. 최소 한장은 넣어주세요!");
       					fl.style.backgourndColor='red';
       					fl.value="";
       				};
       				if(fl.files.length > 3){
       					alert("2장 초과로 사진이 첨부되었습니다. 2장만 추가해주세요!");
       					fl.reset();
       				};
       			};
            	
            </script>
            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
   </body>
</html>