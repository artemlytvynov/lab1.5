/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sumdu.edu.ua.bookshelf.bookstore;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author lytvy
 */
public class BookCash {
    private static final Map <Integer, Book > bookMap = new HashMap <> ();
    
    public static Book getBook(int id) throws CloneNotSupportedException {
        Book toBeClonedBook = bookMap.get(id);
        return (Book) toBeClonedBook.clone();
    }

    public static void loadCache() {
        BookFantasy fb1 = new BookFantasy();
        bookMap.put(1, fb1);

        BookComix cb1 = new BookComix();
        cb1.setColor(true);
        bookMap.put(2, cb1);
    }
}
