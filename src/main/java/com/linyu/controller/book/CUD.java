package com.linyu.controller.book;

import com.linyu.pojo.Books;
import com.linyu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user") //設定為user下的目錄都會經過攔截器
public class CUD {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    //到新增書籍頁面
    @GetMapping("/toInsert")
    public String toInsert(){
        return "insert";
    }
    //新增書籍
    @PostMapping("/addBook")
    public String addBook(Books book, Model model){
        bookService.addBook(book);
        return "redirect:/queryAllBook";
    }
    //到更改書籍頁面，接收id同時傳入當前更改Book
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Model model, int id) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("book",books );
        return "update";
    }
    //更改書籍
    @PostMapping("/updateBook")
    public String updateBook(Model model, Books book) {
        bookService.updateBook(book);
//        Books books = bookService.queryBookById(book.getBookID());
//        model.addAttribute("books", books);
        return "redirect:/queryAllBook";
    }
    //刪除書籍
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBookById(id);
        return "redirect:/queryAllBook";
    }
}
