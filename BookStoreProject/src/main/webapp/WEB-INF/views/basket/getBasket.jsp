<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/common.css">
<link rel='stylesheet' type='text/css' media='screen' href='../css/basket.min.css'>
<title>장바구니 상세</title>
</head>
<style>
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}table{border-collapse:collapse;border-spacing:0}input{border:none;outline:none}address,em{font-style:normal}a{color:inherit;text-decoration:none;outline:none}a:hover,a:active{text-decoration:none;color:inherit}iframe{overflow:hidden;margin:0;padding:0;border:0}button{border:0 none;background-color:transparent;cursor:pointer}*,*:after,*:before{-webkit-box-sizing:border-box;box-sizing:border-box}.hidden{width:1px;height:1px;overflow:hidden;position:absolute;left:-9999px}.ol{outline:1px solid #f00}.clearFix:after,.fList:after{content:'';display:block;clear:both}html{font-size:12pt}body{line-height:1.5;color:#333;font-family:"Noto Sans KR","Noto Sans","돋움",sans-serif;overflow-x:hidden}.wrapper{max-width:1220px;width:1220px;margin:auto}.wrapper .header{width:100%;height:auto}.wrapper .header .header_top{width:100%;height:30px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end;margin-bottom:10px}.wrapper .header .header_top .util{display:-webkit-box;display:-ms-flexbox;display:flex;width:100%}.wrapper .header .header_top .util>li{margin:0 5px;position:relative;margin-right:10px;-webkit-transition:all 0.25s ease-out;transition:all 0.25s ease-out}.wrapper .header .header_top .util>li:first-child{-webkit-box-flex:1;-ms-flex:1;flex:1;text-align:left;color:#BDBDBD}.wrapper .header .header_top .util>li:last-child{margin-right:0}.wrapper .header .header_top .util>li:hover{color:#3E7C17;text-decoration:underline}.wrapper .header .header_middle{display:-webkit-box;display:-ms-flexbox;display:flex;padding:0 20px;margin-bottom:25px}.wrapper .header .header_middle .logo{width:180px;height:50px}.wrapper .header .header_middle .search{-webkit-box-flex:1;-ms-flex:1;flex:1;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.wrapper .header .header_middle .search .search_box{width:455px;height:50px;border:3px solid #3E7C17;border-radius:30px;color:#3E7C17;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.wrapper .header .header_middle .search .search_box .search_form{width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;padding:0 15px}.wrapper .header .header_middle .search .search_box .search_form .search_list{width:70px;margin-right:10px;color:#3E7C17;font-weight:500;text-align:center;background-color:transparent;border:none;outline:none}.wrapper .header .header_middle .search .search_box .search_form .search_list>option{background-color:#fff;color:#3E7C17}.wrapper .header .header_middle .search .search_box .search_form .search_input{-webkit-box-flex:1;-ms-flex:1;flex:1;border:none;outline:none}.wrapper .header .header_middle .search .search_box .search_form .search_btn>i{font-size:20px;font-weight:900;color:#3E7C17}.wrapper .header .header_middle .empty{width:180px}.wrapper .header .header_bottom .gnb .gnb_list{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-pack:distribute;justify-content:space-around}.wrapper .header .header_bottom .gnb .gnb_list>li{width:calc(100% / 7);text-align:center}.wrapper .header .header_bottom .gnb .gnb_list>li .depth01{display:block;width:100%;background-color:#3E7C17;color:#fff;padding:10px 20px}.wrapper .header .header_bottom .gnb .gnb_list>li .depth02{display:none;padding:10px 20px;background-color:#E8E1D9}.wrapper .header .header_bottom .gnb .gnb_list>li .depth02>li>a{padding:5px 10px;display:block}.wrapper .content_wrap .content_inner .titleBanner{width:100%;display:inline-block;color:#E8E1D9;background-color:#3E7C17}.wrapper .content_wrap .content_inner .titleBanner li{float:left;position:relative;padding:0 2px;height:100px;line-height:100px}.wrapper .content_wrap .content_inner .titleBanner .title{font-weight:bold;font-size:48px;padding-left:20px}.wrapper .content_wrap .content_inner .titleBanner .desc{line-height:135px}.wrapper .content_wrap .content_inner .basketInfo{width:100%;background-color:#125C13;color:#F4A442}.wrapper .content_wrap .content_inner #basketTable{width:100%;background-color:#E8E1D9;text-align:center;padding:20px}.wrapper .content_wrap .content_inner .btns{margin:20px}.wrapper .content_wrap .content_inner .btns a{border:2px solid #E8E1D9;border-radius:10px;display:inline-block;padding:10px 10px 10px 10px;-webkit-transition:0.25s ease;transition:0.25s ease;color:#3E7C17;font-weight:bold}.wrapper .content_wrap .content_inner .btns a:hover{background-color:#3E7C17;border-color:#3E7C17;color:#F4A442}.wrapper .content_wrap .content_inner .basketListBtn{width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;margin:10px 0;background-color:#E8E1D9;padding:5px 0;color:#3E7C17}.wrapper .content_wrap .content_inner .orderlist{background-color:#E8E1D9}.wrapper .content_wrap .content_inner .orderlist .td{background-color:#125C13;color:#E8E1D9;padding:10px;border:1px solid #fff}.wrapper .footer{width:100%;padding:20px 20px;min-height:150px;height:150px;background-color:#E8E1D9;display:-webkit-box;display:-ms-flexbox;display:flex}.wrapper .footer .footer_left{display:-webkit-box;display:-ms-flexbox;display:flex;height:100%;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-ms-flex-line-pack:justify;align-content:space-between;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-flex:1;-ms-flex:1;flex:1}.wrapper .footer .footer_left>p{font-weight:500}.wrapper .footer .footer_left span{font-size:12px}.wrapper .footer .footer_right{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-ms-flex-line-pack:center;align-content:center;height:100%}.wrapper .footer .footer_right>img{-o-object-fit:contain;object-fit:contain}

</style>
<body>

	<div class="wrapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
                <br>
				<div class="bannerBox">
					<ul class="titleBanner">
						<li class="title">장바구니 상세</li>
						<li class="desc">주문하실 상품의 정보를 확인하세요.</li>
					</ul>
				</div>
					

					
					<form method = "post" action="updateBasket.ba" >
						<table border="1" cellpadding="0" cellspacing="0" id="basketTable">
						<input type = "hidden" name = "bookNum" value="${basket.bookNum}" >
							<tr class="basketInfo">
								<th  width="100">제목</th>
								<th  width="200">저자</th>
								<th  width="150">상품 개수</th>
								<th  width="150">권 당 가격</th>
								<th  width="150">등록일</th>
							</tr>

							<tr>
								<td >${basket.basketBookTitle }</td>
								<td >${basket.basketBookWriter }</td>
								<td >${basket.basketBookAmount}</td>
								<td ><fmt:formatNumber value="${basket.basketBookPrice }" pattern="###,###,###"/></td>
								<td>${basket.basketDate }</td>
							</tr>
						</table>
					</form>
					<center><button class="btns"><a href="deleteBasket.ba?basketNum=${ basket.basketNum }">장바구니 삭제</a></button></center>
					<center>
					
						<table border="1" cellpadding="0" cellspacing="0" class="orderlist">
						
							<tr>
								<td class="td">주문번호</td>
								<td >
								 1011
								</td>	
							</tr>
							<tr>
								<td class="td">총합</td>
								<td >
								<fmt:formatNumber value="${(basket.basketBookPrice)*(basket.basketBookAmount) }" pattern="###,###,###"/>
								</td>	
							</tr>
							<tr>
								<td class="td" >계좌</td>
								<td >
								신한 110 - 000 - 000000
								</td>	
							</tr>
						</table>	
							
							
						<button class="btns"><a href="getBuy.ba?basketNum=${basket.basketNum}">결제하기</a></button>
					</center>
				
					<br>
					
					
					
				
					
					<button class="basketListBtn"><a href="getBasketList.ba">장바구니 목록</a></button>
					
					
					
					
				
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
	
</body>
</html>
