import 'dart:io';
main () {
  final groupRegex = RegExp(r'(\d{3}-\d{3})');
  final match= groupRegex.firstMatch('123-232 é seu código');
  
  print(match?.group(1));
}