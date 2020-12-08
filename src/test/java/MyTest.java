import com.linyu.dao.BookMapper;
import com.linyu.pojo.Books;
import com.linyu.service.BookService;
import com.linyu.service.BookServiceImpl;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
//    @Test
//    public void batisTest(){
//        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        BookService bookServiceImpl = context.getBean("BookServiceImpl", BookService.class);
//        List<Books> books = bookServiceImpl.queryAllBook();
//        for (Books book : books) {
//            System.out.println(book);
//        }
//    }
    @Test
    public void addBookIDTest(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl", BookService.class);
        bookServiceImpl.arrangeBookID();
    }
}
