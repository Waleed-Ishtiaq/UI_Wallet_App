import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  const MyButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade700,
                  blurRadius: 10,
                ),
              ]),
          child: Center(
            child: Image.asset(imagePath),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
