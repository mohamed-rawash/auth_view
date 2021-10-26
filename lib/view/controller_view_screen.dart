import 'package:flutter/material.dart';

class ControllerViewScreen extends StatefulWidget {
  const ControllerViewScreen({Key? key}) : super(key: key);

  @override
  State<ControllerViewScreen> createState() => _ControllerViewScreenState();
}

class _ControllerViewScreenState extends State<ControllerViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd3f3e6),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 2.5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Save your\nbelongings\nby\nreserving a\nlocker',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.width / 8,
                    child: ElevatedButton(
                      child: const Text(
                        'Reserve a locker',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.more_horiz_sharp),
                onPressed: () {
                  setState(() {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 10),
                              Container(
                                height: 2,
                                width: 40,
                                color: Colors.grey[300],
                              ),
                              const SizedBox(height: 70),
                              const Divider(
                                color: Colors.grey,
                                height: 2,
                                thickness: 2,
                              ),
                              GestureDetector(
                                child: const ListTile(
                                  title: Text('My account'),
                                  leading: Icon(Icons.person),
                                ),
                                onTap: (){},
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 2,
                                thickness: 2,
                              ),
                              GestureDetector(
                                child: const ListTile(
                                  title: Text('Technical support'),
                                  leading: Icon(Icons.person),
                                ),
                                onTap: (){},
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 2,
                                thickness: 2,
                              ),
                              const SizedBox(height: 40),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.width / 8,
                                child: ElevatedButton(
                                    child: const Text(
                                      'LOG OUT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        )),
                                    onPressed: () {}),
                              ),
                              const SizedBox(height: 40),
                            ],
                          ),
                        );
                      },
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                    );
                  });
                },
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key_outlined),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
          ],
          currentIndex: 0,
          onTap: (int index) {},
        ),
      ),
    );
  }
}
