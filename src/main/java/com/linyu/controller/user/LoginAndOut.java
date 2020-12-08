package com.linyu.controller.user;

import com.linyu.pojo.Books;
import com.linyu.pojo.User;
import com.linyu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginAndOut {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    //登入
    @PostMapping("/login")
    public String login(String enterEmail, String enterPassword , HttpSession session){

        try {
            User user = bookService.getUser(enterEmail);
            String password = user.getUserPassword();
            if(enterPassword.equals(password)){//判斷密碼是否正確
                session.setAttribute("userSession", enterEmail);//在session傳入enterEmail
                return "redirect:/queryAllBook";
            }else {
                return "loginFailed";
            }
        }catch (Exception e){
            return "loginFailed";
        }


    }
    //登出
    @GetMapping("/user/signOut")
    public String signOut(HttpSession session){
        session.invalidate();//銷毀session
        return "redirect:/index.jsp";
    }
}
