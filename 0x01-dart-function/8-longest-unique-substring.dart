// longestUniqueSubstring - finds the longest non-repeating substring
// @str: the input String
// @return: the longest non-repeating substring, if multiple return the first occurence
String longestUniqueSubstring(String str) {
  int i;
  int strLength = str.length;
  int currentStart = 0;
  int currentLength = 0;
  int longestLength = 0;
  int longestStart = 0;
  Map pos = {};
  pos[str[0]] = 0;
  for (i = 1; i < strLength; i++) {
    if (pos[str[i]] == null) {
      pos[str[i]] = i;
    } else {
      if (pos[str[i]] >= currentStart) {
        currentLength = i - currentStart;
        if (longestLength < currentLength) {
          longestLength = currentLength;
          longestStart = currentStart;
        }
        currentStart = pos[str[i]] + 1;
      }
      pos[str[i]] = i;
    }
  }

  if (longestLength < i - currentStart) {
    longestLength = i - currentStart;
    longestStart = currentStart;
  }

  return str.substring(longestStart, longestLength);
}
