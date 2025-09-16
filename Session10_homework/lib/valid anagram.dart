void main() {
  String s = 'omnia';
  String t = 'omnai';
  print(isAnagram(s, t));
}

bool isAnagram(String s, String t) {
  Map<String, int> sMap = {};
  Map<String, int> tMap = {};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    sMap[char] = (sMap[char] ?? 0) + 1;
  }

  for (int i = 0; i < t.length; i++) {
    String char = t[i];
    tMap[char] = (tMap[char] ?? 0) + 1;
  }

  if (sMap.length != tMap.length) {
    return false;
  } else {
    for (var key in sMap.keys) {
      if (sMap[key] != tMap[key]) {
        return false;
      }
    }
  }
  return true;
}
