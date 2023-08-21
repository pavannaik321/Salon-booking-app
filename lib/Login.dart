import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/checkIfLogged/google_sign_in.dart';
import 'package:myapp/home.dart';
import 'package:myapp/signup.dart';
import 'package:provider/provider.dart';

class LOGIN extends StatefulWidget {
  final VoidCallback showRegisterPage;
   const LOGIN({Key? key,required this.showRegisterPage}) : super(key: key);

  @override
  State<LOGIN> createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim()
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: (Column(
            children: [
              Image.asset('assets/images/login.jpg',height: 250,),
              Container(
                  child: (Column(
                    children: [
                       Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Email',
                          ),
                          controller: _emailController,
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                          controller: _passwordController,
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
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: signIn,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pushNamed(context, "myRoute");
                          print("forgot password");
                        },
                        child: const Text("Forgot Password?"),
                      )
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
                        final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                        print("user= ${provider}");
                        provider.googleLogin();

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
                onPressed: widget.showRegisterPage
                ,
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
                          text:  'Don’t have an account? ',
                          style: TextStyle(
                              color: Colors.black
                          )
                      ),
                      TextSpan(
                          text:  'signup',
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
    );
  }
}
