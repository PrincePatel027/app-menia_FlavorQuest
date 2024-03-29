import 'package:custom_like_button/custom_like_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:salad_prog/utils/utils_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? catagorySelected;
  bool tapColor = false;
  bool likedOrNot = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.location_on),
            Text(
              'Hobiganj City',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Badge(
              label: Text('1'),
              child: Icon(
                Icons.menu,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 35,
                  ),
                  children: [
                    TextSpan(text: 'Find The '),
                    TextSpan(
                        text: 'Best \n',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                    TextSpan(
                        text: 'Food ',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                    TextSpan(text: 'Around You'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.search,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search Your Faurite Food',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("fauritePage");
                          });
                        },
                        child: const Icon(
                          Icons.event_note_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Text(
                      'Find',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '12 km >',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...Data.itemData.map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              catagorySelected = e['categoryName'];
                            });
                          },
                          child: Container(
                            height: 70,
                            child: Row(
                              children: [
                                selectCataggory(e),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ...Data.itemData.map(
                      (e) => (catagorySelected == e['categoryName'] ||
                              catagorySelected == null)
                          ? Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...e['items'].map(
                                        (el) => Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Navigator.of(context).pushNamed(
                                                  "detailPage",
                                                  arguments: el,
                                                );
                                              });
                                            },
                                            child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.4,
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Container(
                                                        height: 140,
                                                        width: double.infinity,
                                                        child: Image.asset(
                                                          "${el['image']}",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: GestureDetector(
                                                          onTap: () => setState(
                                                            () => likedOrNot =
                                                                !likedOrNot,
                                                          ),
                                                          child:
                                                              CustomLikeButtonWithAnimation(
                                                            front: const Icon(
                                                              Icons.favorite,
                                                              color: Colors.red,
                                                              size: 30,
                                                            ),
                                                            back: const Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color:
                                                                    Colors.red,
                                                                size: 30),
                                                            isLiked: likedOrNot,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '${el['name']}',
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Text(
                                                            "${el['expectedTime'].toInt()} Min",
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors.grey
                                                                  .shade600,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              const Icon(
                                                                Icons
                                                                    .star_border,
                                                                color: Colors
                                                                    .amber,
                                                              ),
                                                              Text(
                                                                "${el['rating']}",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Text(
                                                          "\$ ${el['price']}",
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {},
                                                        child: Container(
                                                          height: 52,
                                                          width: 50,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .green.shade300,
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(30),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                          child: const Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Container(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    (catagorySelected != null)
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                catagorySelected = null;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 18,
                              decoration: BoxDecoration(
                                color: Colors.green.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'Show All Items',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),

              ///
              ///
              ///
              ///
              /// Add containers
              ///
              ///
              ///
              ///
              ///
            ],
          ),
        ),
      ),
    );
  }

  Widget selectCataggory(Map<String, dynamic> e) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: (catagorySelected == e['categoryName'])
            ? Colors.green.shade300
            : Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          '${e['categoryName']}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
