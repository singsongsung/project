package com.springcompany.prz.basket.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springcompany.biz.basket.dao.BasketVO;
import com.springcompany.biz.basket.service.BasketService;
import com.springcompany.biz.book.dao.BookVO;
import com.springcompany.biz.user.dao.UserVO;




@Controller
public class BasketController {

	@Autowired
	BasketService basketService;
	

	 @RequestMapping(value="/insertBasket.ba",method=RequestMethod.POST)
	 public String insertBasketProc(BasketVO vo, HttpSession session) throws IOException {
	      System.out.println("장바구니 추가 처리.");
	      
	      String id = (String) session.getAttribute("id");
	      vo.setId(id);
			 
	        
	       int count = basketService.countBasket(vo.getBookNum());
	         
	         if(count == 0) {
	            basketService.insertService(vo);
	        
	         } else {
	
	           
	        	 basketService.changeBasket(vo);
	  
	        	 System.out.println("중복처리");
	         }
	      
	      
	      return "redirect:getBasketList.ba";
	   }
	 
	 	
	 
		@RequestMapping("/getBasketList.ba")
		public String getBasketList(HttpSession session, Model model, BasketVO vo) {
			
			 System.out.println("장바구니 목록.");
			 String id = (String) session.getAttribute("id");
		     
			
			List<BasketVO> list = basketService.getServiceList(id);

			model.addAttribute("basketList", list);
			return "/basket/getBasketList"; 
		
		}
		
	 
		
		  
		  
		  @RequestMapping("/getBasket.ba") public String getBasket(BasketVO vo, Model
		  model) {
		  
		  System.out.println("장바구니 상세화면");
		  
		  BasketVO basket = basketService.getService(vo.getBasketNum());
		  
		  
		  model.addAttribute("basket", basket);
		  
		  
		  
		  return "/basket/getBasket";
		  
		  
		  }
		 

		
		 
		  
		  @RequestMapping("/updateBasket.ba") public String updateBasket(BasketVO vo, HttpSession session) {
		  System.out.println("장바구니 수정 처리");
		
		  	 String id = (String) session.getAttribute("id");
			 basketService.updateService(vo); 
			 
			 
		 return "redirect:getBasketList.ba"; }
		
		
		
		@RequestMapping("/deleteBasket.ba")
		public String deleteBasket(BasketVO vo) {
			System.out.println("장바구니 삭제 기능");
			
			basketService.deleteService(vo.getBasketNum());
			
			return "redirect:getBasketList.ba";
			
		}
		
	      
	      @RequestMapping("/getBuy.ba") public String buyBasket(BasketVO vo, Model model) {
	      
	      
	       
	         
	    	  BasketVO basket = basketService.getService(vo.getBasketNum());
			  
			  
			  model.addAttribute("basket", basket);
	         
			   System.out.println("결제 값 넣기"); 
			   System.out.println("결제 화면 이동");
			   
			   basketService.deleteService(vo.getBasketNum());

	         return "/basket/getBuy";
	          	      	
	      }

	
	

	

	
}


