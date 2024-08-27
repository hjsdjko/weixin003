package com.cl.dao;

import com.cl.entity.DiscusswupinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscusswupinxinxiView;


/**
 * 物品信息评论表
 * 
 * @author 
 * @email 
 * @date 2024-04-27 15:17:32
 */
public interface DiscusswupinxinxiDao extends BaseMapper<DiscusswupinxinxiEntity> {
	
	List<DiscusswupinxinxiView> selectListView(@Param("ew") Wrapper<DiscusswupinxinxiEntity> wrapper);

	List<DiscusswupinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusswupinxinxiEntity> wrapper);
	
	DiscusswupinxinxiView selectView(@Param("ew") Wrapper<DiscusswupinxinxiEntity> wrapper);
	

}
