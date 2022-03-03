import 'package:flutter/material.dart';
import 'package:travel_demo/model/MySlider.dart';
import 'package:travel_demo/widget/top_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MySlider> mylist = [
    MySlider(
      id: DateTime.now().toString(),
      name: 'mountain',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ',
      distance: '7km',
      temp: '28 \u2103',
      imagePath: '1.jpg',
      place: 'united state',
      rating: '4.8',
      totalprice: '1200',
    ),
    MySlider(
      id: DateTime.now().toString(),
      name: 'sea',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ',
      distance: '25km',
      temp: '12 \u2103',
      imagePath: '2.jpg',
      place: 'iran',
      rating: '5',
      totalprice: '20000',
    ),
    MySlider(
      id: DateTime.now().toString(),
      name: 'jungle',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ',
      distance: '10km',
      temp: '30 \u2103',
      imagePath: '3.jpg',
      place: 'preu',
      rating: '3.5',
      totalprice: '2500',
    ),
    MySlider(
      id: DateTime.now().toString(),
      name: 'sky',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ',
      distance: '12km',
      temp: '45 \u2103',
      imagePath: '4.jpg',
      place: 'italia',
      rating: '1.5',
      totalprice: '5300',
    ),
  ];

  int myListIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // * big image
                    Container(
                      height: 360,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                        ),
                        child: Image.asset(
                          'images/${mylist[myListIndex].imagePath}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    topIcons(),
                    // *imge titel  & place
                    Positioned(
                      bottom: 30,
                      left: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mylist[myListIndex].name!,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.white),
                              Text(
                                mylist[myListIndex].place!,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    //  *image list view
                    Positioned(
                      right: 10,
                      top: 80,
                      child: Container(
                        height: 400,
                        width: 100,
                        // *list of image
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  myListIndex = 0;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 75,
                                  width: 75,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  myListIndex = 1;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 75,
                                  width: 75,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  myListIndex = 2;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 75,
                                  width: 75,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/3.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  myListIndex = 3;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 75,
                                  width: 75,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/4.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // * info box
                    Padding(
                      padding: EdgeInsets.only(
                        top: 80,
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.2),
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Distance',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  mylist[myListIndex].distance!,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0xff78CADE),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.2),
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Temp',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  mylist[myListIndex].temp!,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0xff78CADE),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.2),
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  mylist[myListIndex].rating!,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0xff78CADE),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //  *description image
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${mylist[myListIndex].description!}read more...',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // *price column
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(fontSize: 22),
                              ),
                              Text(
                                '\$${mylist[myListIndex].totalprice!}',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // *big button
                          RawMaterialButton(
                            constraints: BoxConstraints(
                              minWidth: 75,
                              minHeight: 75,
                            ),
                            fillColor: Colors.black,
                            shape: CircleBorder(),
                            onPressed: () {},
                            child: Icon(
                              Icons.chevron_right_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class BackgroundImage extends StatelessWidget {
//   const BackgroundImage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

// class ImageInfo extends StatelessWidget {
//   const ImageInfo({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

// class Description extends StatelessWidget {
//   const Description({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }

// class PriceColumn extends StatelessWidget {
//   const PriceColumn({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }

// class CircleButton extends StatelessWidget {
//   const CircleButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
