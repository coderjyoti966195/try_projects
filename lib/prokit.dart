import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Pet Adoption',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.toggle_on, color: Colors.blue),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQotazdqQX-g7poGKjaCzsW5RWO8DEOsAbgMrnKBXrQzYt67XXJ',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            OptionTile(
              icon: Icons.enhance_photo_translate_outlined,
              title: 'Splash Screen',
              iconColor: Colors.blue,
            ),
            OptionTile(
              icon: Icons.local_activity,
              title: 'Walkthrough Screen',
              iconColor: Colors.orange,
            ),
            OptionTile(
              icon: Icons.person_add,
              title: 'Sign Up Screen',
              iconColor: Colors.green,
            ),
            OptionTile(
              icon: Icons.login,
              title: 'Sign In Screen',
              iconColor: Colors.blue,
            ),
            OptionTile(
              icon: Icons.search,
              title: 'Search Screen',
              iconColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;

  OptionTile({required this.icon, required this.title, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: iconColor,
              child: Icon(icon, color: Colors.white),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
