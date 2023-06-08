import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          home: Farmers_fresh(),
          theme: ThemeData(primarySwatch: Colors.green)),
    ),
  );
}

class Farmers_fresh extends StatefulWidget {
  @override
  State<Farmers_fresh> createState() => _Farmers_freshState();
}

class _Farmers_freshState extends State<Farmers_fresh> {
  // List districts = ['Idukki', 'Thrissur', 'Kottayam', 'Alappuzha'];
  // String choosen = 'Idukki';
  List detailedlist = [
    ['VEGETABLES', 'FRUITS', 'EXOTIC', 'FRESH CUTS', 'EXOTIC FRUITS'],
    [
      'https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
      'https://images.unsplash.com/photo-1518843875459-f738682238a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=842&q=80',
      'https://images.unsplash.com/photo-1592201426550-83c4be24a0a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1031&q=80',
      'https://images.unsplash.com/photo-1601648764658-cf37e8c89b70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80',
      'https://images.unsplash.com/photo-1639086495429-d60e72c53c81?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80'
    ],
    [
      'https://res.cloudinary.com/farmersfreshzone/image/upload/v1638787119/Product/jghu86qgjdtnsvlyvnkl.jpg',
      'https://res.cloudinary.com/ffz/image/upload/v1676114778/banners/pxytchw9khrnorziagay.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435765/Product/tssgwn0eeejipf8mhfd2.jpg',
      'https://res.cloudinary.com/ffz/image/upload/v1676379471/banners/w0mivtggfeptjocxzkc5.jpg',
      'https://res.cloudinary.com/ffz/image/upload/v1675850558/banners/e3wrznkywyhuslrmpmep.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933525/product/kayzgbtyrzup3uiiflhu.jpg',
      'https://res.cloudinary.com/ffz/image/upload/v1675402098/banners/yr56bd8zbhaokg4egkn6.jpg',
      'https://res.cloudinary.com/ffz/image/upload/v1676114624/banners/a0b1dt5dtcg2rit5tq4k.jpg',
    ],
    [
      'Offers',
      'Vegetables',
      'Fruits',
      'Excotic',
      'Fresh Cuts',
      'Nutrition Chargers',
      'Packed Flavors',
      'Gourment Salads',
    ],
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
          title: Text(
            'FARMERS FRESH ZONE',
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.location_on_outlined,
                ),
                Text(
                  'Kochi',
                  style: TextStyle(color: Colors.white),
                ),

                //drop down button

                // DropdownButton(
                //   items: districts.map((Valueitem) {
                //     return DropdownMenuItem(
                //         value: Valueitem, child: Text(Valueitem));
                //   }).toList(),
                //   onChanged: (newvalue) {
                //     setState(() {
                //       choosen = newvalue.toString();
                //     });
                //   },
                //   value: choosen,
                // )

                // Gesture Detector

                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: show_sheet(),
                ),
              ],
            )
          ],
          //bottom appbar
          bottom: AppBar(
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search for vegetables,fruits...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          )),
      //body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .065,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      detailedlist[0].length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              child: Card(
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide:
                                        BorderSide(color: Colors.green)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.green[50]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 10),
                                    child: Text(
                                      detailedlist[0][index],
                                      style: TextStyle(
                                          color: Colors.green[600],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          letterSpacing: .5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            ),
            carouselpics(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 30,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '30 MINS POLICY',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            size: 30,
                            Icons.phone_iphone,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'TRACEABILITY',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_search,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'LOCAL SOURCING',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Text(
                'Shop By Category',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 170,
                    crossAxisSpacing: 10),
                itemCount: detailedlist[2].length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        child: Image(
                          image: NetworkImage(detailedlist[2][index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(detailedlist[3][index])
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      //bottom nav bar
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          onTap: (selectedindex) {
            setState(() {
              index = selectedindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(
                    Icons.home,
                  ),
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(
                    FontAwesomeIcons.cartShopping,
                  ),
                ),
                label: 'CART'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(
                    Icons.person_outline,
                  ),
                ),
                label: 'ACCOUNT'),
          ]),
    );
  }
}

//location widget, bottom sheet

class show_sheet extends StatelessWidget {
  const show_sheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Kochi'),
                        )),
                    Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Thrissur'),
                        )),
                    Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Thiruvananthapuram'),
                        ))
                  ],
                ),
              ),
            ),
        child: Icon(
          Icons.keyboard_arrow_down,
          // size: 50,
          color: Colors.white,
        ));
  }
}

//carousel slider widget

class carouselpics extends StatelessWidget {
  const carouselpics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80'),
                  fit: BoxFit.cover)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1518843875459-f738682238a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=842&q=80'),
                  fit: BoxFit.cover)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1639086495429-d60e72c53c81?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80'),
                  fit: BoxFit.cover)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1592201426550-83c4be24a0a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1031&q=80'),
                  fit: BoxFit.cover)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1601648764658-cf37e8c89b70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80'),
                  fit: BoxFit.cover)),
        ),
      ],
      options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: 150,
          autoPlayInterval: Duration(seconds: 3)),
    );
  }
}
