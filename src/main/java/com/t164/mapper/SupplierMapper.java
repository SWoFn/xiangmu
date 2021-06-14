package com.t164.mapper;

import com.t164.pojo.Supplier;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SupplierMapper {

    /*查询供应商信息（多条件分页）*/

    public List<Supplier> findByNameAndNum(@Param("supplier") Supplier supplier);

    /*添加供应商*/
    public void add(Supplier supplier);

    /*修改供应商*/

    public void update(Supplier supplier);

    /*删除供用商*/

    public void del(@Param("id") Integer id);

    /*批量删除供应商*/

    public void batchDel(@Param("ids") Integer[] ids);


    /*查询总数量*/
    public Integer findCount();
}
