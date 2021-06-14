package com.t164.web;

import com.t164.pojo.Client;
import com.t164.service.ClientService;
import com.t164.utils.log;
import com.t164.vo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/seller")
public class ClientHandler extends HttpServlet {
    @Resource
    private ClientService clientService;
    private String msg;
    @RequestMapping("/findNameAndNum")
    @ResponseBody
    public Paper findNameAndNum(Integer offset, Integer limit,Client client){
        Paper p=clientService.findNameAndNum(offset,limit,client);
        return p;
    }
    @PostMapping("/add")
    @ResponseBody
    public String add(Client client){
       try {
           clientService.add(client);
           msg="添加成功";
       }catch (RuntimeException e){
           msg="添加失败";
       }
       return msg;
    }
    @RequestMapping("/batchDel")
    @ResponseBody
    public String batchDel(Integer [] ids){
        try {
            clientService.batchDel(ids);
            msg="删除成功";
        }catch (RuntimeException e){
            msg="删除失败";
        }
        return  msg;
    }
    @RequestMapping("/update")
    @ResponseBody
    public String update(Client client){
        try {
            clientService.update(client);
            msg="修改成功";
        }catch (RuntimeException e){
            msg="修改失败";
        }
        return  msg;
    }
    @PostMapping("/delete")
    @ResponseBody
    public String del(Integer id){
        try{
            clientService.del(id);
            msg="删除成功";
        }catch (RuntimeException e){
            msg="删除失败";
        }
        return msg;
    }
}

