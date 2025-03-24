/*
Find the Longest Word
Write a function that takes a sentence as input 
and returns the longest word in the sentence.
If multiple words have the same longest length, 
return the first one that appears.
*/

String longestWord(String sentence) {
  List<String> words = sentence.split(' ');
  String longest = '';
  for (String word in words) {
    if (word.length > longest.length) {
      longest = word;
    }
  }
  return longest;
}

void main() {
  String sentence = "Asaad Elsaadany Bedir";
  print("Longest word: ${longestWord(sentence)}"); 
}
