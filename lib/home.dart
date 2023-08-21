import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myapp/FindSpecificSalon.dart';
import 'package:myapp/main.dart';



class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                              children: [
                                Text(user.email!,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.location_on,
                                      color: Colors.orange,),
                                    SizedBox(width: 10,),
                                    Text("Karwar Karnataka",style: TextStyle(
                                        color: Colors.black54
                                    ),)
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                //do what you want here
                                print("apple");
                              },
                              child:  CircleAvatar(
                                backgroundImage: AssetImage('assets/images/profile.png'),

                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black.withOpacity(0.5),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            margin: EdgeInsets.all(12),
                            child: const Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(

                                      border: InputBorder.none,
                                      hintText: "Find a salon , specialists...",
                                      hintStyle: TextStyle(color: Colors.black54),

                                      contentPadding:
                                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                      isDense: true,
                                    ),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),

                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      MaterialButton(onPressed: (){
                        FirebaseAuth.instance.signOut();
                      },
                      color: Colors.blue,
                      child: Text("Log out"),),


                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text("Trending hair styles",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,

                                ),),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image.asset('assets/images/adds.webp',
                            ),

                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: const Text("Nearest To You",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,

                            ),),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 170,
                                height: 230,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 8,
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(11),
                                        child: Image.asset('assets/images/adds.webp',
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        child: const Text("Capiello Salon",
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    const Row(

                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                          child: Icon(Icons.location_on,
                                            color: Colors.orange,
                                            size: 15,),
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Karwar Karnataka",style: TextStyle(
                                            color: Colors.black54
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Row(

                                            children: [
                                              Text("4.5",style: TextStyle(
                                                  color: Colors.black
                                              ),),
                                              Icon(Icons.star,
                                                color: Colors.orange,
                                                size: 15,)
                                            ],
                                          ),

                                          Text(".4Km")
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 25,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Active 2min ago",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.blue
                                            ),),
                                          Text("5 Peoples",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.green
                                            ),)
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 170,
                                height: 230,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 8,
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(11),
                                        child: Image.asset('assets/images/adds.webp',
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        child: const Text("Capiello Salon",
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    const Row(

                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                          child: Icon(Icons.location_on,
                                            color: Colors.orange,
                                            size: 15,),
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Karwar Karnataka",style: TextStyle(
                                            color: Colors.black54
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Row(

                                            children: [
                                              Text("4.5",style: TextStyle(
                                                  color: Colors.black
                                              ),),
                                              Icon(Icons.star,
                                                color: Colors.orange,
                                                size: 15,)
                                            ],
                                          ),

                                          Text(".4Km")
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 25,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Active 2min ago",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.blue
                                            ),),
                                          Text("5 Peoples",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.green
                                            ),)
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 170,
                                height: 230,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 8,
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(11),
                                        child: Image.asset('assets/images/adds.webp',
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        child: const Text("Capiello Salon",
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    const Row(

                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                          child: Icon(Icons.location_on,
                                            color: Colors.orange,
                                            size: 15,),
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Karwar Karnataka",style: TextStyle(
                                            color: Colors.black54
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Row(

                                            children: [
                                              Text("4.5",style: TextStyle(
                                                  color: Colors.black
                                              ),),
                                              Icon(Icons.star,
                                                color: Colors.orange,
                                                size: 15,)
                                            ],
                                          ),

                                          Text(".4Km")
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 25,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Active 2min ago",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.blue
                                            ),),
                                          Text("5 Peoples",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.green
                                            ),)
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),





                          ],
                        ),
                      ),
                      SizedBox(height: 50,)

                    ],
                  ),
                ),
              ),
            

      bottomNavigationBar: GNav(
        tabBackgroundColor: Colors.black38,
        padding: EdgeInsets.all(16),
        gap: 8,
        tabs: [
        GButton(icon: Icons.home,

        ),
        GButton(icon: Icons.search,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FINDSPECIFICSALON()),
            );
          },
        ),
        GButton(icon: Icons.person,
       ),

      ],),
    );
  }
}
