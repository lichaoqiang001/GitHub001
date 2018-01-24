package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.beasn.Param;
import com.bw.beasn.Shop;


public interface ShopService {

	List<Shop> findGoods(Param param);
	
}
