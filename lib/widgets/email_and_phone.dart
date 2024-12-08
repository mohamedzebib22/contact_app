import 'package:contact/models/input_user.dart';
import 'package:flutter/material.dart';

class EmailAndPhone extends StatelessWidget {
  EmailAndPhone({super.key, required this.email, required this.phone});

  String email;
  String phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.attach_email_sharp),
            SizedBox(width: 5,),

            Text(
              email,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.phone_in_talk_sharp),
            SizedBox(width: 5,),

            Text(
              phone,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}
