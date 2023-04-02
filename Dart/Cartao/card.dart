class card {
  final String NumCard;

  card(this.NumCard);

  String get getNum => NumCard;

  bool isCard(){
    return (RegExp(r'\d{16}').hasMatch(NumCard.replaceAll(RegExp(r' '), ''))) ? true : false;
  }

  bool cardValidation (){
    return (isCard() && verifyNumberCard()) ? true : false;
}

  bool verifyNumberCard () {
    final String onlyNumbersCard = NumCard.replaceAll(RegExp(r' '), '');
    int multResult = 0;

    for (var i = 0; i < onlyNumbersCard.length - 1; i++){
      int multi;
      if (i % 2 == 0) {
        multi= int.parse(onlyNumbersCard[i]) * 2;
        (multi > 9) ? multResult += (multi - 9) : multResult += multi;
      } else multResult += int.parse(onlyNumbersCard[i]);
    }
    String verifyNumber = (10 - (multResult % 10)).toString();   
    (verifyNumber == "10") ? verifyNumber = "0" : verifyNumber = verifyNumber;

    return (verifyNumber == onlyNumbersCard[onlyNumbersCard.length - 1]) ? true : false;
  }
}

