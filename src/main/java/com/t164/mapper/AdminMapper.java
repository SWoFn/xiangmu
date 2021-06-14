package com.t164.mapper;

import com.t164.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {

    Admin getlogin(@Param("name") String name, @Param("pwd") String pwd);

    void updatelogin(@Param("id") Integer id);
}
