import 'dart:io';

void main () {
  final text = stdin.readLineSync()?? '';
  checkText(text);
}

void checkText(String text){
  if (RegExp(r'[a-z0-9.-_]+@[a-z0-9.-_]+').hasMatch(text)){
    print('É um email');
  } else if (RegExp(r'\d{2}:\d{2}').hasMatch(text)){
      print('É horário');
  } else if (RegExp(r'\d?\d[-/]\d?\d[-/]\d?\d?\d\d').hasMatch(text)){
      print('É data');
  } else if (RegExp(r'\d{3}\.\d{3}\.\d{3}-\d{2}').hasMatch(text)){
      print('É CPF');
  } else if (RegExp(r'\d{2}\.\d{3}\.\d{3}\/0001-\d{2}').hasMatch(text)){
      print('É CNPJ');
}
}