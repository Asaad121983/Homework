

bool isPalindrome(String s) {
  String cleaned = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  String reversed = cleaned.split('').reversed.join();
  
  return cleaned == reversed;
}
void main() {
  print(isPalindrome("A man, a plan, a canal: Panama")); 
  print(isPalindrome("race a car"));                      
  print(isPalindrome(" "));                              
}
