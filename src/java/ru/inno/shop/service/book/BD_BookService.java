package ru.inno.shop.service.book;

import ru.inno.shop.model.book.BD_Book;

import java.util.List;


public interface BD_BookService   {
    List<BD_Book> allBooks(int page);
    void add(BD_Book book);
    void delete(BD_Book book);
    void edit(BD_Book book);
    BD_Book getByIsbn(String isbn);
    int booksCount();
    boolean checkTitle(String title);
}
