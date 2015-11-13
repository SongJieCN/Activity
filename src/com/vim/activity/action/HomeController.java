package com.vim.activity.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.vim.activity.entity.Activity;
import com.vim.activity.service.ActivityService;

@Controller  
public class HomeController {
	 @Resource(name = "ActivityService") 
	 private ActivityService activitySrv;
	
	@RequestMapping("index")
	public ModelAndView index(){
		List<Activity> acts = activitySrv.getNewActivities();
	    Map<String, Object> map = new HashMap<String, Object>();  
  
        map.put("result", acts);  
  
        return new ModelAndView("index", map); 
	}
	
	@RequestMapping("index-new")
	public ModelAndView newAct(){
		List<Activity> acts = activitySrv.getNewActivities();
	    Map<String, Object> map = new HashMap<String, Object>();  
  
        map.put("result", acts);  
  
        return new ModelAndView("index-new", map); 
	}
	
	@RequestMapping(value="index-create",method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_VALUE,
            produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView createAct(@RequestBody Activity act){
		
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		act.setId(System.currentTimeMillis());
		 activitySrv.createNewActivity(act);
		 
		 
  
        return null;
	}
	
	@RequestMapping("mycreate")
	public ModelAndView myCreate(){
	    Map<String, Object> map = new HashMap<String, Object>(); 
		try{
		List<Activity> acts = activitySrv.getNewActivities();
 
  
        map.put("result", acts);  
		}catch(Exception ex){
			ex.printStackTrace();
		}
  

		return new ModelAndView("mycreate", map); 
	}
}
