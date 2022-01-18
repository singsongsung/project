<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="./resources/css/clear.css">
    <link rel="stylesheet" href="./resources/css/header.css">
    <link rel="stylesheet" href="./resources/css/main.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src='main.js'></script>
   
</head>

<body>
    <div class="wrapper">
          <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
                <div class="mainVisual">
                    <ul class="swiper-wrapper">
                        <li class="visual01 swiper-slide">
                            <div class="bg"></div>
                        </li>
                        <li class="visual02 swiper-slide">
                            <div class="bg"></div>
                        </li>
                        <li class="visual03 swiper-slide">
                            <div class="bg"></div>
                        </li>
                    </ul>
                </div>
                <div class="bookList_container">
                    <div class="book_con_title">
                        <h2>베스트셀러</h2>
                        <div class="book_more"><a href="getBookList.bs?user=user">더보기<i class="xi-plus-min"></i></a></div>
                    </div>
                    <div class="book_swiper topbook_swiper">
                        <ul class="book_con_list swiper-wrapper">
                            <c:forEach items="${topList}" var="top">
                                <li class="book_wrapper swiper-slide">
                                    <a href="getBook.bs?bookNum=${top.bookNum}">
                                        <div class="book_container">
                                            <img src="./bookUpload/${top.bookFile}" alt="" class="book_img">
                                            <p class="book_title">${top.bookTitle }</p>
                                            <span class="book_writer">${top.bookWriter}</span>
                                        </div>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="bookList_container">
                    <div class="book_con_title">
                        <h2>새로나온책</h2>
                        <div class="book_more"><a href="getBookList.bs?user=user">더보기<i class="xi-plus-min"></i></a></div>
                    </div>
                    <div class="book_swiper topbook_swiper">
                        <ul class="book_con_list swiper-wrapper">
                            <c:forEach items="${newList}" var="newList">
                                <li class="book_wrapper swiper-slide">
                                    <a href="getBook.bs?bookNum=${newList.bookNum}">
                                        <div class="book_container">
                                            <img src="./bookUpload/${newList.bookFile}" alt="" class="book_img">
                                            <p class="book_title">${newList.bookTitle }</p>
                                            <span class="book_writer">${newList.bookWriter}</span>
                                        </div>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </article>
          <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mainVisual", {
        loop:true,
        pagination: {
          el: ".swiper-pagination",
          dynamicBullets: true,
        },
        autoplay: {
          delay: 2800,
          disableOnInteraction: false,
        },
    });
   
</script>