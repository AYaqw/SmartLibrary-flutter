import 'package:flutter/material.dart';

class Page_screen extends StatelessWidget {
  final String url;
  final String description;

  Page_screen(this.url, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              url,
              height: 300,
              width: 300,
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                "$description",
                style: const TextStyle(color: Colors.white, fontSize: 30,),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
