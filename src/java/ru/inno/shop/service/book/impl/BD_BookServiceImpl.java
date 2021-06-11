package ru.inno.shop.service.book.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.inno.shop.model.book.BD_Book;
import ru.inno.shop.service.book.BD_BookService;

import java.util.List;

@Service
@Transactional
public class BD_BookServiceImpl implements BD_BookService {


    @Autowired//(required = false)
    private BD_BookService bd;

    public void setBookDao(BD_BookService bookDao) {
        this.bd = bookDao; }

    public List<BD_Book> allBooks(int page) {

        return bd.allBooks(page);
    }

    public void add(BD_Book book) {
        bd.add(book);
    }

    public void delete(BD_Book book) {
        bd.delete(book);
    }

    public void edit(BD_Book book) {
        bd.edit(book);
    }

    public BD_Book getByIsbn(String isbn) {
        return bd.getByIsbn(isbn);
    }

    public int booksCount() {
        return bd.booksCount();
    }

    public boolean checkTitle(String bookTitle) {
        return bd.checkTitle(bookTitle);
    }


}
