// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project/loginpage.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("images/bk_cleanup.jpg",fit:BoxFit.fill,),

             Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 60),
                    child: Image.asset("images/4074365s.jpg")),
                const SizedBox(
                  height: 10,
                ),
               const Text("BankApp",style: TextStyle( color: Colors.white, fontSize: 30),),
                const SizedBox(
                  height: 400,
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),


                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.only(top: 20),

                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Loginpage();
                        }));
                      },

                      child: const Text('Login'),
                      style:  TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                        padding: const EdgeInsets.only(left: 70 ,right: 70),

                      ),
                    ),
                    decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            blurRadius: 15.0,
                          )
                        ]
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),


                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.only(top: 25,bottom: 35),

                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Loginpage();
                        }));
                      },

                      child: const Text('Register'),
                      style:  TextButton.styleFrom(
                        foregroundColor: Colors.black87,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.only(left: 70 ,right: 70),

                      ),
                    ),
                    decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            blurRadius: 15.0,
                          )
                        ]
                    ),

                  ),
                ),
              ],
            ),

        ],
      ),
    );
  }
}
