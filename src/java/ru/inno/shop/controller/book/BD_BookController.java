package ru.inno.shop.controller.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.inno.shop.model.book.BD_Book;
import ru.inno.shop.service.book.BD_BookService;
import ru.inno.shop.service.book.impl.BD_BookServiceImpl;

import java.util.List;

@Controller
public class BD_BookController {

    @Autowired
    private BD_BookServiceImpl bookService;
    private int page;

    public void setBookService(BD_BookServiceImpl bookService) {
        this.bookService = bookService;
    }

    @RequestMapping (value = "/bd_books")
    public ModelAndView allBooks(@RequestParam(defaultValue = "1") int page) {
        List<BD_Book> books = bookService.allBooks(page);
        int booksCount = bookService.booksCount();
        int pagesCount = (booksCount + 9)/10;
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("bd_books");
        modelAndView.addObject("page", page);
        modelAndView.addObject("booksList", books);
        modelAndView.addObject("booksCount", booksCount);
        modelAndView.addObject("pagesCount", pagesCount);
       this.page = page;
        return modelAndView;
    }

    @RequestMapping(value = "/bd_books_add")
    public ModelAndView addPage(@ModelAttribute("message") String message) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPage");
        return modelAndView;
    }

    @RequestMapping(value = "/bd_books_add", method = RequestMethod.POST)
    public ModelAndView addBook(@ModelAttribute("book") BD_Book book) {
        ModelAndView modelAndView = new ModelAndView();
        if (bookService.checkTitle(book.getBookTitle())) {
            modelAndView.setViewName("redirect:/");
            modelAndView.addObject("page", page);
            bookService.add(book);
        } else {
            modelAndView.addObject("message","part with title \"" + book.getBookTitle() + "\" already exists");
            modelAndView.setViewName("redirect:/bd_books_add");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/bd_books_edit/{isbn}")
    public ModelAndView editPage(@PathVariable("isbn") String isbn,
                                 @ModelAttribute("message") String message) {
        BD_Book book = bookService.getByIsbn(isbn);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPage");
        modelAndView.addObject("book", book);
        return modelAndView;
    }

    @RequestMapping(value = "/bd_books_edit", method = RequestMethod.POST)
    public ModelAndView editBook(@ModelAttribute("book") BD_Book book) {
        ModelAndView modelAndView = new ModelAndView();
        if (bookService.checkTitle(book.getBookTitle()) || bookService.getByIsbn(book.getBookTitle()).getBookTitle().equals(book.getBookTitle())) {
            modelAndView.setViewName("redirect:/");
           modelAndView.addObject("page", page);
            bookService.edit(book);
        } else {
            modelAndView.addObject("message","part with title \"" + book.getBookTitle() + "\" already exists");
            modelAndView.setViewName("redirect:/bd_books_edit/" +  book.getIsbn());
        }
        return modelAndView;
    }

    @RequestMapping(value="/bd_books_delete/{isbn}")
    public ModelAndView deleteFilm(@PathVariable("isbn") String isbn) {
        ModelAndView modelAndView = new ModelAndView();
        int booksCount = bookService.booksCount();
        int page = ((booksCount - 1) % 10 == 0 && booksCount > 10 && this.page == (booksCount + 9)/10) ?
                this.page - 1 : this.page;
        modelAndView.setViewName("redirect:/");
       modelAndView.addObject("page", page);
        BD_Book book = bookService.getByIsbn(isbn);
        bookService.delete(book);
        return modelAndView;
    }
}
