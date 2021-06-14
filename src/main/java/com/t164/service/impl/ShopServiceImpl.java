package com.t164.service.impl;

import com.t164.mapper.ShopMapper;
import com.t164.pojo.Shop;
import com.t164.service.ShopService;
import com.t164.vo.Paper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(readOnly = false)
public class ShopServiceImpl implements ShopService {
    @Resource
    private ShopMapper shopMapper;


    @Override
    public Paper list(Integer offset, Integer limit, String name, Integer start, Integer type, Integer wh) {
        Paper pager=new Paper();
        pager.setRows(shopMapper.findbyPage(offset,limit,name,start,type,wh));
        pager.setTotal(shopMapper.getTotal(name,start,type,wh));
        return pager;    }

    @Override
    public void add(Shop shop) {
        shopMapper.add(shop);
    }

    @Override
    public void del(Integer[] ids) {
        shopMapper.shopDel(ids);
    }

    @Override
    public void states(Integer[] ids) {
        shopMapper.states(ids);
    }

    @Override
    public void statex(Integer[] ids) {
        shopMapper.statex(ids);
    }

    public Shop selectdan(Integer id){
        return shopMapper.selctdan(id);
    }

}
