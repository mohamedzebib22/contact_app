import 'package:contact/constants/const.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/logo.png' , width: 117,height: 39,),
            ],
          ),
          Spacer(flex: 1,),
          Container(
            width: 386,
            height: 386,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
          Text('There is No Contacts Added Here' ,style: TextStyle(fontSize: 20 , color: kTextColor),),
          Spacer(flex: 2,)
        ],
      ),
    );
  }
}