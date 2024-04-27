import 'package:cat_task4/screen1.dart';
import 'package:cat_task4/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mainn());
}
class mainn extends StatefulWidget {
  const mainn({super.key});

  @override
  State<mainn> createState() => _mainnState();
}

class _mainnState extends State<mainn> {
  int selectedindex=0;
  List<Widget> widgetpages = [
    screen1(),
    screen2()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 18,
          unselectedFontSize: 18,
          currentIndex: selectedindex,
          backgroundColor: Color(0xffCD756B),
          selectedItemColor: Colors.white,
          onTap: (index){
            setState(() {
              selectedindex=index;
            });
          },
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.auto_awesome_mosaic_sharp,size: 35,),label:'ListView' ),

            BottomNavigationBarItem(icon: Icon(Icons.apps_outlined,size: 35,),label:'GrideView' )
          ],
        ),

   body: widgetpages.elementAt(selectedindex),

      )
    );
  }
}
