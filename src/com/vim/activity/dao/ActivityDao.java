package com.vim.activity.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;  
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository; 

import com.vim.activity.entity.Activity;

@Repository(value = "ActivityMapper") 
public interface ActivityDao {
    @Select(value = "${sql}")   
    List<Activity> operateReturnBeans(@Param(value = "sql") String sql); 
    
    @Insert("insert into activity(topic, imgtopic, content, type, price, startdate, enddate, comment) "
    		+ "values(#{topic}, #{imgtopic}, #{content}, #{type}, #{price}, #{startdate}, #{enddate}, #{comment})")
    public int insert(Activity act);
    
    @Update("update activity set topic=#{topic},password=#{imgtopic},content=#{content},"
    		+ "type=#{type},price=#{price},startdate=#{startdate},enddate=#{enddate},comment=#{comment}"
    		+ " where id=#{id}")
    public int update(Activity act);
    
    @Delete("delete from activity where id=#{id}")
    public int delete(String id);
    
    @Select("select * from activity order by startdate asc")
    public List<Activity> selectAll();
    
    @Select("select count(*) c from activity")
    public int countAll();
    
    @Select("select * from activity where topic like #{topic}")
    public Activity findByUserName(String topic);
}
