package com.linyu.service;

import com.linyu.dao.BookMapper;
import com.linyu.pojo.Books;
import com.linyu.pojo.User;

import java.util.List;


public class BookServiceImpl implements BookService {

    //调用dao层的操作，设置一个set接口，方便Spring管理
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllBook(int limit1,int limit2) {
        return bookMapper.queryAllBook(limit1,limit2);
    }

    public User getUser(String userName){return bookMapper.getUser(userName);}

    public List<Books> queryByName(String bookName){return bookMapper.queryByName(bookName);}

    public List<Books> queryByLike(String bookName){return bookMapper.queryByLike(bookName);}

    public int addUser(User user){return bookMapper.addUser(user);}

    public void arrangeBookID(){
        //deleteBookID()一定要寫在addBookID()前面
        bookMapper.deleteBookID();
        bookMapper.addBookID();
    }

    public List<Books> queryBySort(String sort){return bookMapper.queryBySort(sort);}

}