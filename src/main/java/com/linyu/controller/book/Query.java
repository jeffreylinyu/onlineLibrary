package com.linyu.controller.book;

import com.linyu.pojo.Books;
import com.linyu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Query {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查詢所有書籍
    @RequestMapping("/queryAllBook")
    public String queryAllBook(Model model) {
        bookService.arrangeBookID();//整理ID
        List<Books> allBook = bookService.queryAllBook(0,12);
        model.addAttribute("allBook", allBook);
        return "allBook";
    }
    //依據書名查詢
    @GetMapping(value = "/queryByName/{bookName}")//使用restful風格
    public String queryByName(@PathVariable String bookName, Model model){
        List<Books> Book = bookService.queryByName(bookName);
        model.addAttribute("allBook", Book);
        return "allBook";
    }
    //依據分類查詢
    @GetMapping("/queryBySort/{sort}")
    public String queryBySort(@PathVariable String sort, Model model){
        List<Books> booksList = bookService.queryBySort(sort);
        model.addAttribute("allBook", booksList);
        return "allBook";
    }
    //模糊查詢書名和分類
    @GetMapping("/queryByLike")
    public String queryByLike(String bookNameOrSort, Model model){
        List<Books> bookList = bookService.queryByLike(bookNameOrSort);
        System.out.println(bookList);
        model.addAttribute("allBook", bookList);
        return "allBook";
    }
}
