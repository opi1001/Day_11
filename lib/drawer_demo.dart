import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      endDrawer: Drawer(
        width: 300.0,
        backgroundColor: Colors.yellowAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomRight: Radius.circular(450),
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("lillarer"),
                accountEmail: Text("lilleri@gmail.com"),
                onDetailsPressed: () {},
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1582610285985-a42d9193f2fd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YW1lcmljYW4lMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                "Home",
              ),
              onTap: (() {
                Navigator.pop(context);
              }),
            ),
            const ListTile(
              leading: Icon(
                Icons.search,
              ),
              title: Text(
                "search",
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.share,
              ),
              title: Text(
                "Share ",
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text(
                "Contract",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
