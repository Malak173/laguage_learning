import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
Category({super.key, this.text, this.color, this.onTap}); 
 String? text ;
  Color? color ;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Padding( 
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment:Alignment.centerLeft,
                height: 50,
                color: color,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}