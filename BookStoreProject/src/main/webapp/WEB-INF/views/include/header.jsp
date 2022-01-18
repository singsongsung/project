<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script>
	function logoutCheck(){
		alert("로그아웃 되었습니다.");
		return true;
	}
</script>
<header class="header">
            <div class="header_top">
                <ul class="util">
                <c:choose>
                	<c:when test="${sessionScope.userRole==1 }">
	                    <li><a href="getBookList.bs?user=admin">Setting<i class="xi-user-o"></i> </a></li>
                	</c:when>
                	<c:otherwise>
                		<li><a href="getBookList.bs?user=admin"></a></li>
                	</c:otherwise>
                </c:choose>
                <c:choose>
                	<c:when test="${sessionScope.userId == null }">
                		<li><a href="login.lo">로그인</a></li>
                	</c:when>
                	<c:otherwise>
	                   	<li><a href="">마이페이지</a></li>
						<li><a href="logout.lo" onclick="logoutCheck()">로그아웃</a></li>
                	</c:otherwise>
                </c:choose>
               	 	
                    <li><a href="getBoardList.do">고객센터</a></li>
                    <li><a href="getBasketList.ba">장바구니 <i class="xi-cart"></i></a></li>
                </ul>
            </div>
            <div class="header_middle">
                <h1 class="logo"><a href="main.bs"><img src="./image/logo.png" alt="" class="logo_img"></a></h1>
                <div class="search">
                    <div class="search_box">
                        <form action="getBookList.bs" method="post" class="search_form">
                            <select name="searchCondition" id="" class="search_list">
                                <c:forEach items="${conditionMap }" var="option">
									<option value="${option.value }">${option.key }
								</c:forEach>
                            </select>
                            <input type="text" name="searchKeyword" placeholder="역주행 베스트셀러 1위!" class="search_input">
                            <button type="submit" class="search_btn"><i class="xi-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="empty"></div>
            </div>
            <div class="header_bottom">
                <nav class="gnb">
                    <ul class="gnb_list">
                        <li>
                            <a href="getBookList.bs?user=user" class="depth01">국내도서</a>
                        </li>
                        <li>
                            <a href="getBookList.bs?user=user" class="depth01">외국도서</a>
                        </li>
                        <li>
                            <a href="getBookList.bs?user=user" class="depth01">eBook</a>
                            <ul class="depth02">
                                <li><a href="">일반도서</a></li>
                                <li><a href="">로맨스/BL</a></li>
                                <li><a href="">판타지/무협</a></li>
                                <li><a href="">일반도서</a></li>
                                <li><a href="">일반도서</a></li>
                                <li><a href="">일반도서</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="getBookList.bs?user=user" class="depth01">웹소설</a>
                        </li>
                        <li>
                            <a href="getBookList.bs?user=user" class="depth01">기프트</a>
                            <ul class="depth02">
                                <li><a href="">2022 DIARY</a></li>
                                <li><a href="">디자인문구</a></li>
                                <li><a href="">디지털</a></li>
                                <li><a href="">키친/푸드</a></li>
                                <li><a href="">오피스</a></li>
                                <li><a href="">필기구</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="getBookList.bs?user=user" class="depth01">음반</a>
                            <ul class="depth02">
                                <li><a href="">음반</a></li>
                                <li><a href="">DVD</a></li>
                                <li><a href="">음반</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="depth01">중고장터</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>