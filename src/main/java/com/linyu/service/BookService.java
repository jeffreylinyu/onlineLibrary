package com.linyu.service;

import com.linyu.pojo.Books;
import com.linyu.pojo.User;

import java.util.List;

//BookService:底下需要去实现,调用dao层
public interface BookService {
    //增加一个Book
    int addBook(Books book);
    //根据id删除一个Book
    int deleteBookById(int id);
    //更新Book
    int updateBook(Books books);
    //根据id查询,返回一个Book
    Books queryBookById(int id);
    //查询全部Book,返回list集合
    List<Books> queryAllBook(int limit1,int limit2);
    //查詢用戶帳號密碼
    User getUser(String userName);
    //動態sql查詢書籍
    List<Books> queryByName(String bookName);
    //模糊查詢書籍
    List<Books> queryByLike(String bookName);
    //註冊用戶
    int addUser(User user);
    //重新整理bookID
    void arrangeBookID();
    //根據分類sort查詢
    List<Books> queryBySort(String sort);
}
