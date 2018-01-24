package com.bw.mapper;

import java.util.List;

import com.bw.beasn.Param;
import com.bw.beasn.Shop;

public interface ShopMapper {

	List<Shop> findGoods(Param param);
	
}
