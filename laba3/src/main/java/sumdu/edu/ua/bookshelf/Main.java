/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sumdu.edu.ua.bookshelf;
import sumdu.edu.ua.bookshelf.bookstore.Book;

/**
 *
 * @author lytvy
 */
public class Main {

    /**
     *
     * @param args
     * @throws CloneNotSupportedException
     */
    public static void main(String[] args) throws CloneNotSupportedException{
       BookShelf my_bsf = BookShelf.getInstance();
       ScannerData scan = new ScannerData();
       char box;
       menu();
       
       while(true){          
           box = scan.scan_command();
           
           if(box == 'C'){
               return;
           }
           else if(box == 'G'){
               for(int i=0;i<5;i++){
                  Book b = Generator.createBook();
                  my_bsf.addBook(b);
               }
               System.out.println("Успешно сгенерировано");
           }
           else if(box == 'P'){
               if(my_bsf.checkEmpty()){
                   System.out.println("Ваша полка пуста");
               }
               else{
                   my_bsf.printContent();
               }             
           }
           else if(box == 'D'){
               if(my_bsf.checkEmpty()){
                   System.out.println("Ваша полка пуста");
               }
               else{
                   my_bsf.removeBook(scan.scan_isbn());   
               }
           }
           else{
               System.out.println("Неизвестная команда");
           }
       }   
    }
    
    private static void menu(){
       System.out.println("Меню:");
       System.out.println("Щоб згенерувати 5 книг на вашу полицю, введіть G");
       System.out.println("Щоб видалити книгу, введіть D");
       System.out.println("Щоб вивести список книг на полиці, введіть P");
       System.out.println("Щоб закрити програму, введіть C");
    }
}
