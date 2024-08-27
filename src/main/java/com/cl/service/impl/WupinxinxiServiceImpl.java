package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.WupinxinxiDao;
import com.cl.entity.WupinxinxiEntity;
import com.cl.service.WupinxinxiService;
import com.cl.entity.view.WupinxinxiView;

@Service("wupinxinxiService")
public class WupinxinxiServiceImpl extends ServiceImpl<WupinxinxiDao, WupinxinxiEntity> implements WupinxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WupinxinxiEntity> page = this.selectPage(
                new Query<WupinxinxiEntity>(params).getPage(),
                new EntityWrapper<WupinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WupinxinxiEntity> wrapper) {
		  Page<WupinxinxiView> page =new Query<WupinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<WupinxinxiView> selectListView(Wrapper<WupinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WupinxinxiView selectView(Wrapper<WupinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
