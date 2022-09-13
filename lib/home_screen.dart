import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_five/content_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHRINE'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('K'),
              ),
              accountName: Text('Kanika Garg'),
              accountEmail: Text('Kanikagarg967@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Your orders'),
            ),
          ],
        ),
      ),
      body: ContentHome(),
    );
  }
}
