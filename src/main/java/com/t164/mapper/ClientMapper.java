package com.t164.mapper;

import com.t164.pojo.Client;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClientMapper {

    /*按照条件查询客户信息*/
    List<Client> findNameAndNum(@Param("client") Client client);

    /*按照id删除客户信息*/
    void del(@Param("id") Integer id);

    /*批量删除客户信息*/
    void batchDel(@Param("ids") Integer [] ids);

    /*修改客户信息*/
    void update( Client client);

    /*添加客户信息*/
    void add(Client client);

    /*查询数量信息*/
    Integer findCount();
}
