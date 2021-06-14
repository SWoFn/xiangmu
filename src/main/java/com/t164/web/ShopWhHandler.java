package com.t164.web;

import com.t164.pojo.Admin;
import com.t164.pojo.ShopWh;
import com.t164.service.ShopwhSerice;
import com.t164.vo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/wh")
public class ShopWhHandler extends HttpServlet {

    @Resource
    private ShopwhSerice shopwhSerice;
    private HttpSession session;
    @RequestMapping("/list")
    @ResponseBody
    public Paper list(Integer offset, Integer limit){
        System.out.println(offset);
        System.out.println(limit);
        return shopwhSerice.pager(offset,limit);
    }

    @RequestMapping("/del")
    @ResponseBody
    public String del(Integer [] ids){
        String msg;
        try {
            shopwhSerice.whDel(ids);
            msg="操作成功";
        }catch (RuntimeException ex){
            msg="操作失败";
        }
        return  msg;
    }

    @RequestMapping("/add")
    @ResponseBody
    public String add(ShopWh shopWh, HttpSession session){
        Admin admin= (Admin) session.getAttribute("admin");
        shopWh.setUpdateId(admin.getId());
        String msg;
        try {
            shopwhSerice.whadd(shopWh);
            msg="操作成功";
        }catch (RuntimeException ex){
            msg="操作失败";
        }
        return  msg;

    }
    @RequestMapping("/update")
    @ResponseBody
    public String update(ShopWh shopWh, HttpSession session){
        Admin admin= (Admin) session.getAttribute("admin");
        shopWh.setUpdateId(admin.getId());
        String msg;
        try {
            shopwhSerice.whupdate(shopWh);
            msg="操作成功";
        }catch (RuntimeException ex){
            msg="操作失败";
        }
        return  msg;

    }
}


