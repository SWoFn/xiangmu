package com.t164.web;

import com.t164.pojo.Shop;
import com.t164.service.ShopService;
import com.t164.service.ShopTypeSerice;
import com.t164.service.ShopwhSerice;
import com.t164.utils.log;
import com.t164.vo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/shop")
public class ShopHandler extends HttpServlet {

    @Resource
    private ShopService shopService;

    @Resource
    private ShopwhSerice shopwhSerice;
    @Resource
    private ShopTypeSerice shopTypeSerice;
    @RequestMapping("/search")
    @ResponseBody
    public Paper search(Integer offset, Integer limit, String name, Integer start, Integer type, Integer wh, HttpSession session){

        Paper pager=shopService.list(offset,limit,name,start,type,wh);
        session.setAttribute("count",pager.getTotal());
        return pager;
    }

    @RequestMapping("/toshop")
    public String toshop(Model model){
            model.addAttribute("type",shopTypeSerice.list());
        model.addAttribute("wh",shopwhSerice.list());
        return "goods/list";
    }


    @RequestMapping("/shopdel")
    @ResponseBody
    public String del(Integer [] ids){
        String msg;
        try {
            shopService.del(ids);
            msg="操作成功";
        }catch (RuntimeException  ex){
            log.getLogger().error(ex);
            msg="操作失败";
        }
        return  msg;
    }
    @RequestMapping("/shangjia")
    @ResponseBody
    public String states(Integer [] ids){
        String msg;
        try {
            shopService.states(ids);
            msg="操作成功";
        }catch (RuntimeException  ex){
            log.getLogger().error(ex);
            msg="操作失败";
        }
        return  msg;
    }
    @RequestMapping("/xiajia")
    @ResponseBody
    public String statex(Integer [] ids){
        String msg;
        try {
            shopService.statex(ids);
            msg="操作成功";
        }catch (RuntimeException  ex){
            log.getLogger().error(ex);
            msg="操作失败";
        }
        return  msg;
    }
    @RequestMapping("/shopadd")
    @ResponseBody
    public String add(Shop shop, MultipartFile fff) throws IOException {
            String msg;
            try {
                shopService.add(shop);
                msg = "添加成功";
            } catch (RuntimeException ex) {
                msg = "添加失败";
                log.getLogger().error(msg, ex);
            }
            return msg;

    }

    @RequestMapping("/shopcha")
    @ResponseBody
    public Shop selectdan(Integer id){
        Shop shop=new Shop();
        try {
            shop= shopService.selectdan(id);
        }catch (RuntimeException ex){
            log.getLogger().error( ex);
        }
        return shop;
    }
}
