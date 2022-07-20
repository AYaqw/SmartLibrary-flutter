import 'package:flutter/material.dart';
import 'HomeScreen.dart';
class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:Scaffold(body: Center(
          child:Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
        0.1,
        0.4,
        0.7,
        0.9
        ],
        colors: [
        Color(0xFF3594DD),
        Color(0xFF4563DB),
        Color(0xFF5036d5),
        Color(0xFF5B16D0),
        ])),
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset("../assets/img4.png", height: 300, width: 300,),
                TextFormField(
                  decoration:const
                  InputDecoration(
                    hintText: "Username",hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),)
                  ,),
                const SizedBox(height: 20.0,),
                TextFormField(decoration:const InputDecoration(hintText: "password",hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),),),
                const SizedBox(height: 40.0,),
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: TextButton(
                      onPressed: () {
                        print("Sign in");
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
                      },
                      child: const Text("Sign in",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    )),
            ],),
          ),
        ),
        ),
    ),
    );
  }}







