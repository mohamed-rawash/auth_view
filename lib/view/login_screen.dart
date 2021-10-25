import 'package:flutter/material.dart';
import 'package:untitled/view/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome\nBack',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 44,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 80),
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
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key_outlined)
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
