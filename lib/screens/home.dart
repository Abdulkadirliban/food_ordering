import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Ordering Food'),
        centerTitle: true,
      ),
      body: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.vertical,
        children: [
          // ListTile(
          //   onTap: () {
          //     print('listile');
          //   },
          //   leading: Icon(Icons.person),
          //   title: Text('Abdulkadir Liban '),
          //   subtitle: Text('Mobile developer'),
          //   trailing: Icon(Icons.call),
          // ),

          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/pop_2.png'),
            ),
          ),
          SelectableText(
            'Abdulkadir Liban',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Text('+'),
      ),
    );
  }
}
