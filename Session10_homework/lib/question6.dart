//  Q6
//  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//  An input string is valid if:
//  1. Open brackets must be closed by the same type of brackets.
// 2. Open brackets must be closed in the correct order.
//  3. Every close bracket has a corresponding open bracket of the same type.
//  Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → Vali

void main() {
  String s1 = '{}()[]';
  print(isValid(s1));
}

bool isValid(String s) {
  Map<String, String> pairs = {')': '(', '}': '{', ']': '['};
  List<String> listString = [];

  for (int i = 0; i < s.length; i++) {
    String parentheses = s[i];

    if (pairs.containsKey(parentheses)) {
      if (listString.isEmpty || listString.last != pairs[parentheses]) {
        return false;
      } else {
        listString.removeLast();
      }
    } else {
      listString.add(parentheses);
    }
  }
  return listString.isEmpty;
}
