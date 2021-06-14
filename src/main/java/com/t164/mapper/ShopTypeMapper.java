package com.t164.mapper;

import com.t164.pojo.Shoptype;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopTypeMapper {
    List<Shoptype> list();
    List<Shoptype> findbyPage(@Param("offset") Integer offset, @Param("limit") Integer limit);
    Integer count();
    void typeDel(@Param("arry") Integer[] ids);

    void typeadd(@Param("shoptype") Shoptype shoptype);

    void typeupdate(@Param("shoptype") Shoptype shoptype);
}
