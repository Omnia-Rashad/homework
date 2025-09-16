// Q3
//  Create a class Grade with a private field _score.
//- The setter should only accept values 0–100, otherwise print 'Invalid score'.
//- Add a getter and a computed getter isPass that returns true if score ≥ 50.
//- In main(), demonstrate updating the score multiple times and printing results

void main() {
  Grade grade1 = Grade();
  grade1.fieldScore = 90;
  print(grade1.fieldScore);
  print(grade1.isPassed);

  Grade grade2 = Grade();
  grade2.fieldScore = 20;
  print(grade2.fieldScore);
  print(grade2.isPassed);

  Grade grade3 = Grade();
  grade3.fieldScore = -10;
}

class Grade {
  int? _fieldScore;

  set fieldScore(int fieldScore) {
    if (fieldScore >= 0 && fieldScore <= 100) {
      this._fieldScore = fieldScore;
    } else {
      print('invalid score');
    }
  }

  int get fieldScore => this._fieldScore!;

  bool get isPassed {
    if (_fieldScore! >= 50) {
      return true;
    } else {
      return false;
    }
  }
}
