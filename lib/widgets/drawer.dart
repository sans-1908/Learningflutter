import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Sanskriti Sharma"),
                  accountEmail: Text("sans19.sharma@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dp.png"),
                  ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white),
              title: Text("HOME",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white),
              title: Text("Profile",
                textScaleFactor: 1.3,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                  color: Colors.white),
              title: Text("Email me",
                textScaleFactor: 1.3,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}