package ru.inno.shop.repository.book;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.inno.shop.model.book.BD_Book;


public interface BD_Book_dao extends JpaRepository<BD_Book, String> {

}
