import 'package:flutter/material.dart';
import 'shopping_cart_controller.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = ShoppingCartController.of(context);
    var actionValue = 5.60;
    var totalValue = actionValue * controller.value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.trending_up_outlined,
                      size: 50,
                    ),
                    Text(
                      'Valor: R\$${actionValue}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Ação X',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          IconButton(
                              onPressed: () {
                                controller.reduce();
                              },
                              icon: const Icon(Icons.remove)),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: Card(
                              elevation: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${controller.value}',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                            width: 100,
                            child: Card(
                              elevation: 3,
                              child: Center(
                                child: Text(
                                  'Total: R\$${totalValue.toStringAsFixed(2)}',
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
