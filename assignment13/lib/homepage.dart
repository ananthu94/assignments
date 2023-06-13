import 'package:flutter/material.dart';
import 'package:assignment13/datas.dart';
// import 'package:assignment13/detailedpage.dart';

// void main() {
//   runApp(
//     MaterialApp(home: Home(), routes: {
//       'detailedpage': (context) => Detailedpage(),
//       'homepage': (context) => Home(),
//     }), // Wrap your app
//   );
// }

class Home extends StatelessWidget {
  final data = details..map((data) => data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.list,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Go',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Text(
                'Fast',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Builder(builder: (context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(
                    Icons.person_pin,
                    color: Colors.blue,
                  ),
                );
              }),
            )
          ],
        ),
        body: Bodydetails(),
        bottomNavigationBar: bottombar(),
        endDrawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.green),
          child: Drawer(
            child: Drawer_list(),
          ),
        ));
  }
}

// bottom navi bar
class bottombar extends StatelessWidget {
  final data = details..map((data) => data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 25),
      child: BottomAppBar(
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
            onPressed: () {
              Navigator.of(context).pushNamed('detailedpage',
                  arguments: data.elementAt(0)['name']);
            },
            child: Text('Explore Now')),
      ),
    );
  }
}

//drawer list

class Drawer_list extends StatelessWidget {
  const Drawer_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Drawer_details(),
        ListTile(
          leading: Icon(Icons.hotel_class),
          title: Text('Bookings'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.account_balance_wallet),
          title: Text('Wallet'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.power_settings_new),
          title: Text('Logout'),
        ),
      ],
    );
  }
}

//drawer details
class Drawer_details extends StatelessWidget {
  const Drawer_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80'),
              fit: BoxFit.cover)),
      accountName: Text(
        "I'm A Bot",
      ),
      accountEmail: Text(
        '  @bot_dev',
        style: TextStyle(fontSize: 10),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1505628346881-b72b27e84530?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
      ),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1510771463146-e89e6e86560e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80'),
        ),
      ],
    );
  }
}

//body
class Bodydetails extends StatelessWidget {
  final data = details..map((data) => data);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Text(
              'Popular Places',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: GridView.builder(
                itemCount: details.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => Navigator.of(context).pushNamed('detailedpage',
                        arguments: data.elementAt(index)['name']),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          data.elementAt(index)['image'],
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              data.elementAt(index)['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
