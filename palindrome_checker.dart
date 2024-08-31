bool isPalindrome(String input) {
  String processed = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  return processed == processed.split('').reversed.join('');
}

void main() {
  print(isPalindrome("A man, a plan, a canal, Panama")); // true
  print(isPalindrome("Hello, World!")); // false
  print(isPalindrome("12321")); // true
  print(isPalindrome("12345")); // false
}
