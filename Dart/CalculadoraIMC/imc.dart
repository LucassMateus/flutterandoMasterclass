double calculateIMC({required double weight, required double height}) {
  return weight / (height * height);
}

void main() {
  var weight = 67.0;
  var height = 1.78;

  print(calculateIMC(weight: weight, height: height));
}
