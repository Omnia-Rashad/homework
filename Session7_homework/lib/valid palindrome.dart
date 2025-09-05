void main() {
  String word = "A man, a plan, a canal: Panama";
  bool output = Solution().isPalindrome(word);

  print(output);
}

class Solution {
  bool isPalindrome(String s) {
    String reversedString = "";
    String cleanedString = s
        .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')
        .toLowerCase();

    for (int i = cleanedString.length - 1; i >= 0; i--) {
      reversedString += cleanedString[i];
    }
    return reversedString == cleanedString;
  }
}

// class Solution {
//   bool isPalindrome(String s) {
//     String cleanedString = s
//         .replaceAll(RegExp(r'[^a-zA-Z0-9]'), "")
//         .toLowerCase();

//     //reversed work on characters only so in order to we want to use it
//     //we must do split to characters then join these characters into word
//     return cleanedString == cleanedString.split("").reversed.join("");
//   }
// }
