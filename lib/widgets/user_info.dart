import 'package:contact/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:contact/models/input_user.dart';

class UserInfo extends StatelessWidget {
   UserInfo({super.key ,required this.image , required this.name});

  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Image.asset(
                image,
                width: double.infinity,
                height: 177,
                fit: BoxFit.cover,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  //alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: kTextColor),
                  margin: EdgeInsets.only(left: 12, bottom: 10),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 16),
                  )),
            ],
          ),
        );
  }
}