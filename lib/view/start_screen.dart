import 'package:flutter/material.dart';
import 'package:untitled/view/login_screen.dart';
import 'package:untitled/view/register_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgraound.png',),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'ReLocker',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 44,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width / 3),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 8,
                  child: ElevatedButton(
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade300,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 8,
                  child: ElevatedButton(
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9AD6BD),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => RegisterScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
