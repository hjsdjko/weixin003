package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DiscusswupinxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscusswupinxinxiView;


/**
 * 物品信息评论表
 *
 * @author 
 * @email 
 * @date 2024-04-27 15:17:32
 */
public interface DiscusswupinxinxiService extends IService<DiscusswupinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusswupinxinxiView> selectListView(Wrapper<DiscusswupinxinxiEntity> wrapper);
   	
   	DiscusswupinxinxiView selectView(@Param("ew") Wrapper<DiscusswupinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusswupinxinxiEntity> wrapper);
   	

}

