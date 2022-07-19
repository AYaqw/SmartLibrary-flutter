import 'package:flutter/material.dart';

class Page_screen extends StatelessWidget {
  final String url;
  final String description;

  Page_screen(this.url, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "$description",
                style: TextStyle(color: Colors.white, fontSize: 30,),

              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: Image.asset(
              url,
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
