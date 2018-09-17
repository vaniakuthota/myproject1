package com.niit.Control;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartItemDao;
import com.niit.dao.ProductDao;
import com.niit.models.CartItem;
import com.niit.models.Product;

@Controller
public class HomeControl {
	
	@Autowired
	private ProductDao productDao;	
	   @Autowired
		private CartItemDao cartItemDao;
	public HomeControl(){
		System.out.println("HomeController bean is instantiated");
	}
	//http://localhost:8080/project1frontend/home - This request will be handled
	//by this handler method homePage()
	@RequestMapping(value="/home")
	public String homePage(HttpSession session,@AuthenticationPrincipal Principal principal,Model model){
		session.setAttribute("categories",productDao.getAllCategories());
		List<Product> products=productDao.getAllProducts();
		//Attribute name is the Key - productList
		//value - List<Product> products is the data
		model.addAttribute("productsList",products);
		String email=principal.getName();
		List<CartItem> cartItems=cartItemDao.getCart(email);
		session.setAttribute("cartSize",cartItems.size());
		return "home";
	}
	@RequestMapping(value="/aboutus")
	public String aboutusPage(){
		return "aboutus";
	}
	@RequestMapping(value="/login")
	public String login(){
		return "login";
	}
	@RequestMapping(value="/loginerror")
	public String loginFailed(Model model){
		model.addAttribute("error","Invalid credentials..");
		return "login";
	}
	@RequestMapping(value="/logout")
	public String logout(Model model){
		model.addAttribute("msg","Loggedout successfully...");
		return "login";
	}
	}