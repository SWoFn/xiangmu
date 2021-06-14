package com.t164.mapper;

import com.t164.pojo.Shop;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopMapper {

    List<Shop>findbyPage(@Param("offset") Integer offset, @Param("limit") Integer limit, @Param("name") String name, @Param("start") Integer start, @Param("type") Integer type, @Param("wh") Integer wh);

    Integer getTotal(@Param("name") String name, @Param("start") Integer start, @Param("type") Integer type, @Param("wh") Integer wh);

    void add(@Param("shop") Shop shop);

    void shopDel(@Param("arry") Integer[] ids);

    void states(@Param("arry") Integer[] ids);

    void statex(@Param("arry") Integer[] ids);

    Shop selctdan(@Param("id") Integer id);
}
