import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'What Are You Looking For?',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()),
              ),
            ),
            ListTile(
              title: const Text('home'),
              leading: const Icon(Icons.home_filled),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Setting'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.account_circle_sharp),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Register'),
              leading: const Icon(Icons.app_registration_outlined),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          )
        ],
        centerTitle: false,
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color.fromARGB(255, 223, 250, 255)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Shoes'),
                  VerticalDivider(
                    color: Colors.black,
                    width: 100,
                  ),
                  Text('Beauty'),
                  VerticalDivider(
                    color: Colors.black,
                    width: 100,
                  ),
                  Text('Fashion')
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/AirMax.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8,
                  height: 8,
                ),
                const SizedBox(
                    height: 150,
                    width: 160,
                    child: Text('AirMax Nike shoes '
                        'AirMax shoes are the best line of shoes created by Nikie.'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
