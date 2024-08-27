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


import com.cl.dao.DiscussxinwenzixunDao;
import com.cl.entity.DiscussxinwenzixunEntity;
import com.cl.service.DiscussxinwenzixunService;
import com.cl.entity.view.DiscussxinwenzixunView;

@Service("discussxinwenzixunService")
public class DiscussxinwenzixunServiceImpl extends ServiceImpl<DiscussxinwenzixunDao, DiscussxinwenzixunEntity> implements DiscussxinwenzixunService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxinwenzixunEntity> page = this.selectPage(
                new Query<DiscussxinwenzixunEntity>(params).getPage(),
                new EntityWrapper<DiscussxinwenzixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxinwenzixunEntity> wrapper) {
		  Page<DiscussxinwenzixunView> page =new Query<DiscussxinwenzixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<DiscussxinwenzixunView> selectListView(Wrapper<DiscussxinwenzixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxinwenzixunView selectView(Wrapper<DiscussxinwenzixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
