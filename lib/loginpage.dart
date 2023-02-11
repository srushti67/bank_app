import 'package:flutter/material.dart';
import 'package:project/three.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  var namecontroller = TextEditingController();
  var passwordcontrolller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const Three();
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset("images/2_cleanup.jpg",fit: BoxFit.fill),
        Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 75),
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: const Center(child: Text("Login",style: TextStyle(color: Colors.white, fontSize:35,fontWeight: FontWeight.bold),))),
              Container(
                  height: 60,width: 60,
                  margin: const EdgeInsets.only(top: 40),

                  child: Image.asset("images/user-security-11932__1_-removebg-preview.png")),

              Container(
                margin: const EdgeInsets.only(top: 50),

                child:  Padding(
    padding:  const EdgeInsets.only(left: 90 ,right: 90),

                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter name ";
                      }
                      return null;
                    },
                    controller: namecontroller,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                    ),

                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 90 ,right: 90),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter password ";
                      }
                      return null;
                    },
                    controller: passwordcontrolller,
                    obscureText: true,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 55),
                child: const Center(child: Text("Forgot Password ?",style: TextStyle( color: Colors.white,  fontSize: 20),)),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),


                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.only(top: 250,bottom: 20),
                    decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            blurRadius: 15.0,
                          )
                        ]
                    ),

                    child: TextButton(
                        onPressed: (){
                        validate();
                        },
                      style:  TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                        padding: const EdgeInsets.only(left: 70 ,right: 70),

                      ),

                      child: const Text('Login'),
                    ),

                 ),
                ),


              Container(
                child: const Center(child: Text("Need help ?",style: TextStyle ( fontSize: 20),)),
              ),



            ],
          ),
        )
      ],
    ),

    );
  }
}

