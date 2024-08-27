package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;
import com.cl.entity.OrdersEntity;
import com.cl.service.OrdersService;
import com.cl.utils.UserBasedCollaborativeFiltering;

import com.cl.entity.WupinxinxiEntity;
import com.cl.entity.view.WupinxinxiView;

import com.cl.service.WupinxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import com.cl.service.StoreupService;
import com.cl.entity.StoreupEntity;

/**
 * 物品信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-27 15:17:31
 */
@RestController
@RequestMapping("/wupinxinxi")
public class WupinxinxiController {
    @Autowired
    private WupinxinxiService wupinxinxiService;



    @Autowired
    private StoreupService storeupService;

    @Autowired
    private OrdersService ordersService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,WupinxinxiEntity wupinxinxi, 
		HttpServletRequest request){

        EntityWrapper<WupinxinxiEntity> ew = new EntityWrapper<WupinxinxiEntity>();


		PageUtils page = wupinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wupinxinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,WupinxinxiEntity wupinxinxi, 
		HttpServletRequest request){
        EntityWrapper<WupinxinxiEntity> ew = new EntityWrapper<WupinxinxiEntity>();

		PageUtils page = wupinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wupinxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( WupinxinxiEntity wupinxinxi){
       	EntityWrapper<WupinxinxiEntity> ew = new EntityWrapper<WupinxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( wupinxinxi, "wupinxinxi")); 
        return R.ok().put("data", wupinxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(WupinxinxiEntity wupinxinxi){
        EntityWrapper< WupinxinxiEntity> ew = new EntityWrapper< WupinxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( wupinxinxi, "wupinxinxi")); 
		WupinxinxiView wupinxinxiView =  wupinxinxiService.selectView(ew);
		return R.ok("查询物品信息成功").put("data", wupinxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        WupinxinxiEntity wupinxinxi = wupinxinxiService.selectById(id);
		wupinxinxi = wupinxinxiService.selectView(new EntityWrapper<WupinxinxiEntity>().eq("id", id));
        return R.ok().put("data", wupinxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        WupinxinxiEntity wupinxinxi = wupinxinxiService.selectById(id);
		wupinxinxi = wupinxinxiService.selectView(new EntityWrapper<WupinxinxiEntity>().eq("id", id));
        return R.ok().put("data", wupinxinxi);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R thumbsup(@PathVariable("id") String id,String type){
        WupinxinxiEntity wupinxinxi = wupinxinxiService.selectById(id);
        if(type.equals("1")) {
        	wupinxinxi.setThumbsupnum(wupinxinxi.getThumbsupnum()+1);
        } else {
        	wupinxinxi.setCrazilynum(wupinxinxi.getCrazilynum()+1);
        }
        wupinxinxiService.updateById(wupinxinxi);
        return R.ok();
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody WupinxinxiEntity wupinxinxi, HttpServletRequest request){
    	wupinxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wupinxinxi);

        wupinxinxiService.insert(wupinxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody WupinxinxiEntity wupinxinxi, HttpServletRequest request){
    	wupinxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wupinxinxi);

        wupinxinxiService.insert(wupinxinxi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody WupinxinxiEntity wupinxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(wupinxinxi);
        wupinxinxiService.updateById(wupinxinxi);//全部更新
        return R.ok();
    }

    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        wupinxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,WupinxinxiEntity wupinxinxi, HttpServletRequest request,String pre){
        EntityWrapper<WupinxinxiEntity> ew = new EntityWrapper<WupinxinxiEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicktime");
        params.put("order", "desc");
		PageUtils page = wupinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wupinxinxi), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 协同算法（基于用户的协同算法）
     */
    @RequestMapping("/autoSort2")
    public R autoSort2(@RequestParam Map<String, Object> params,WupinxinxiEntity wupinxinxi, HttpServletRequest request){
        String userId = request.getSession().getAttribute("userId").toString();
        Integer limit = params.get("limit")==null?10:Integer.parseInt(params.get("limit").toString());
        List<OrdersEntity> orders = ordersService.selectList(new EntityWrapper<OrdersEntity>());
        Map<String, Map<String, Double>> ratings = new HashMap<>();
        if(orders!=null && orders.size()>0) {
            for(OrdersEntity o : orders) {
                Map<String, Double> userRatings = null;
                if(ratings.containsKey(o.getUserid().toString())) {
                    userRatings = ratings.get(o.getUserid().toString());
                } else {
                    userRatings = new HashMap<>();
                    ratings.put(o.getUserid().toString(), userRatings);
                }
                if(userRatings.containsKey(o.getGoodid().toString())) {
                    userRatings.put(o.getGoodid().toString(), userRatings.get(o.getGoodid().toString())+1.0);
                } else {
                    userRatings.put(o.getGoodid().toString(), 1.0);
                }

            }
        }
        // 创建协同过滤对象
        UserBasedCollaborativeFiltering filter = new UserBasedCollaborativeFiltering(ratings);

        // 为指定用户推荐物品
        String targetUser = userId;
        int numRecommendations = limit;
        List<String> recommendations = filter.recommendItems(targetUser, numRecommendations);

        // 输出推荐结果
        System.out.println("Recommendations for " + targetUser + ":");
        for (String item : recommendations) {
            System.out.println(item);
        }

        EntityWrapper<WupinxinxiEntity> ew = new EntityWrapper<WupinxinxiEntity>();
        ew.in("id", recommendations);
        if(recommendations!=null && recommendations.size()>0) {
            ew.last("order by FIELD(id, "+String.join(",", recommendations)+")");
        }

        PageUtils page = wupinxinxiService.queryPage(params, ew);
        List<WupinxinxiEntity> pageList = (List<WupinxinxiEntity>)page.getList();
        if(pageList.size()<limit) {
            int toAddNum = limit-pageList.size();
            ew = new EntityWrapper<WupinxinxiEntity>();
            ew.notIn("id", recommendations);
            ew.orderBy("id", false);
            ew.last("limit "+toAddNum);
            pageList.addAll(wupinxinxiService.selectList(ew));
        } else if(pageList.size()>limit) {
            pageList = pageList.subList(0, limit);
        }
        page.setList(pageList);

        return R.ok().put("data", page);
    }






}
