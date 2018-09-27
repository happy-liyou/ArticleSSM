package com.ll.c;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ll.bean.Lost;
import com.ll.bean.Type;
import com.ll.service.LostService;

@Controller
public class LostC {
	
	@Autowired
	private LostService lostService;
	
		@RequestMapping("queryLosts.do")
		public ModelAndView queryLosts(){
			 
			List<Lost> losts = lostService.queryAllLosts();
			ModelAndView mv = new ModelAndView();
			mv.addObject("losts",losts);
			mv.setViewName("losts-list");
			return mv;
		}
		
		//添加操作
		@RequestMapping("getInsertFrom.do")
		public ModelAndView getInsertLost(){
			List<Type> types = lostService.queryAllTypes();
			System.out.println("types="+types);
			ModelAndView mv = new ModelAndView();
			mv.addObject("types",types);
			mv.setViewName("insert");
			return mv;
		}
		
		@RequestMapping("insertlost.do")
		public ModelAndView insertLost(Lost lost) {
			ModelAndView mv = new ModelAndView();
			int rows = lostService.insertLost(lost);
			if(rows>0){
				 mv.setViewName("redirect:queryLosts.do");
			}else{
				mv.setViewName("fail");
			}
			return mv;
		}
		
		@RequestMapping("getUpdateFrom.do")
		public ModelAndView getUpdateFrom(Integer lostId){
			
			System.out.println("lostId="+lostId);
			Lost lost = lostService.queryLost(lostId);
			System.out.println(lost);
			List<Type> types = lost.getTypes();
			System.out.println("types05="+types);
			
			List<Type> alltypes = lostService.queryAllTypes();
			System.out.println("alltypes="+alltypes);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("lost",lost);
			mv.addObject("alltypes",alltypes);
			mv.setViewName("update");
			return mv;
		}
		
		@RequestMapping("updateLost.do")
		public ModelAndView updateLost(Lost lost){
			
			int result = lostService.updateLost(lost);
			
			ModelAndView mv = new ModelAndView();
			if(result>0){
				mv.setViewName("redirect:queryLosts.do");
			}else{
				mv.setViewName("fail");
			}
			return mv;
		}
}



