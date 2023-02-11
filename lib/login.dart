import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(

        fit: StackFit.expand,
        children: [
          Container(
            child: Image.asset("assets/images/HD-wallpaper-purple-curves-abstract-gradient-pastel.jpg",fit: BoxFit.fill),
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(

                    child: Image.asset("assets/images/logo.png",height: 80,width: 40,fit: BoxFit.fitWidth,),margin: EdgeInsets.only(top: 20),width: 160,height: 190,
                  ),

                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                  child: Center(child: Text("BankApp",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),))),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Expanded(
                    child:InkWell(
                    onTap: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context){return
    Login();},))},



                  child: Container(alignment: Alignment.center,
                    margin: EdgeInsetsDirectional.only(top: 350),
                      child: TextButton(onPressed: (){}, child: Text("Login in",style: TextStyle(fontSize:20,color: Colors.white,backgroundColor:Colors.deepPurpleAccent)),)),),

                  ),
  ],),
            const SizedBox(
                height: 15,
              ),
              Container(alignment: Alignment.center,

                  child: TextButton(onPressed: (){}, child: Text("register",style: TextStyle(fontSize:20,color: Colors.black,backgroundColor:Colors.white )),)),
              Center(
                child: Container(


                  child: Text("Need Help?"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
