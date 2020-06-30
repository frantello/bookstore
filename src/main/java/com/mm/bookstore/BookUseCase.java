package com.mm.bookstore;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class BookUseCase {
    private final BookRepository bookRepository;

    @Autowired
    public BookUseCase(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Transactional
    public Iterable<Book> findAll() {
        return bookRepository.findAll();
    }

    @Transactional
    public Optional<Book> findOne(Long id) {
        Book foundBook = id != null ? bookRepository.findOne(id) : null;
        return Optional.ofNullable(foundBook);
    }

    @Transactional
    public Book save(Book book) {
       return bookRepository.save(book);
    }
}
