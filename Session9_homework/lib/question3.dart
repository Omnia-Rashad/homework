// Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
//  only the movies with a rating above 7

void main() {
  List<Movie> movies = [
    Movie('movie1', 4),
    Movie('movie2', 4.5),
    Movie('movie3', 7),
    Movie('movie4', 8),
  ];
  for (var item in movies) {
    if (item.rating! > 7) {
      print('${item.title} : ${item.rating}');
    }
  }
}

class Movie {
  String? title;
  double? rating;

  Movie(String title, double rating) {
    this.title = title;
    this.rating = rating;
  }
}
