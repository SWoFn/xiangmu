package com.t164.service.impl;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.t164.mapper.SupplierMapper;
import com.t164.pojo.Supplier;
import com.t164.service.SupplierService;
import com.t164.vo.Paper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
    @Resource
    private SupplierMapper supplierMapper;

    @Override
    public Paper findByNameAndNum(Integer offset, Integer limit, Supplier supplier) {
        Page<Supplier> page=PageHelper.offsetPage(offset,limit);
        List<Supplier> list=supplierMapper.findByNameAndNum(supplier);
        Paper paper=new Paper();
        paper.setRows(list);
        paper.setTotal(page.getTotal());
        return paper;
    }

    @Override
    public void add(Supplier supplier) {
            supplierMapper.add(supplier);
    }

    @Override
    public void update(Supplier supplier) {
        supplierMapper.update(supplier);
    }

    @Override
    public void del(Integer id) {
            supplierMapper.del(id);
    }

    @Override
    public void batchDel(Integer[] ids) {
        supplierMapper.batchDel(ids);
    }

    @Override
    public Integer findCount() {
        return supplierMapper.findCount();
    }

}
