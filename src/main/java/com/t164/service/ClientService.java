package com.t164.service;

import com.t164.pojo.Client;
import com.t164.vo.Paper;

public interface ClientService{

    Paper findNameAndNum(Integer offset, Integer limit,Client client);

    void add(Client client);

    void del(Integer id);

    void batchDel(Integer[] ids);

    void update(Client client);

    Integer findCount();

}
