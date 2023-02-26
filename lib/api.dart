import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Api extends StatelessWidget {
  const Api({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<http.Response>(
          future: getWebFromServer(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/30_cleanup.jpg"),
                    fit: BoxFit.cover,
                  ) ,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 60,
                      ),
                        child: const  Text("Transactions",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                    const SizedBox(
                      height: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.person),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[0]
                                  ['id'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[0]
                                  ['name'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[0]
                                  ['money'])),
                                ],
                              ))),
                    ),
                   const  SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.person),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[1]
                                  ['id'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[1]
                                  ['name'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[1]
                                  ['money'])),
                                ],
                              ))),
                    ),
                    const  SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.person),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[2]
                                  ['id'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[2]
                                  ['name'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[2]
                                  ['money'])),
                                ],
                              ))),
                    ),
                    const  SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.person),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[3]
                                  ['id'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[3]
                                  ['name'])),
                                  Text((jsonDecode(
                                      snapshot.data!.body.toString())[3]
                                  ['money'])),
                                ],
                              ))),
                    ),
                  ],
                ),
              );
            }
            else{
              return  Container(
                padding:
                EdgeInsets
                    .only(
                    top: MediaQuery.of(context).size.width),
                child: Column(
                  children: const [
                    Center(
                        child:
                        CircularProgressIndicator()),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Loading...",
                      style: TextStyle(
                          color: Colors
                              .black,
                          fontSize:
                          15),
                    )
                  ],
                ),
              );
            }
          },
        )

    );
  }
  Future<http.Response> getWebFromServer() async {
    var response = await http.get(
        Uri.parse("https://63f85a6e1dc21d5465bd6ad7.mockapi.io/bank_app"));
    return response;
  }
}