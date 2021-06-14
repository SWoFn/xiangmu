package com.t164.service.impl;

import com.t164.mapper.AdminMapper;
import com.t164.pojo.Admin;
import com.t164.service.AdminService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional(readOnly = false)
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminMapper adminMapper;


    @Override
    @Transactional(readOnly = true)
    public Admin login(String name, String pwd) {
       return adminMapper.getlogin(name,pwd);
    }




    public void update(Integer id) {
        adminMapper.updatelogin(id);
    }
}
