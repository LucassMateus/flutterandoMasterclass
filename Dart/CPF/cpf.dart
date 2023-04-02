class cpf {
  final String _cpf;

  cpf(this._cpf);

  String get getCPF => _cpf;

  bool isCpf () {
    return (RegExp(r'\d{3}\.\d{3}\.\d{3}-\d{2}').hasMatch(_cpf)) ? true : false;
  }

  bool cpfValidator () {
    if (isCpf()){
      final String cpfNumbers = _cpf.replaceAll(RegExp(r'[\.-]'), '');
      final isValidDigit1 = isValidDigit(cpf: cpfNumbers, digitValidation: 1);
      final isValidDigit2 = isValidDigit(cpf: cpfNumbers, digitValidation: 2);
      
      return (isValidDigit1 && isValidDigit2) ? true : false;
    } else return false;
    }
    
  bool isValidDigit ({required String cpf, int? digitValidation}){
    int indexValidation;
    digitValidation == 1 ? indexValidation = 2 : indexValidation = 1;
    final int verifierDigit = int.parse(cpf[cpf.length - indexValidation]);
    int multfactor = 2;
    int sum = 0;
    
    for (var i = (cpf.length - indexValidation) - 1 ; i >= 0; i--) {
      sum += int.parse(cpf[i]) * multfactor;
      multfactor ++;
    }
    var value = sum % 11;
    value <2?  value = 0 :  value = (11 - value);

    return (verifierDigit == value) ? true : false;
  }
  }
