package com.t164.mapper;

import com.t164.pojo.ShopWh;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopwhMapper {
    List<ShopWh> list();

    List<ShopWh> findbyPage(@Param("offset") Integer offset, @Param("limit") Integer limit);
    Integer count();
    void whDel(@Param("arry") Integer[] ids);

    void whadd(@Param("shopWh") ShopWh shopWh);

    void whupdate(@Param("shopWh") ShopWh shopWh);
}
