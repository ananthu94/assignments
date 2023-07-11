import 'hotel_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hotelHome(),
  ));
}

class hotelHome extends StatelessWidget {
  var iterated_details = hotelData.map((hotelDetails) => hotelDetails);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite),
            )
          ],
          centerTitle: true,
          title: Text("Hottey"),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 150),
            child: Column(children: [
              Text(
                "Type your location",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 30, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          hintText: "Bouddha, Kathmandu",
                          prefixIcon: Icon(Icons.search))),
                ),
              )
            ]),
          ),
        ),
        SliverList.builder(
          itemCount: 1,
          itemBuilder: (context, index) => Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                    height: 100,
                    width: 100,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.bed, color: Colors.white),
                          Text("Hotel")
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    height: 100,
                    width: 100,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.bowlFood, color: Colors.white),
                          Text("Restaurant")
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.coffee, color: Colors.white),
                          Text("Cafe")
                        ]),
                  ),
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemCount: iterated_details.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            iterated_details.elementAt(index)["image"],
                          ),
                        ),
                      ),
                      child: Container(
                        height: 600,
                        width: double.infinity,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.bottomLeft,
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                            "${iterated_details.elementAt(index)["name"]}"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                            "${iterated_details.elementAt(index)["location"]}"),
                                      ),
                                      Wrap(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Icon(
                                              FontAwesomeIcons.solidStar,
                                              color: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Icon(
                                              FontAwesomeIcons.solidStar,
                                              color: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Icon(
                                              FontAwesomeIcons.solidStar,
                                              color: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Icon(
                                              FontAwesomeIcons.solidStar,
                                              color: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Icon(
                                              FontAwesomeIcons.solidStar,
                                              color: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5, left: 5),
                                          child: Text(
                                              "${iterated_details.elementAt(index)["rating"]}"),
                                        ),
                                      ]),
                                    ],
                                  )),
                            ]),
                      ),
                    ),
                    Positioned(
                      left: 320,
                      top: 220,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                              " \$ ${iterated_details.elementAt(index)["price"]}"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        )
      ]),
      drawer: Drawer(backgroundColor: Colors.amber),
    );
  }
}
