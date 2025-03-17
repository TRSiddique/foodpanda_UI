import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Food Panda", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
  'assets/logo.png',
  width: 300, // তোমার ইমেজ অনুযায়ী অ্যাডজাস্ট করো
  height: 150, // ইমেজের আসল অনুপাত অনুসারে ঠিক করো
  fit: BoxFit.contain, // ইমেজ যাতে পুরোপুরি ফিট হয়
),
            SizedBox(height: 10),
            Text(
              "Are you hungry? Order Now . . .",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              "SET MENU",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem(Icons.local_pizza, "Pizza"),
                  menuItem(Icons.fastfood, "Burger"),
                  menuItem(Icons.local_drink, "Juice"),
                  menuItem(Icons.rice_bowl, "Fried Rice"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.pink.shade200, blurRadius: 5, spreadRadius: 1)
              ],
            ),
            padding: EdgeInsets.all(15),
            child: Icon(icon, color: Colors.white, size: 40),
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
