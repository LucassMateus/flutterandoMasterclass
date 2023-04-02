main (){
  final regex = RegExp(r'[^\d-]');

  print('Seu código é 521.41-97'.replaceAll(regex, ''));
  print('You code is  52141-97'.replaceAll(regex, ''));
  print('Este es tu código de acesso 52141-97'.replaceAll(regex, ''));
}