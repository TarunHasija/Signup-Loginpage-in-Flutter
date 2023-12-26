import 'package:flutter/material.dart';

class MySignup extends StatefulWidget {
  const MySignup({super.key});

  @override
  State<MySignup> createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  bool check1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/signin.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            ///------------HEADER NAME AND LOGO-------------///
            Container(
              padding: const EdgeInsets.only(left: 70, top: 270),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/logosignin.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'TARUN HASIJA',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        color: Colors.indigo),
                  )
                ],
              ),
            ),

            /// ----------------Login and password----------------///
            Container(
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "SignUp",
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.indigo.shade400,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.indigo.shade100, width: 2),
                      ),
                      prefixIcon: const Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.indigo, // Icon color
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins', color: Colors.indigo[400]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.indigo.shade100, width: 2),
                      ),
                      prefixIcon: const Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.lock,
                          color: Colors.indigo, // Icon color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// ----------------REMEMBER ME ----------------///
            Container(
              padding: const EdgeInsets.only(top: 35, left: 105,bottom: 10),
              child: Column(
                children: [
                  Center(
                    child: Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.indigo[100],
                            checkColor: Colors.indigo[800],
                            value: check1,
                            onChanged: (bool? value) {
                              setState(() {
                                check1 = value ?? false;
                              });
                            }),
                        const Expanded(
                            child: Text(
                              'Remember me',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.indigo,
                                  fontSize: 16),
                            )),

                      ],
                    ),
                  )
                ],
              ),
            ),

            ///----------SIGN-IN BUTTON---------///
            Container(
              padding: const EdgeInsets.only(top: 16, left: 110, right: 110),
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 15)),
                  elevation: MaterialStateProperty.all(15),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: const Text(
                    'or',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.indigo,
                        fontSize: 17),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16, left: 110, right: 110),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 13)), // Adjust padding as needed
                      elevation: MaterialStateProperty.all(15),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                    child: const Row(

                      mainAxisAlignment: MainAxisAlignment.center, // Aligns text and icon to opposite ends
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 6.0),
                          child: Text(
                            'Sign In',
                            style: TextStyle(fontSize: 17.0, color: Colors.white),

                          ),
                        ),
                        Icon(
                          Icons.double_arrow_outlined,
                          color: Colors.white, // Set the icon color as needed
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ), //main column
      ),
    );
  }
}
