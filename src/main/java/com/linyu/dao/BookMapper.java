package com.linyu.dao;

import com.linyu.pojo.Books;
import com.linyu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    //增加一个Book
    int addBook(Books book);

    //根据id删除一个Book
    int deleteBookById(@Param("bookID") int id);

    //更新Book
    int updateBook(Books books);

    //根据id查询,返回一个Book
    Books queryBookById(@Param("bookID") int id);

    //查询全部Book,返回list集合
    List<Books> queryAllBook(@Param("limit1") int limit1,@Param("limit2") int limit2);

    //查詢用戶帳號密碼
    User getUser(String userName);

    //根据name查詢一个Book
    List<Books> queryByName(String bookName);

    //模糊查詢書籍
    List<Books> queryByLike(String bookName);

    //註冊用戶
    int addUser(User user);

    //刪除bookID
    int deleteBookID();

    //增加BookID
    void addBookID();

    //根據分類sort查詢
    List<Books> queryBySort(String sort);
}

