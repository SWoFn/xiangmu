package com.t164.service;

import com.t164.pojo.ShopWh;
import com.t164.vo.Paper;

import java.util.List;


public interface ShopwhSerice {
    public List<ShopWh> list();


    public Paper pager(Integer offset, Integer limit);

    public void whDel(Integer[] ids);

    public void whadd(ShopWh shopWh);

    public void whupdate(ShopWh shopWh);
}
