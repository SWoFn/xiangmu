package com.t164.service;

import com.t164.pojo.Shoptype;
import com.t164.vo.Paper;

import java.util.List;

public interface ShopTypeSerice {
    public List<Shoptype> list();

    public Paper pager(Integer offset, Integer limit);

    public void typeDel(Integer[] ids);

    public void typeadd(Shoptype shoptype);

    public void typeupdate(Shoptype shoptype);
}
