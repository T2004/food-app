import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget singalproducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
                'https://www.seekpng.com/png/detail/15-159080_free-png-hamburger-image-png-images-transparent-painting.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chicken Burger',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '10\$',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            padding: EdgeInsets.only(left: 5),
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'addon',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Center(
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.yellowAccent, size: 20),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.remove),
                                Text('1'),
                                Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 120,
                          child: MaterialButton(
                            child: Row(
                              children: [],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 120,
                          child: MaterialButton(
                            child: Row(
                              children: [],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'HomeScreen',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.green,
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.green,
              child: Icon(Icons.shop, size: 17, color: Colors.black),
            ),
          ),
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://ychef.files.bbci.co.uk/976x549/p081pwwb.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 340, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'fodiee',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '20% OFF',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all foods',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Burger'),
                  Text(
                    'Viewall',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalproducts(),
                  singalproducts(),
                  singalproducts(),
                  singalproducts(),
                  singalproducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pizza'),
                  Text(
                    'Viewall',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalproducts(),
                  singalproducts(),
                  singalproducts(),
                  singalproducts(),
                  singalproducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
