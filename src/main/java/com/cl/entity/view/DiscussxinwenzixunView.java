package com.cl.entity.view;

import com.cl.entity.DiscussxinwenzixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 新闻资讯评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-27 15:17:32
 */
@TableName("discussxinwenzixun")
public class DiscussxinwenzixunView  extends DiscussxinwenzixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussxinwenzixunView(){
	}
 
 	public DiscussxinwenzixunView(DiscussxinwenzixunEntity discussxinwenzixunEntity){
 	try {
			BeanUtils.copyProperties(this, discussxinwenzixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
