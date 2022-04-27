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
    // If this character is not present in hash,
    // then this is first occurrence of this
    // character, store this in hash.
    if (pos[str[i]] == null) {
      pos[str[i]] = i;
    } else {
      // If this character is present in hash then
      // this character has previous occurrence,
      // check if that occurrence is before or after
      // starting point of current substring.
      if (pos[str[i]] >= currentStart) {
        // find length of current substring and
        // update maxlen and start accordingly.
        currentLength = i - currentStart;
        if (longestLength < currentLength) {
          longestLength = currentLength;
          longestStart = currentStart;
        }

        // Next substring will start after the last
        // occurrence of current character to avoid
        // its repetition.
        currentStart = pos[str[i]] + 1;
      }

      // Update last occurrence of
      // current character.
      pos[str[i]] = i;
    }
  }
  // Compare length of last substring with maxlen and
  // update maxlen and start accordingly.
  if (longestLength < i - currentStart) {
    longestLength = i - currentStart;
    longestStart = currentStart;
  }

  // The required longest substring without
  // repeating characters is from str[start]
  // to str[start+maxlen-1].

  return str.substring(longestStart, longestLength);
}
