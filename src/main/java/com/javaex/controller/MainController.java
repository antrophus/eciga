package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.GoodsService;
import com.javaex.vo.CartVo;
import com.javaex.vo.GoodsVo;
import com.javaex.vo.UserVo;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	@Autowired
	private GoodsService goodsService;
	
	
	@RequestMapping(value="/main", method= {RequestMethod.GET, RequestMethod.POST})
	public String main( Model model ) {
		
		System.out.println("MainController.main()");
		
		List<GoodsVo> goodsList = goodsService.exeGoodsList();
		
		model.addAttribute("goodsList", goodsList);
		
		System.out.println(goodsList);
		
		return "/main/index";
	}
	
	
	/* goods read */
	@RequestMapping ( value="/read", method={RequestMethod.GET, RequestMethod.POST} )
	public String read ( @RequestParam(value="no") int no, Model model ) {
		
		System.out.println("MainController.read()");
		
		GoodsVo goodsVo = goodsService.exeGetReadOne(no);
		
		System.out.println(goodsVo);
		
		model.addAttribute("goodsVo", goodsVo);		
		
		return "/goods/GoodsInfo";
		//return "/main/read";
	}
	
	@ResponseBody
	@RequestMapping ( value="/insertCart", method={RequestMethod.GET, RequestMethod.POST} )
	public int insertCart ( @ModelAttribute CartVo cartVo, HttpSession session ) {
		System.out.println("MainController.insertCart()");

		//UserVo authoUser = (UserVo)session.getAttribute("authUser");
		//int uNo = authoUser.getuNo();
		
		int uNo= 2;
		cartVo.setuNo(uNo);
		System.out.println(cartVo);
			
		int count = goodsService.exeInsertCart(cartVo);
		
		return count;
		
	}
	
	
	/* 카트에 내 장바구니 목록 뿌리기 */
	@RequestMapping ( value="/cart", method={RequestMethod.GET, RequestMethod.POST} )
	public String cart ( @RequestParam(value="uno") int uno, Model model ) {
		
		System.out.println("MainController.cart()");
		
		List<CartVo> cartList = goodsService.exeCartList(uno);
		
		System.out.println(uno + " 유저의 장바구니 list " + cartList);
		
		model.addAttribute("cartList", cartList);
			
		
		return "/goods/GoodsCart";
		
	}
	
	
	/* 주문하기 */
	@RequestMapping ( value="/pay", method={RequestMethod.GET, RequestMethod.POST} )
	public String payment ( @RequestParam(value="uno") int uno, Model model ) {
		
		System.out.println("MainController.payment()");
		
		List<CartVo> cartList = goodsService.exeCartList(uno);
		
		System.out.println(uno + " 유저의 장바구니 list " + cartList);
		
		model.addAttribute("cartList", cartList);
			
		
		return "/kart/payment";
		
	}
	
	
	
	

	
	
	
	
	
	
	
	/* 업로드 */
	/*
	@RequestMapping ( value="/attach/upload", method={RequestMethod.GET, RequestMethod.POST}  )
	public String upload ( @RequestParam(value="file") MultipartFile file, Model model ) {
		
		System.out.println("AttachController.upload()");
		//System.out.println(file.getOriginalFilename());
		//System.out.println(file);
		
		
		String saveName = attachService.upload(file);
		System.out.println("saveName: " + saveName);
		
		model.addAttribute("saveName", saveName);
		
		return "/attach/result";
		
	}
	
	
	
	*/
	
	
	
	
	
	
	

	

	
	
	@RequestMapping(value="/customer", method= {RequestMethod.GET, RequestMethod.POST})
	public String customer() {
		
		System.out.println("MainController.customer()");
		
		return "/adminpage/ManageCustomer";
	}
	
	

	
	@RequestMapping(value="/info", method= {RequestMethod.GET, RequestMethod.POST})
	public String info(Model model) {
		
		System.out.println("MainController.info()");
		int price = 99000;
		
		model.addAttribute("price", price);
		
		return "/goods/GoodsInfo";
	}
	
	
	@RequestMapping(value="/order", method= {RequestMethod.GET, RequestMethod.POST})
	public String order() {
		
		System.out.println("MainController.order()");
		
		return "/adminpage/ManageOrder";
	}
	

	
	
	
	

}
