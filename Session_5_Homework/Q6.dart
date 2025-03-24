/*
Count Words in a Sentence
Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces.
*/

int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.where((word) {
    return word.isNotEmpty;
  }).length;
}

void main() {
  String sentence = "   Asaad Elsaadany   Bedeir   Adam   ";
  print("Word count: ${countWords(sentence)}");  // Output: 4
}
