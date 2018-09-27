package com.ll.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ll.bean.Lost;
import com.ll.bean.Type;
import com.ll.dao.LostMapper;


@Service
public class LostService {
	

	@Autowired
	private LostMapper lostMapper;
	
	//通过查询id查询一个lost
	public Lost queryLost(Integer lostId){

		Lost lost = lostMapper.queryLost(lostId);
		return lost;		
	}
	
	//查询所有的lost
	public List <Lost> queryAllLosts(){	
		 List<Lost> losts = lostMapper.queryAllLosts();
		 return losts;
	}
	
	public int insertLost(Lost lost){
		int result = lostMapper.insertLost(lost);
		if(result>0){
			//中间表添加
			String ids = lost.getCids();
			if(ids!=null){
				String[] cids = ids.split(",");
				Map<Object, Object> map = new HashMap<>();
				map.put("lId",lost.getLostId());
				map.put("cids", cids);
				lostMapper.insertLostType(map);
			}
		}
		return result;
		
	}
	
	public int updateLost(Lost lost){
		System.out.println("lost="+lost);
		//1.删除中间表的lIb
		lostMapper.deleteLostType(lost.getLostId());
		//2.中间表的添加
		 String[] cids = lost.getCids().split(",");
		
		//System.out.println("cids="+cids);
		
			
			Map<Object, Object> map = new HashMap<>();
			
			map.put("lId",lost.getLostId());
			map.put("cids",cids );
			
			lostMapper.insertLostType(map);
			int result = lostMapper.updateLost(lost);		
			return result;
	}
	
	public	List<Type> queryAllTypes(){
		return lostMapper.queryAllTypes();
	}
}
