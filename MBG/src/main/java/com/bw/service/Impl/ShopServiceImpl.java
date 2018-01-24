package com.bw.service.Impl;

import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.beasn.Param;
import com.bw.beasn.Shop;
import com.bw.mapper.ShopMapper;
import com.bw.service.ShopService;
@Service
public class ShopServiceImpl implements ShopService{
	@Autowired
	private ShopMapper shopMapper;
	
	@Override
	public List<Shop> findGoods(Param param) {
		HttpSolrClient client = new HttpSolrClient("http://192.168.15.129:8081/solr/mbg");
		SolrQuery query = new SolrQuery();
		String sql = "*:*";
		if(param.getName() != null){
			sql = "name:" + param.getName();
		}
		query.setQuery(sql);
		query.setHighlight(true);
		query.addHighlightField("name");
		query.setHighlightSimplePre("<font color='red'>");
		query.setHighlightSimplePost("</font>");
		query.setHighlightSnippets(2);
		query.setHighlightFragsize(100);
		try {
			QueryResponse q = client.query(query);
			Map<String, Map<String, List<String>>> highlighting = q.getHighlighting();
			List<Shop> beans = q.getBeans(Shop.class);
			for (int i = 0; i < beans.size(); i++) {
				String id = beans.get(i).getId();
				if(highlighting.get(id) != null && highlighting.get(id).get("name") != null){
					beans.get(i).setName(highlighting.get(id).get("name").get(0));
				}
			}
			client.close();
			return beans;
		} catch (SolrServerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}



}
