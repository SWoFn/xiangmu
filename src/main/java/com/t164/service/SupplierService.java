package com.t164.service;

import com.t164.pojo.Supplier;
import com.t164.vo.Paper;


public interface SupplierService  {


        public Paper findByNameAndNum(Integer offset, Integer limit,Supplier supplier);


        public void add(Supplier supplier);

        public void update(Supplier supplier);

        public void del(Integer id);

        public void batchDel(Integer[] ids);

        public Integer findCount();
}
