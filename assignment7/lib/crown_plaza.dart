import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Crown_plaza(),
  ));
}

class Crown_plaza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                ),
                Positioned(
                  left: 25,
                  top: 280,
                  child: Container(
                    child: Text(
                      'Crown Plaza\nKochi, Kerala',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 340,
                  child: Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text(
                          '8.4/85 reviews',
                          style: TextStyle(fontSize: 10, color: Colors.white70),
                        )),
                  ),
                ),
                Positioned(
                  top: 340,
                  left: 520,
                  child: Container(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 15,
                      )
                    ],
                  ),
                  Text(
                    '€ 200',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Text('8 km to LuluMall',
                          style: TextStyle(fontSize: 8, color: Colors.grey))
                    ],
                  ),
                  Text(
                    '/per night',
                    style: TextStyle(fontSize: 8, color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.purple),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(fontSize: 10),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 20),
                    child: Text(
                      'Ramada Plaza Palm Grove',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                      "Perched on a cliff, overlooking the majestic Athirappilly Waterfalls, Niraamaya Retreats Samroha is a serene abode amid nature’s incredible beauty and just a stone's throw away from the cascading waters. It is surrounded by rugged hills, lush green forests, and magnificent views of Athirappilly Falls, which is famously known as the Niagara of India. Samroha is truly a special tropical getaway for you and your loved ones. \nNiraamaya Retreats Samroha is an enchanting resort marked by comfort and luxury at a breathtaking location that enlivens all your senses with an unbelievable fusion of tranquil ambience, contemporary elegance, and enthralling adventure. This 5 star luxury resort in Kerala is a strikingly beautiful palatial building that embodies an old-world charm along with visible impressions of contemporary luxury. Rediscover yourself through calming views of nature, fun-filled cycling sessions through the forest, and wildlife spotting.\nPerched on a cliff, overlooking the majestic Athirappilly Waterfalls, Niraamaya Retreats Samroha is a serene abode amid nature’s incredible beauty and just a stone's throw away from the cascading waters. It is surrounded by rugged hills, lush green forests, and magnificent views of Athirappilly Falls, which is famously known as the Niagara of India. Samroha is truly a special tropical getaway for you and your loved ones. \nNiraamaya Retreats Samroha is an enchanting resort marked by comfort and luxury at a breathtaking location that enlivens all your senses with an unbelievable fusion of tranquil ambience, contemporary elegance, and enthralling adventure. This 5 star luxury resort in Kerala is a strikingly beautiful palatial building that embodies an old-world charm along with visible impressions of contemporary luxury. Rediscover yourself through calming views of nature, fun-filled cycling sessions through the forest, and wildlife spotting.",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                  Text('')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
