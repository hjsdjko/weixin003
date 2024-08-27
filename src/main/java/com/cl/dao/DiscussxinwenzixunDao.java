package com.cl.dao;

import com.cl.entity.DiscussxinwenzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscussxinwenzixunView;


/**
 * 新闻资讯评论表
 * 
 * @author 
 * @email 
 * @date 2024-04-27 15:17:32
 */
public interface DiscussxinwenzixunDao extends BaseMapper<DiscussxinwenzixunEntity> {
	
	List<DiscussxinwenzixunView> selectListView(@Param("ew") Wrapper<DiscussxinwenzixunEntity> wrapper);

	List<DiscussxinwenzixunView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussxinwenzixunEntity> wrapper);
	
	DiscussxinwenzixunView selectView(@Param("ew") Wrapper<DiscussxinwenzixunEntity> wrapper);
	

}
