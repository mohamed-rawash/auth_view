import 'package:flutter/material.dart';

class ControllerViewScreen extends StatelessWidget {
  const ControllerViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 20,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
     borderRadius:  const BorderRadius.only(
    topRight: Radius.circular(25),
    topLeft: Radius.circular(25),
     ),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_sharp),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
          ],
          currentIndex: 0,
          onTap: (int index){},
        ),
      ),
    );
  }
}
