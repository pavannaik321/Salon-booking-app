import 'package:flutter/material.dart';

import 'home.dart';
import 'main.dart';

class SIGNUP extends StatefulWidget {
  const SIGNUP({Key? key}) : super(key: key);

  @override
  State<SIGNUP> createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: (Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/signup.jpg',height: 250,),
                ),

                Container(
                    child: (Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Name',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Phone no',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                            ),
                            obscureText: true,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Conform Password',
                            ),
                            obscureText: true,
                          ),
                        ),

                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, // Background color
                            ),
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              print("Sign up");
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HOME()),
                              );
                            },
                          ),
                        ),

                      ],
                    ))
                ),
                const SizedBox(height: 15,),

                const SizedBox(
                  width: 280,
                  child: Divider(
                    color: Colors.black45,
                    thickness: 1.2,
                  ),
                ),
                const SizedBox(height: 15,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //do what you want here
                          print("google");
                        },
                        child:  const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/google.png'),
                        ),
                      ),

                      const SizedBox(width: 20),

                      GestureDetector(
                        onTap: () {
                          //do what you want here
                          print("facebook");
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/fb.png'),
                        ),
                      ),

                      const SizedBox(width: 20),

                      GestureDetector(
                        onTap: () {
                          //do what you want here
                          print("apple");
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/apple.png'),
                        ),
                      ),
                    ],
                  ),
                ),

                TextButton(
                  onPressed:  () {
                    print("login");
                    Navigator.pop(context);
                  },
                  style:  TextButton.styleFrom (
                    padding:  EdgeInsets.zero,

                  ),
                  child:
                  RichText(
                    textAlign:  TextAlign.center,
                    text:
                    const TextSpan(
                      children:  [
                        TextSpan(
                            text:  'Already have an account?',
                            style: TextStyle(
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text:  'Login',
                            style: TextStyle(
                                color: Colors.blue
                            )
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            )),
          ),
        ),
      )
    );
  }
}
