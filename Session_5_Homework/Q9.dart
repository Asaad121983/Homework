/*
Library Management System
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
*/

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn) : isAvailable = true;
}

class Library {
  Map<String, Book> books = {};

  void addBook(Book book) {
    books[book.isbn] = book;
  }

  String borrowBook(String isbn) {
    if (books.containsKey(isbn) && books[isbn]!.isAvailable) {
      books[isbn]!.isAvailable = false;
      return 'Book borrowed successfully.';
    } 
    return 'Book not available or not found.';
  }

  String returnBook(String isbn) {
    if (books.containsKey(isbn)) {
      books[isbn]!.isAvailable = true;
      return 'Book returned successfully.';
    }
    return 'Book not found.';
  }

}

void main() {
  Library library = Library();

  Book book1 = Book("2000", "Asaad", "123");
  Book book2 = Book("IS", "Ali", "456");

  library.addBook(book1);
  library.addBook(book2);

  print(library.borrowBook("123")); 
  print(library.returnBook("123")); 

}
