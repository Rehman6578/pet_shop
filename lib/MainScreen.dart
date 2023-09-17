import 'package:flutter/material.dart';
import 'package:pet_shop/IconContainer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // set backroung color in rgb
        // backgroundColor: Color.fromRGBO(240, 240, 248, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 130, left: 15, right: 15),
                child: Text('What are you looking for?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Encode Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 45,

                    )),
              ),
              // use gridview to display 3 row and 3 column of contianer inside icons and text
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,

                  children: [
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/vet.png', onPressed: (){}),
                    CustomGridItem(title: 'Grooming', assetImagePath: 'assets/images/grooming.png', onPressed: (){}),
                    CustomGridItem(title: 'Pet boarding', assetImagePath: 'assets/images/icon.png', onPressed: (){}),
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/vet.png', onPressed: (){}),
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/vet.png', onPressed: (){}),
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/vet.png', onPressed: (){}),
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/pettaxi.png', onPressed: (){}),
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/petdate.png', onPressed: (){}),
                    CustomGridItem(title: 'Veterinary', assetImagePath: 'assets/images/vet.png', onPressed: (){}),
                  ],
                ),
              ),
            ],
          ),
        ),
        // add bottom navigation bar here and add home ,hospital ,sms chat, profile icons
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Appointments',
              icon: Icon(Icons.watch_later_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(Icons.explore_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_outline_outlined),
            ),
          ],
        ),
      ),

    );
  }
}
