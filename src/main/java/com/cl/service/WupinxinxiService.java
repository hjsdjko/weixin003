package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.WupinxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WupinxinxiView;


/**
 * 物品信息
 *
 * @author 
 * @email 
 * @date 2024-04-27 15:17:31
 */
public interface WupinxinxiService extends IService<WupinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WupinxinxiView> selectListView(Wrapper<WupinxinxiEntity> wrapper);
   	
   	WupinxinxiView selectView(@Param("ew") Wrapper<WupinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WupinxinxiEntity> wrapper);
   	

}

