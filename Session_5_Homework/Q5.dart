/*
Find the Longest Word
Write a function that takes a sentence as input 
and returns the longest word in the sentence.
If multiple words have the same longest length, 
return the first one that appears.
*/

String longestWord(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  String longest = '';
  for (String word in words) {
    if (word.length > longest.length) {
      longest = word;
    }
  }
  return longest;
}

void main() {
  String sentence = "The quick brown fox jumps over the lazy dog";
  print("Longest word: ${longestWord(sentence)}");  // Output: jumps
}
