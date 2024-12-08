import 'package:contact/constants/const.dart';
import 'package:contact/models/input_user.dart';
import 'package:contact/widgets/body.dart';
import 'package:contact/widgets/card_details.dart';
import 'package:contact/widgets/input_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<InputUser> listOfUsers=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(   
        backgroundColor: kTextColor,
        onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          backgroundColor: kPrimaryColor,
          context: context, 
        builder: (context){
          return InputDetails(addUser: (user ) { 
            listOfUsers.add(user);
            setState(() {
              
            });
           },);
        }
        );
      } , child: Icon(Icons.add),),
      backgroundColor: kPrimaryColor,
      body: listOfUsers.isEmpty ? Body() :
       Padding(
         padding: const EdgeInsets.all(16),
         child: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 /4,
           mainAxisSpacing: 8,
           crossAxisSpacing: 8,
           crossAxisCount:2),
         
         itemCount: listOfUsers.length,
         itemBuilder: (context ,index){
             return CardDetails(inputUser: listOfUsers[index], deleteUser: (user ) { 
                listOfUsers.remove(user);
                setState(() {
                  
                });
              },);   
           }, 
         ),
       )
    );
  }
}