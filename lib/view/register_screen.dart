import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background2.png',
                ),
                fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create\nAccount',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 44,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Email@student_Ksu.edu.sa',
                      prefixIcon: Icon(Icons.email_outlined)
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Phone Number',
                        prefixIcon: Icon(Icons.phone)
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key_outlined)
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Confirm Password',
                        prefixIcon: Icon(Icons.vpn_key_outlined)
                    ),
                  ),
                  const SizedBox(height: 25),
                  Column(
                    children: [
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
                            primary: Colors.grey.shade300,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: (){},
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(child: Container(height: 2,color: Colors.black54,)),
                          const Text('  OR  '),
                          Expanded(child: Container(height: 2,color: Colors.black54,)),
                        ],
                      ),
                      const SizedBox(height: 5),
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
                            primary: Color(0xFF9AD6BD),
                            shape: const StadiumBorder(),
                          ),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
