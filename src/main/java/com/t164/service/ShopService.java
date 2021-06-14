package com.t164.service;

import com.t164.pojo.Shop;
import com.t164.vo.Paper;

public interface ShopService {

    public Paper list(Integer offset, Integer limit, String name, Integer start, Integer type, Integer wh);

    public void add(Shop shop);

    public void del(Integer[] ids);

    public void states(Integer[] ids);

    public void statex(Integer[] ids);

    public Shop selectdan(Integer id);

}
