package com.bw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.beasn.Param;
import com.bw.beasn.Shop;
import com.bw.service.ShopService;

@Controller
@RequestMapping("/")
public class ShopController {

	@Autowired
	private ShopService shopService;
	
	@RequestMapping("getShop")
	public String getShop(Model model, Param param){
		List<Shop> findGoods = shopService.findGoods(param);
		model.addAttribute("list", findGoods);
		model.addAttribute("param", param);
		return "list";
	}
	
	
}
