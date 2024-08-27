package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DiscussxinwenzixunEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscussxinwenzixunView;


/**
 * 新闻资讯评论表
 *
 * @author 
 * @email 
 * @date 2024-04-27 15:17:32
 */
public interface DiscussxinwenzixunService extends IService<DiscussxinwenzixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxinwenzixunView> selectListView(Wrapper<DiscussxinwenzixunEntity> wrapper);
   	
   	DiscussxinwenzixunView selectView(@Param("ew") Wrapper<DiscussxinwenzixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxinwenzixunEntity> wrapper);
   	

}

