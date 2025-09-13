// Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
//  print the total count of unique words

import 'dart:io';

void main() {
  print('Please enter a sentence');
  String sentence = stdin.readLineSync()!;
  String cleanSentence = sentence.toLowerCase();
  List<String> sentenceList = cleanSentence.split(' ');
  int count = 0;

  for (int i = 0; i < sentenceList.length; i++) {
    if (sentenceList.indexOf(sentenceList[i]) ==
        sentenceList.lastIndexOf(sentenceList[i])) {
      print(sentenceList[i]);
      count++;
    }
  }
  print('There are $count unique words');
}
