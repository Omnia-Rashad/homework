// Q4
//  Create a program with a map of student names to their marks. Print the name of the student with
//  the highest mark

void main() {
  Map<String, int> studentsGrades = {'Omnia': 20, 'Ola': 18, 'Shahd': 15};

  String topName = "";
  int highestGrade = 0;

  studentsGrades.forEach((var name, var grade) {
    if (grade > highestGrade) {
      highestGrade = grade;
      topName = name;
    }
  });
  print('$topName has the highest mark: $highestGrade');
}
