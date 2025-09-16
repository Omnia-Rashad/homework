//  Q5
//  Create a class Book with private fields _title and _pages.
//- Add setters: reject empty titles and pages ≤ 0.
//- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
//- In main(), create a book, print its title and estimated reading time

void main() {
  Book book1 = Book();
  book1.title = 'robincrose';
  print(book1.title);

  book1.pages = 100;
  print('${book1.readingTime} minutes');
}

class Book {
  String? _title;
  int? _pages;

  set title(String title) {
    if (title.trim().isNotEmpty) {
      this._title = title;
    } else {
      print('invalid title');
    }
  }

  set pages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    } else {
      print('invalid pages');
    }
  }

  String get title => this._title!;

  int get readingTime {
    int totalTime = _pages! * 2;
    return totalTime;
  }
}
