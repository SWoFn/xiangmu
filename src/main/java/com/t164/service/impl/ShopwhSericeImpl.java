package com.t164.service.impl;

import com.t164.mapper.ShopwhMapper;
import com.t164.pojo.ShopWh;
import com.t164.service.ShopwhSerice;
import com.t164.vo.Paper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(readOnly = false)
public class ShopwhSericeImpl implements ShopwhSerice {
    @Resource
    private ShopwhMapper shopwhMapper;

    @Override
    public List<ShopWh> list(){
        return shopwhMapper.list();
    }

    @Override
    public Paper pager(Integer offset, Integer limit) {
        Paper pager=new Paper();
        pager.setRows(shopwhMapper.findbyPage(offset,limit));
        pager.setTotal(shopwhMapper.count());
        return pager;
    }

    @Override
    public void whDel(Integer[] ids) {
        shopwhMapper.whDel(ids);
    }

    @Override
    public void whadd(ShopWh shopWh) {
        shopwhMapper.whadd(shopWh);
    }

    @Override
    public void whupdate(ShopWh shopWh) {
        shopwhMapper.whupdate(shopWh);
    }
}
