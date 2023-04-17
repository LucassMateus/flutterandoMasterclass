import 'package:flutter/material.dart';

class ShoppingCartController extends InheritedNotifier<ValueNotifier<int>> {
  ShoppingCartController({Key? key, required Widget child})
      : super(key: key, child: child, notifier: ValueNotifier(0));

  static of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ShoppingCartController>()!;
  }

  int get value => notifier!.value;

  increment() {
    notifier!.value++;
  }

  reduce() {
    notifier!.value--;
  }
}
