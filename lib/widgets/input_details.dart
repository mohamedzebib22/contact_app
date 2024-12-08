
import 'package:contact/constants/const.dart';
import 'package:contact/models/input_user.dart';
import 'package:contact/widgets/custom_textfeild.dart';
import 'package:contact/widgets/details.dart';
import 'package:flutter/material.dart';

class InputDetails extends StatefulWidget {
  InputDetails({super.key ,required this.addUser});

  Function(InputUser) addUser;
  @override
  State<InputDetails> createState() => _InputDetailsState();
}

class _InputDetailsState extends State<InputDetails> {
  String userName = 'User Name';

  String emailAddress = 'example@email.com';

  String phoneNumber = '+200000000000';

  String? imagePath ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           Details(userName: userName, email: emailAddress, phone: phoneNumber,),
           SizedBox(height: 10,),
           CustomTextfeild(hint: 'Enter User Name' , onChanged: (text){
            userName =text;
           },),
           SizedBox(height: 10,),
           CustomTextfeild(hint: 'Enter User Email' , onChanged: (text){
            emailAddress =text;
           },),
           SizedBox(height: 10,),
           CustomTextfeild(hint: 'Enter User Phone' , onChanged: (text){
            phoneNumber = text;
           },),
          SizedBox(height: 35,),
           ElevatedButton(onPressed: (){
             InputUser addNewUser=InputUser(name: userName, accountEmail: emailAddress, phoneNumberaccount: phoneNumber, image: 'assets/images/model1.jpg');
             
             widget.addUser(addNewUser);
             print('THe Path is ${imagePath}');
             Navigator.pop(context);
           }, child: Center(child: Text('Enter User' , style: TextStyle(fontSize: 24, color: kPrimaryColor)))),
      
          ],
        ),
      ),
    );
  }

  
}