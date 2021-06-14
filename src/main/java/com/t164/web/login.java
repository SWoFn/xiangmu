package com.t164.web;

import com.t164.pojo.Admin;
import com.t164.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


@Controller
@RequestMapping("/login")
public class login extends HttpServlet {

    @Resource
    private AdminService adminService;
    @RequestMapping("/denglu")
    @ResponseBody
    public void denglu(String name, String pwd, HttpServletResponse response, HttpSession session) throws IOException {
        Admin aa=adminService.login(name,pwd);
        PrintWriter out=response.getWriter();
        System.out.println(aa);
        if(aa!=null){
            adminService.update(aa.getId());
            session.setAttribute("admin",aa);
            out.print(true);
        }else {
            out.print(false);
        }
    }
}
