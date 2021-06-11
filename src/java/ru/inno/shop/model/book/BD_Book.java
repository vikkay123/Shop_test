package ru.inno.shop.model.book;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class BD_Book {
    @Id
    @Column(name = "isbn")
    private String isbn;
    @Column(name = "book_title")
    private String bookTitle;
    @Column(name = "book_type")
    private String bookType;
    @Column(name = "publishing_year")
    private int publishingYear;
    @Column(name = "pages")
    private int pages;
    @Column(name = "price")
    private int price;
//    @ManyToMany(fetch = FetchType.EAGER)
//    @JoinTable(name = "books_by_authors",
//            joinColumns = @JoinColumn(name = "isbn"),
//            inverseJoinColumns = @JoinColumn(name = "author_id"))
//    private Set<BD_Author> authors = new HashSet<>();

//    @ManyToOne
//    @JoinColumn(name = "isbn", insertable = false, updatable = false)
//    private BD_Genre genre;
//    public BD_Book() {}
//    public BD_Genre getGenre() {
//        return genre;
//    }

//    public void setGenre(BD_Genre genre) {
//        this.genre = genre;
//    }
//
//    public Set<BD_Author> getAuthors() {
//        return authors;
//    }
//
//    public void setAuthors(Set<BD_Author> authors) {
//        this.authors = authors;
//    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getBookType() {
        return bookType;
    }

    public void setBookType(String bookType) {
        this.bookType = bookType;
    }

    public int getPublishingYear() {
        return publishingYear;
    }

    public void setPublishingYear(int publishingYear) {
        this.publishingYear = publishingYear;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Book{" +
                "isbn=" + isbn +
                ", bookTitle='" + bookTitle + '\'' +
                ", bookType='" + bookType + '\'' +
                ", publishingYear=" + publishingYear +
                ", pages=" + pages +
                ", price=" + price +
                '}';
    }
}
