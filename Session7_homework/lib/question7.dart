// Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
//  and how many characters (excluding spaces).

import 'dart:io';

void main() {
  print('please enter a short sentence');
  String sentence = stdin.readLineSync()!;

  List<String> sentenceList = sentence.split(' ');
  print('this sentence contain ${sentenceList.length} words');

  print(
    'This sentence contain ${sentence.replaceAll(" ", "").length} characters',
  );
}
