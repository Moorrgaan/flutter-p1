import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _mobileState();
}

class _mobileState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18))),
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "IEEE",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  letterSpacing: 2),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 36,
             ))
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 36,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                size: 36,
                color: Colors.black,
              ),
              label: "Fav"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 36,
                color: Colors.black,
              ),
              label: "Profile"),
        ],
      ),

    );
  }
}
void main() {

  runApp( MyApp());

}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: screen(),
    );
  }
}