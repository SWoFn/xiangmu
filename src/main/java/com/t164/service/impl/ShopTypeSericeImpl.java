package com.t164.service.impl;

import com.t164.mapper.ShopTypeMapper;
import com.t164.pojo.Shoptype;
import com.t164.service.ShopTypeSerice;
import com.t164.vo.Paper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(readOnly = false)
public class ShopTypeSericeImpl implements ShopTypeSerice {

    @Resource
    private ShopTypeMapper shopTypeMapper;
    @Override
    public List<Shoptype> list() {
        return shopTypeMapper.list();
    }

    @Override
    public Paper pager(Integer offset, Integer limit) {
        Paper pager=new Paper();
        pager.setRows(shopTypeMapper.findbyPage(offset,limit));
        pager.setTotal(shopTypeMapper.count());
        return pager;
    }

    @Override
    public void typeDel(Integer[] ids) {
        shopTypeMapper.typeDel(ids);
    }

    @Override
    public void typeadd(Shoptype shoptype) {
        shopTypeMapper.typeadd(shoptype);
    }

    @Override
    public void typeupdate(Shoptype shoptype) {
        shopTypeMapper.typeupdate(shoptype);
    }
}
