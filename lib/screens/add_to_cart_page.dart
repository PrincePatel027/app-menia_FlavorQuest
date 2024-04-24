import 'package:flutter/material.dart';
import 'package:salad_prog/utils/utils_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ///
  ///

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var DataCartPage = ModalRoute.of(context)!.settings.arguments as dynamic;
    Data.cartItemSet.add(DataCartPage);
    Data.setToListConverterCart();

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/burger/background.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.15,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 450,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...Data.cartItemList.map(
                      (e) => (Data.totalPrice() != 0)
                          ? Padding(
                              padding: const EdgeInsets.only(
                                top: 18.0,
                                left: 18,
                                right: 18,
                              ),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 6.8,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                6,
                                        child: Image.asset('${e['image']}'),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${e['name']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              '\$ ${e['price']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      (e['itemCount'] >= 1)
                                                          ? e['itemCount'] -= 1
                                                          : e['itemCount'] = 0;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    Icons.remove_circle,
                                                    size: 25,
                                                  ),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  '${e['itemCount']}',
                                                  style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      e['itemCount'] += 1;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    Icons.add_circle,
                                                    size: 25,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              '\$ ${e['price'] * e['itemCount']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SubTotal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      Text(
                        '\$ ${Data.totalPrice()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1.5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      (Data.totalPrice() != 0)
                          ? Text(
                              '\$ 3.99',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey.shade700,
                              ),
                            )
                          : Text(
                              '\$ 0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                    ],
                  ),
                  Container(
                    height: 1.5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      (Data.totalPrice() != 0)
                          ? Text(
                              '\$ ${Data.totalPrice().toDouble() + 3.99}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          : const Text(
                              '\$ 0.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).popAndPushNamed('/');
                      });
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 14,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'CHACKOUT',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("pdfPage");
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 14,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Download PDF',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
