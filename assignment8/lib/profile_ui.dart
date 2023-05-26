import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(useInheritedMediaQuery: true, home: Profile()),
    ),
  );
}

List detailedlist = [
  [
    Icons.privacy_tip_outlined,
    Icons.history,
    Icons.help_center_outlined,
    Icons.settings_outlined,
    Icons.person_add_alt,
    Icons.logout
  ],
  [
    'Privay',
    'Purchased History',
    'Help & Support',
    'Settings',
    'Invite a friend',
    'Logout'
  ],
];

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                    ),
                    Icon(Icons.menu),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            // image: AssetImage('assets/images/me.jpg')
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1684369176170-463e84248b70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=484&q=80'))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/icons/facebook.png',
                        scale: 13,
                      ),
                      Image.asset(
                        'assets/icons/twiter.png',
                        scale: 13,
                      ),
                      Image.asset(
                        'assets/icons/linkedin.png',
                        scale: 13,
                      ),
                      Image.asset(
                        'assets/icons/github.png',
                        scale: 13,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "I'm a Bot",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Text('@_Bot_dev'),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Flutter Developer',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: detailedlist[0].length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 70,
                          child: Card(
                            shape: StadiumBorder(),
                            color: Colors.white70,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: ListTile(
                                leading: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Icon(
                                    detailedlist[0][index],
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                                title: Text(detailedlist[1][index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
