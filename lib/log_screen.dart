import 'package:flutter/material.dart';

class log_screen extends StatefulWidget {
  const log_screen({Key? key}) : super(key: key);

  @override
  State<log_screen> createState() => _log_screenState();
}

class _log_screenState extends State<log_screen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

           Padding(
             padding: const EdgeInsets.only(top: 160),
             child: Image.asset(
              "../assets/img4.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,


        ),
           ),
        Center(
          child: Column(
            children: [
              Text("Books for",style: TextStyle(color: Colors.white, fontSize: 40,)),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)
                  ),

                    child: TextButton(

                      onPressed: () {
                        print("Sign in");
                      },
                      child: Text("Sign in",style: TextStyle( fontSize: 20,)),
                    )),
              ),
              const SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                    ),

                    child: TextButton(

                      onPressed: () {
                        print("Sign up");
                      },
                      child: Text("Sign up",style: TextStyle( fontSize: 20,)),
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
