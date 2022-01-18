<%@page contentType="text/html; charset=UTF-8"%>
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
    <link rel="stylesheet" href="./resources/css/insertBookForm.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src='main.js'></script>
   
</head>

<body>
    <div class="wrapper">
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
                <div class="book_add_container">
                    <h2 class="inner_title">책 등록</h2>
                    <form action="insertBook.bs" method="post" enctype="multipart/form-data"class="insert_book_form">
                        <div class="insert_container">
                            <div class="one_insert"><label for="bookTitle"><span>제목</span><input type="text" name="bookTitle" id="bookTitle"/></label></div>
                            <div class="two_insert">
                                <label for="bookWriter"><span>저자</span><input type="text" name="bookWriter" id="bookWriter"/></label>
                                <label for="bookPublisher"><span>출판사</span><input type="text" name="bookPublisher" id="bookPublisher" /></label>
                            </div>
                            <div class="two_insert">
                                <label for="bookGenre"><span>장르</span><input type="text" name="bookGenre" id="bookGenre" /></label>
                                <label for="bookPrice"><span>가격</span><input type="text" name="bookPrice" id="bookPrice"/></label>
                            </div>
                            <div class="one_insert">
                                <label for="bookContent">
                                    <span>줄거리</span>
                                    <textarea name="bookContent" id="bookContent" cols="30" rows="10"></textarea>
                                </label>
                            </div>
                            <div class="one_insert"><label for=""><span>파일 첨부</span><input type="file" name="uploadFile" /></label></div>
                        </div>
                        <div class="button_con"><button type="submit" class="book_submit_btn">등록</button></div>
                    </form>
                    <a href="getBookList.bs?user=admin" class="back"><i class="xi-backspace"></i> 돌아가기</a>
                </div>
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
