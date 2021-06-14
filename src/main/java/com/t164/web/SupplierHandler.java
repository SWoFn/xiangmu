package com.t164.web;

import com.t164.pojo.Supplier;
import com.t164.service.SupplierService;
import com.t164.vo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.t164.utils.log;
import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

@Controller
@RequestMapping("/supplier")
public class SupplierHandler extends HttpServlet {
    @Resource
    private SupplierService supplierService;

    private String msg;
    @RequestMapping("/findNameAndNum")
    @ResponseBody
    public Paper findNameAndNum(Integer offset, Integer limit,Supplier supplier){
        Paper p=supplierService.findByNameAndNum(offset,limit,supplier);
        return p;
    }
    @PostMapping("/add")
    @ResponseBody
    public String add(Supplier supplier, HttpSession session){
        supplier.setSupplierCreatTime(LocalDateTime.now());
        try{
           supplierService.add(supplier);
            msg="角色添加成功！";
        }catch (RuntimeException ex){
            msg="角色添加失败！";
            log.getLogger().error(msg,ex);
        }
        return msg;
    }
    @RequestMapping("/batchDel")
    @ResponseBody
    public String batchDel(Integer [] ids){
        try {
            supplierService.batchDel(ids);
            msg="删除成功";
        }catch (RuntimeException  ex){
            log.getLogger().error(ex);
            msg="删除失败";
        }
        return  msg;
    }
    @RequestMapping("/update")
    @ResponseBody
    public String update(Supplier supplier){
        System.out.println(supplier);

        try {
            supplierService.update(supplier);
            msg="修改成功";
        }catch (RuntimeException  ex){
            log.getLogger().error(ex);
            msg="修改失败";
        }
        return  msg;
    }
    @PostMapping("/delete")
    @ResponseBody
    public String del(Integer id){
        try{
            supplierService.del(id);
            msg="删除成功";
        }catch (RuntimeException e){
            msg="删除失败";
        }
       return msg;
    }
}
