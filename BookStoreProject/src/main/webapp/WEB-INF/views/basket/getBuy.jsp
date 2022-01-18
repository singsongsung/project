<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html >
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
    <link rel='stylesheet' type='text/css' media='screen' href='../css/buy.min.css'>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src='main.js'></script>
   
</head>
<style>
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}table{border-collapse:collapse;border-spacing:0}input{border:none;outline:none}address,em{font-style:normal}a{color:inherit;text-decoration:none;outline:none}a:hover,a:active{text-decoration:none;color:inherit}iframe{overflow:hidden;margin:0;padding:0;border:0}button{border:0 none;background-color:transparent;cursor:pointer}*,*:after,*:before{-webkit-box-sizing:border-box;box-sizing:border-box}.hidden{width:1px;height:1px;overflow:hidden;position:absolute;left:-9999px}.ol{outline:1px solid #f00}.clearFix:after,.fList:after{content:'';display:block;clear:both}html{font-size:12pt}body{line-height:1.5;color:#333;font-family:"Noto Sans KR","Noto Sans","돋움",sans-serif;overflow-x:hidden}.wrapper{max-width:1220px;width:1220px;margin:auto}.wrapper .header{width:100%;height:auto}.wrapper .header .header_top{width:100%;height:30px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end;margin-bottom:10px}.wrapper .header .header_top .util{display:-webkit-box;display:-ms-flexbox;display:flex;width:100%}.wrapper .header .header_top .util>li{margin:0 5px;position:relative;margin-right:10px;-webkit-transition:all 0.25s ease-out;transition:all 0.25s ease-out}.wrapper .header .header_top .util>li:first-child{-webkit-box-flex:1;-ms-flex:1;flex:1;text-align:left;color:#BDBDBD}.wrapper .header .header_top .util>li:last-child{margin-right:0}.wrapper .header .header_top .util>li:hover{color:#3E7C17;text-decoration:underline}.wrapper .header .header_middle{display:-webkit-box;display:-ms-flexbox;display:flex;padding:0 20px;margin-bottom:25px}.wrapper .header .header_middle .logo{width:180px;height:50px}.wrapper .header .header_middle .search{-webkit-box-flex:1;-ms-flex:1;flex:1;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.wrapper .header .header_middle .search .search_box{width:455px;height:50px;border:3px solid #3E7C17;border-radius:30px;color:#3E7C17;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.wrapper .header .header_middle .search .search_box .search_form{width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;padding:0 15px}.wrapper .header .header_middle .search .search_box .search_form .search_list{width:70px;margin-right:10px;color:#3E7C17;font-weight:500;text-align:center;background-color:transparent;border:none;outline:none}.wrapper .header .header_middle .search .search_box .search_form .search_list>option{background-color:#fff;color:#3E7C17}.wrapper .header .header_middle .search .search_box .search_form .search_input{-webkit-box-flex:1;-ms-flex:1;flex:1;border:none;outline:none}.wrapper .header .header_middle .search .search_box .search_form .search_btn>i{font-size:20px;font-weight:900;color:#3E7C17}.wrapper .header .header_middle .empty{width:180px}.wrapper .header .header_bottom .gnb .gnb_list{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-pack:distribute;justify-content:space-around}.wrapper .header .header_bottom .gnb .gnb_list>li{width:calc(100% / 7);text-align:center}.wrapper .header .header_bottom .gnb .gnb_list>li .depth01{display:block;width:100%;background-color:#3E7C17;color:#fff;padding:10px 20px}.wrapper .header .header_bottom .gnb .gnb_list>li .depth02{display:none;padding:10px 20px;background-color:#E8E1D9}.wrapper .header .header_bottom .gnb .gnb_list>li .depth02>li>a{padding:5px 10px;display:block}.wrapper .content_wrap .content_inner .titleBanner{width:100%;display:inline-block;color:#E8E1D9;background-color:#3E7C17}.wrapper .content_wrap .content_inner .titleBanner li{float:left;position:relative;padding:0 2px;height:100px;line-height:100px}.wrapper .content_wrap .content_inner .titleBanner .title{font-weight:bold;font-size:48px;padding-left:20px}.wrapper .content_wrap .content_inner .titleBanner .desc{line-height:135px}.wrapper .content_wrap .content_inner .listBtn{width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;margin:10px 0;background-color:#E8E1D9;padding:5px 0;color:#3E7C17}.wrapper .content_wrap .content_inner .order{margin:20px}.wrapper .footer{width:100%;padding:20px 20px;min-height:150px;height:150px;background-color:#E8E1D9;display:-webkit-box;display:-ms-flexbox;display:flex}.wrapper .footer .footer_left{display:-webkit-box;display:-ms-flexbox;display:flex;height:100%;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-ms-flex-line-pack:justify;align-content:space-between;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-flex:1;-ms-flex:1;flex:1}.wrapper .footer .footer_left>p{font-weight:500}.wrapper .footer .footer_left span{font-size:12px}.wrapper .footer .footer_right{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-ms-flex-line-pack:center;align-content:center;height:100%}.wrapper .footer .footer_right>img{-o-object-fit:contain;object-fit:contain}

</style>
<body>
    <div class="wrapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
               <center>
                    <br>
                    <ul class="titleBanner">
                        <li class="title">주문 완료</li>
                        <li class="desc">주문 내역을 확인하세요.</li>
                    </ul>
                     
                    <table width="960" cellspacing="0" cellpadding="0" border="0" align="center" class="order">
                        <tr>
                        <td colspan=2 align=center>
                           
                           
                            <table width=50% border=0 cellpadding="0" cellspacing="1">
                            
                            
                            <tr >
                                <td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">주문번호</td>
                                <td width=250 height=24 class="td"><font size=2>1011</font></td>
                            </tr>
                                        <input type = "hidden" name = "bookNum" value="${basket.bookNum}" >
                            <tr >
                                <td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">제목</td>
                                <td width=250 height=24><font size=2>${basket.basketBookTitle }</font></td>
                            </tr>
                            <tr >
                                <td  style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">저자</td>
                                <td width=250 height=24><font size=2>${basket.basketBookWriter }</font></td>
                            </tr>
                            <tr >
                                <td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">상품 개수</td>
                                <td width=250 height=24><font size=2>
                                
                                ${basket.basketBookAmount}</font></td>
                            
                            </tr>
                            
                            <tr >
                                <td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">결제 가격</td>
                                    
                                <td width=250 height=24><font size=2><fmt:formatNumber value="${(basket.basketBookPrice)*(basket.basketBookAmount)}" pattern="###,###,###"/></font></td>
                            </tr>
                            
                            
                            <tr >
                                <td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">입금 은행</td>
                                <td width=250 height=24><font size=2>신한은행</font></td>
                            </tr>
                            <tr>
                                <td style="background-color: #F0F0F0; height: 1px;" colspan=6>
                            </tr>
                            <tr>
                                <td style="background-color: #F0F0F0; height: 1px;" colspan=6>
                            </tr>
                            <tr >
                                <td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
                                    bgcolor="f7f7f7" align="center">입금 계좌</td>
                                <td width=250 height=24><font size=2>110 - 000 - 000000</font></td>
                            </tr>
                            <tr>
                                <td style="background-color: #F0F0F0; height: 1px;" colspan=6>
                            </tr>
                        </table>
                        </td>
                        </tr>
                        </table>
                        
                        
                        
                        <button class="listBtn" ><a href="getBookList.bs">책 목록</a></button>
                        <button class="listBtn"><a href="getBasketList.ba">장바구니 목록</a></button>
                </center>
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
