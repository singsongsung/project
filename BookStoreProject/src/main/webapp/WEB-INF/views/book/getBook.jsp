<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Heaven Bookstore</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="./resources/css/clear.css">
    <link rel="stylesheet" href="./resources/css/header.css">
    <link rel="stylesheet" href="./resources/css/getBook.css">
    <script src='main.js'></script>
</head>

<body>
    <div class="wrapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
                <div class="book_info_container">
                    <form action="insertBasket.ba" method="post" class="book_info_form">
                        <input name="bookNum" type="hidden" value="${book.bookNum}">
                        <input name = "basketBookFile" type="hidden" value= "${book.bookFile }"/>
                        <div class="info_top">
                            <div class="book_info_left">
                                <!-- <div><img src="./bookUpload/${book.bookFile}" alt=""></div> -->
                                <div class="book_img_con"><img src="./bookUpload/${book.bookFile}" alt=""></div>
                            </div>
                            <div class="book_info_right">
                                <h2 class="book_title">${book.bookTitle}</h2><input type="hidden" name="basketBookTitle" value="${book.bookTitle}"/>
                                <ul class="info_ul">
                                    <li><span>${book.bookWriter} 지음</span><input type="hidden" name="basketBookWriter" value="${book.bookWriter}"/></li>
                                    <li><span>${book.bookPublisher}</span></li>
                                    <li><span>${book.bookGenre}</span></li>
                                    <li><span>${book.bookDate}</span></li>
                                </ul>
                                <div class="info_content">
                                    <p>${book.bookContent}</p>
                                    <input type="hidden" name="bookContent" value="${book.bookContent}">
                                </div>
                                <span class="info_price">
                                <fmt:formatNumber value="${book.bookPrice}" pattern="###,###,###"/>
                                    
                                    <input name ="basketBookPrice" type="hidden" value= "${book.bookPrice }"/>
                                </span>
                            </div>
                        </div>
                        <c:if test="${sessionScope.userRole != 1 }">
	                        <div class="info_bottom">
	                            <div class="order_cnt">
	                                <span>주문수량 : </span>
	                                <select name="basketBookAmount">
	                                    <c:forEach begin="1" end = "5" var="i">
	                                        <option value="${i}">${i}</option>
	                                    </c:forEach>
	                                </select>
	                            </div>
	                            <div class="book_btn">
	                                <button type="submit">장바구니</button>
	                                <button type="button">바로구매</button>
	                            </div>
	                        </div>
                        </c:if>
                    </form>
                </div>
                <c:choose>
                    <c:when test="${sessionScope.userRole == 1}">
                        <div class="book_control_btn">
                            <a href="insertBook.bs">글등록</a>
                            <a href="updateBook.bs?bookNum=${book.bookNum}" method="get">글수정</a>
                            <a href="deleteBook.bs?bookNum=${ book.bookNum }">글삭제</a>
                            <a href="getBookList.bs?user=admin">글목록</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="book_control_btn">
                            <a href="getBookList.bs?user=user">글목록</a>
                        </div>
                        <div class="review_container">
                            <div class="write_review">
                                <form action="insertReview.br" method="post">
                                    <input name="bookNum" type="hidden" value="${book.bookNum}"/>
                                    <div class="review_box_top">
	                                    <c:choose>
	                                    	<c:when test="${sessionScope.userId == null}">
	                                        	<label for="name"><span>작성자:</span><input id="name" type="text" name="reviewName"></label>
	                                        </c:when>
	                                        <c:otherwise>
	                                        	<label for="name"><span>작성자:${sessionScope.userName}</span><input id="name" type="hidden" name="reviewName" value="${sessionScope.userName}"></label>
	                                        </c:otherwise>
                                        </c:choose>
                                        <select name="reviewScore" id="">
                                            <c:forEach begin="1" end = "5" var="i">
                                                <option value="${i}">
                                                    <c:forEach begin="1" end="${i}">
                                                        <span>★</span>
                                                    </c:forEach></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="review_box_bottom">
                                        <textarea name="reviewContent" id="" cols="30" rows="10"></textarea>
                                        <button type="submit" class="review_submit">등록</button>
                                    </div>
                                </form>
                            </div>
                            <c:forEach items="${reviewList}" var="reviewList">
                                <div class="show_review">
                                    <input name="bookNum" type="hidden" value="${reviewList.reviewNum}" />
                                    <input name="bookNum" type="hidden" value="${reviewList.bookNum}" />
                                    <div class="review_box_top">
                                        <label for="name"><span>작성자 : ${reviewList.reviewName}</span></label>
                                        <c:forEach begin="1" end="${reviewList.reviewScore}">
                                            <span class="score_review">★</span>
                                        </c:forEach>
                                        <span class="review_date">${reviewList.reviewDate}</span>
                                        <a href="deleteReview.br?bookNum=${reviewList.bookNum}&reviewNum=${reviewList.reviewNum}"><i class="xi-trash"></i></a>
                                    </div>
                                    <div class="review_box_bottom">
                                        <p class="review_content">${reviewList.reviewContent}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
