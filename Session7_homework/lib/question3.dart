//  Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
//  count how many vowels it has

import 'dart:io';

void main() {
  print('please enter a word');
  String word = (stdin.readLineSync()!);

  String reversedWord = '';
  int countVowel = 0;

  for (int i = word.length - 1; i >= 0; i--) {
    reversedWord += word[i];

    if (word[i].toLowerCase() == 'a' ||
        word[i].toLowerCase() == 'e' ||
        word[i].toLowerCase() == 'o' ||
        word[i].toLowerCase() == 'u' ||
        word[i].toLowerCase() == 'i') {
      countVowel++;
    }
  }
  print(reversedWord);
  print(countVowel);
}
