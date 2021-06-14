package com.t164.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class DispatcherHandler {
        @RequestMapping("/{folder}/{user}/index")
        public String forward(@PathVariable String folder, @PathVariable String user){
            return folder+"/"+user;
        }
    }

