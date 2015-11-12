package com.vim.activity.service;

import java.util.List;

import com.vim.activity.entity.Activity;

public interface ActivityService {
	public List<Activity> getNewActivities();
	
	public Activity createNewActivity(Activity act);
}
