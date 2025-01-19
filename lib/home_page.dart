import 'package:flutter/material.dart';
import 'package:language_learning/components/category.dart';
import 'package:language_learning/screens/colors.dart';
import 'package:language_learning/screens/family_members.dart';
import 'package:language_learning/screens/numbers.dart';
import 'package:language_learning/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text('Toku',style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),),
          backgroundColor: const Color.fromARGB(255, 93, 60, 48),
        ) ,
        body:Column(
          children: [
          Category(
            text: 'Numbers',
            color: const Color.fromARGB(255, 160, 97, 3),
            onTap: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context){
                return const NumbersPage();
            }));
          }),
          Category(
            text: 'Family Members',
            color: const Color.fromARGB(255, 212, 130, 8),
            onTap: (){
              Navigator.push(context, 
               MaterialPageRoute(builder: (context){
                return const FamilyMembersPage();
            }));
            }),
          Category(
            text: 'Colors',
            color: const Color.fromARGB(255, 218, 153, 55),
            onTap: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context){
               return const ColorsPage();
            }));
            }),
          Category(
            text: 'Phrases',
            color:  const Color.fromARGB(255, 224, 181, 117),
            onTap: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context){
                return const Phrases();
            }));
            }),
          ],
        ) ,
      );
  }
}

