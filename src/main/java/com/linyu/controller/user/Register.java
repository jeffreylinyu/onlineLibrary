package com.linyu.controller.user;

import com.linyu.pojo.User;
import com.linyu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class Register {
    @Autowired
    private BookService bookService;
    //到註冊頁面
    @GetMapping("/toRegister")
    public String toRegister(){
        return "register";
    }
    //註冊
    @PostMapping("/addUser")
    public String addUser(User user){
        bookService.addUser(user);
        return "redirect:/index.jsp";
    }

}
