import 'package:flutter/material.dart';
import 'package:project/api.dart';
import 'package:project/home.dart';

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("images/30_cleanup.jpg",fit:BoxFit.fill,),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: const Center(child: Text("Budget",style: TextStyle( color: Colors.white, fontSize: 35,fontWeight: FontWeight.bold),)),
              ),
              const Text(" ₹3000",style: TextStyle(color: Colors.white, fontSize: 45),),
              const Text("Change Budget",style: TextStyle( color: Colors.white, fontSize: 20),),
            ],
          ),

          Container(
            margin: const EdgeInsets.only(top: 230,bottom: 550),
            child: Row(

             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 24.0,

                  child: Container(

                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            blurRadius: 15.0,
                          )
                        ]
                    ),

                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Monthly'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black87,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.only(left: 30,right: 30),
                      ),
                    ),
                  ),

                ),




                SizedBox(
                  height: 24.0,

                  child: Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            blurRadius: 15.0,
                          )
                        ]
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Weekly'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black87,

                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.only(left: 30,right: 30),
                      ),
                    ),
                  ),

                ),


                SizedBox(
                  height: 24.0,

                  child: Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            blurRadius: 15.0,
                          )
                        ]
                    ),
                    child: TextButton(

                      onPressed: () {},
                      child: const Text('Daily'),
                      style:  TextButton.styleFrom(
                        foregroundColor: Colors.black87,

                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.only(left: 30,right: 30),
                      ),
                    ),
                  ),
                ),

              ],
            ),          ),
         Container(
               padding: const EdgeInsets.only(left: 25,right: 25),
             child: Image.asset("assets/images/graph.jpg"),


         ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(top: 350),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 15.0,
                      )
                    ]
                  ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Api();
                        }));
                      },
                      child: Image.asset("images/transaction.png", height: 100,
                  fit: BoxFit.cover,),
                    ),
                ),
                Container(decoration:  BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60.0)),
    boxShadow: [
    BoxShadow(
    color: Colors.black87,
    blurRadius: 15.0,
    )
    ]
    ),child: Image.asset("images/statistick.png", height: 100,
                  fit: BoxFit.cover,),



                ),




                Container(decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 15.0,
                        )
                      ]
                  ),child: Image.asset("images/settings.png", height: 100,
                  fit: BoxFit.cover,),

                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30,top: 750),

                child: const Text("Need help ?",style: TextStyle (fontSize: 20)),
              ),
            ],
          ),
        ],








      ),
    );
  }
}
