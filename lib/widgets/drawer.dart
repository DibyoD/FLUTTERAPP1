import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imgUrl =
        "https://scontent-bom1-1.xx.fbcdn.net/v/t31.18172-8/27356110_1981462025436947_2541465229387461191_o.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=0ozjoJhty1cAX_X_WCJ&_nc_ht=scontent-bom1-1.xx&oh=00_AT8drFRuBUknDwskp8K-0A5I3sa23gB85ZI7kPruEN8WRQ&oe=621FD4C1";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                ),
                accountName: Text("Dibyo Dhara"),
                accountEmail: Text("dibyo1234@gmail.com")),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
