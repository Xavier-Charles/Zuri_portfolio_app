import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Info Widget
  final Widget info = Container(
    child: Padding(
      padding: EdgeInsets.fromLTRB(6.0, 12.0, 6.0, 6.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 16.0),
            child: Text(
              'I\'m Charles Nwankwo',
              style: TextStyle(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
            child: Text(
              'A full-stack web developer learning Flutter - Fuller Stack :)',
              style: TextStyle(
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Checkout my full profile @ xavier-charles.github.io/me',
              style: TextStyle(
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  );
  
final Widget red = Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
              child: Text(
                'A full-stack web developer learning Flutter - Fuller Stack :) Wisdom.',
                style: TextStyle(
                  fontSize: 23,
                ),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
              ),
          );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio_Charles_X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Portfolio App'),
        ),
        body: ListView(
          children: <Widget>[
            info,
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        // DrawerHeader(
        //   child: Text("Hi"),
        //   decoration: BoxDecoration(color: Colors.amber[300]),
        //   ),
        UserAccountsDrawerHeader(
          accountName: Text("Charles Nwankwo"),
          accountEmail: Text("charlesnzubechukwu000@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("https://i.imgur.com/ibDT5Vu.jpeg"),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Xharles.dev"),
          subtitle: Text("Flutter on fire"),
          trailing: Icon(Icons.edit),
          onTap: () => {},
        ),
        ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("Hello@Xharles.dev"),
            trailing: Icon(Icons.edit)),
      ],
    ));
  }
}
