<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <section id="borad" class="borad" style="width: 80%; margin: 0px auto;  margin-bottom: 40px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; margin-left: 200px;">무료나눔
                <button 
                style="color: white; background-color: #FFA800; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px;">
                	나눔중
                </button>
                <button 
                style="color: white; background-color: #45B99C; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px; position: relative; bottom: 10%;">
                	나눔완료
                </button>
                </div>
                <hr style="border-color: rgb(175, 175, 175); width: 80%;">
            </section> <!--End off Home Sections-->
            <div style="width: 370px; position: relative; left: 60%;">
		            <form style="margin-bottom: 40px;">
						<input type="search" placeholder=" 검색 키워드를 입력해주세요" aria-label="Search"
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
                                        <div class="row">
                                        <c:forEach var= "share" varStatus="status" items="${shareList }">
                                            <div class="col-sm-3" href="${ pageContext.servletContext.contextPath }/user/shareFree/detail/board/{${shareList.boardCode}}">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img" style="position: relative;">
                                                    	<c:if test="${shareList.stateCode eq 1 }">
                                                    	<p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">나눔중</p>
                                                    	</c:if>
                                                    	<c:if test="${shareList.stateCode eq 2 }">
                                                    	<p style="position: absolute; font-size: 20px; background-color: #45B99C; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">나눔 완료</p>
                                                        </c:if>
                                                        <img src="${ pageContext.servletContext.contextPath }/${shareList.pictureUtilPath}" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">
                                                        <h4><a>${shareList.boardTitle }</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                          </c:forEach>
                                        </div>
                                    </div>
                                </div>
                             </div>
		<!-- 페이징처리 -->
            <div class="text-center">
				<ul class="pagination">
				<li>
					<c:if test="${paging.startPage != 1 }">
						<li><a href="${ pageContext.servletContext.contextPath }/user/shareFree/list?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a></li>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<li><a>${p }</a></li>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<li><a href="${ pageContext.servletContext.contextPath }/user/shareFree/list?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<li><a href="${ pageContext.servletContext.contextPath }/user/shareFree/list?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a></li>
					</c:if>
					</li>
				</ul>
			</div>
            </section>
            <div style="position: fixed; top: 310px; left: 200px;">
	            <button style="border: 0px; background-color: #19A985; width: 50px; height: 200px; border-radius: 10px;">
	            <h4 style="writing-mode: vertical-rl; color: white; font-weight: bold;" align="center">글 작성하기</h4>
	            </button>
			</div>
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
        </div>
         <jsp:include page="../common/footer.jsp"/>
            
	</body>
</html>