package com.t164.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.t164.mapper.ClientMapper;
import com.t164.pojo.Client;
import com.t164.service.ClientService;
import com.t164.vo.Paper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("clientService")
public class ClientServiceImpl implements ClientService {
    @Resource
    private ClientMapper clientMapper;
    @Override
    public Paper findNameAndNum(Integer offset, Integer limit,Client client) {
        Page<Client> page=PageHelper.offsetPage(offset,limit);
        List<Client> list=clientMapper.findNameAndNum(client);
        Paper paper=new Paper();
        paper.setRows(list);
        paper.setTotal(page.getTotal());
        return paper;
    }

    @Override
    public void add(Client client) {
       clientMapper.add(client);
    }

    @Override
    public void del(Integer id) {
        clientMapper.del(id);
    }

    @Override
    public void batchDel(Integer[] ids) {
        clientMapper.batchDel(ids);
    }

    @Override
    public void update(Client client) {
        clientMapper.update(client);
    }

    @Override
    public Integer findCount() {
        return clientMapper.findCount();
    }
}
