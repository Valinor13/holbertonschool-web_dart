// longestUniqueSubstring - finds the longest non-repeating substring
// @str: the input String
// @return: the longest non-repeating substring, if multiple return the first occurence
String longestUniqueSubstring(String str) {
  if (str.length < 3) return '';
  String longest = '';
  String current = '';
  for (int i = 0; i < str.length; i++) {
    for (int j = i; j < str.length; j++) {
      current = str.substring(i, j + 1);
      if (current.length > longest.length && isUnique(current)) {
        longest = current;
      }
    }
  }
  return longest;
}

// isUnique - determines if the input string has all unique characters
// @str: the input String
// @return: true if all characters are unique, false otherwise
bool isUnique(String str) {
  Map<String, int> map = {};
  for (int i = 0; i < str.length; i++) {
    if (map.containsKey(str[i])) {
      return false;
    }
    map[str[i]] = 1;
  }
  return true;
}
