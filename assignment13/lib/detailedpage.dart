import 'package:flutter/material.dart';
import 'package:assignment13/datas.dart';
import 'package:assignment13/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detailedpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataid = ModalRoute.of(context)?.settings.arguments;
    final finaldata =
        details.firstWhere((element) => element['name'] == dataid);
    final facilities = finaldata['facilities'];
    return Scaffold(
        body: ListView(
          children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Wrap(children: [
                        Text(
                          finaldata['name'],
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 20, top: 8, bottom: 2),
                          child: Container(
                            color: Colors.black,
                            width: 2,
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2, top: 2),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image:
                                        NetworkImage('${finaldata['image1']}'),
                                    fit: BoxFit.cover)),
                          ),
                        )
                      ]),
                    ),
                    Star(finaldata: finaldata),
                    Container(
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            'About Place',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                        subtitle: Text(finaldata['description']),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Special Facilities',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: List.generate(
                                  3,
                                  (index) => Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        facilities[index]["item"],
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage('${finaldata['image2']}'),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ]),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 25),
          child: BottomAppBar(
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('Home')),
          ),
        ));
  }
}

class Star extends StatelessWidget {
  const Star({
    super.key,
    required this.finaldata,
  });

  final Map<String, dynamic> finaldata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: Wrap(
        children: [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
            size: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 3),
            child: Text(
              '${finaldata['rating']} rating',
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
