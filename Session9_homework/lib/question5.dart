// Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
//  courses: one with custom duration and one with the default. Print both

void main() {
  Course course1 = Course('Dart', '2 months');
  print('${course1.title} : ${course1.duration}');

  Course course2 = Course('Flutter');
  print('${course2.title} : ${course2.duration}');
}

class Course {
  String? title;
  String? duration;

  Course(String title, [String duration = '3 months']) {
    this.title = title;
    this.duration = duration;
  }
}
