package com.t164.service;

import com.t164.pojo.Admin;

public interface AdminService {
    public Admin login(String name, String pwd);

    public void update(Integer id);
}
