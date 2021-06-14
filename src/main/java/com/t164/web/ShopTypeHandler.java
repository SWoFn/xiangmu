package com.t164.web;

import com.t164.pojo.Admin;
import com.t164.pojo.Shoptype;
import com.t164.service.ShopTypeSerice;
import com.t164.vo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/type")
public class ShopTypeHandler extends HttpServlet {

    @Resource
    private ShopTypeSerice shopTypeSerice;


    @RequestMapping("/list")
    @ResponseBody
    public Paper list(Integer offset, Integer limit){
        System.out.println(offset);
        System.out.println(limit);
        return shopTypeSerice.pager(offset,limit);
    }

    @RequestMapping("/del")
    @ResponseBody
    public String del(Integer [] ids){
        String msg;
        try {
            shopTypeSerice.typeDel(ids);
            msg="操作成功";
        }catch (RuntimeException ex){
            msg="操作失败";
        }
        return  msg;
    }

    @RequestMapping("/add")
    @ResponseBody
    public String add(Shoptype shoptype, HttpSession session){
        Admin admin= (Admin) session.getAttribute("admin");
        shoptype.setUpdateId(admin.getId());
        String msg;
        try {
            shopTypeSerice.typeadd(shoptype);
            msg="操作成功";
        }catch (RuntimeException ex){
            msg="操作失败";
        }
        return  msg;

    }
    @RequestMapping("/update")
    @ResponseBody
    public String update(Shoptype shoptype, HttpSession session){
        Admin admin= (Admin) session.getAttribute("admin");
        shoptype.setUpdateId(admin.getId());
        String msg;
        try {
            shopTypeSerice.typeupdate(shoptype);
            msg="操作成功";
        }catch (RuntimeException ex){
            msg="操作失败";
        }
        return  msg;

    }
}
