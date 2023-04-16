import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final imageURL="https://pps.whatsapp.net/v/t61.24694-24/328796818_2233541573700486_3523803386516478930_n.jpg?ccb=11-4&oh=01_AdTVGWi4Tp6OdxC6fAL-QLawweSSIt5vdDqynTHo1ASlRw&oe=64468A58";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shivam Maurya"),
                accountEmail: Text("shivammaurya21133@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}