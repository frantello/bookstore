package com.mm.bookstore;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BookController {

    private final BookUseCase bookUseCase;

    @Autowired
    public BookController(BookUseCase bookUseCase) {
        this.bookUseCase = bookUseCase;
    }

    @RequestMapping("books")
    public ModelAndView books() {
        Iterable<Book> books = bookUseCase.findAll();
        return new ModelAndView("books", "books", bookUseCase.findAll());
    }

    @RequestMapping("bookEditor")
    public ModelAndView bookEditor(@RequestParam(required = false) Long id) {
        Book book = this.bookUseCase.findOne(id).orElse(new Book());
        return new ModelAndView("bookEditor", "book", book);
    }

    @RequestMapping("saveBook")
    public ModelAndView saveBook(@ModelAttribute Book book, HttpServletRequest request) {
        bookUseCase.save(book);
        System.out.println(book.getId());
        book.setName("José Francisco");
        System.out.println(book.getName());
        System.out.println(book.getAuthor());

        System.out.println("Request");
        System.out.println(request.getCharacterEncoding());
        return new ModelAndView("redirect:books");
    }
}
