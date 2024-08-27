package com.cl.dao;

import com.cl.entity.WupinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WupinxinxiView;


/**
 * 物品信息
 * 
 * @author 
 * @email 
 * @date 2024-04-27 15:17:31
 */
public interface WupinxinxiDao extends BaseMapper<WupinxinxiEntity> {
	
	List<WupinxinxiView> selectListView(@Param("ew") Wrapper<WupinxinxiEntity> wrapper);

	List<WupinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<WupinxinxiEntity> wrapper);
	
	WupinxinxiView selectView(@Param("ew") Wrapper<WupinxinxiEntity> wrapper);
	

}
