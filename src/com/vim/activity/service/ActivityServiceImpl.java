package com.vim.activity.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vim.activity.dao.ActivityDao;
import com.vim.activity.entity.Activity;

@Repository(value = "ActivityService")  
@Transactional 
public class ActivityServiceImpl implements ActivityService {
	 @Resource(name = "ActivityMapper")  
	private ActivityDao activitydao;

	@Override
	public List<Activity> getNewActivities() {
		// TODO Auto-generated method stub
		//String sql = "select * from activity"; 
		return activitydao.selectAll();
	}

	@Override
	public Activity createNewActivity(Activity act) {
		// TODO Auto-generated method stub
		activitydao.insert(act);
		
		return act;
	}

}
