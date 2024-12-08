import 'package:contact/constants/const.dart';
import 'package:contact/models/input_user.dart';
import 'package:contact/widgets/email_and_phone.dart';
import 'package:contact/widgets/user_info.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  CardDetails({super.key, required this.inputUser , required this.deleteUser});

  Function(InputUser) deleteUser;
  InputUser inputUser;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfo(image: inputUser.image, name: inputUser.name),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 12, right: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                EmailAndPhone(email: inputUser.accountEmail, phone: inputUser.phoneNumberaccount),
                Spacer(flex: 3,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onPressed: () {
                      deleteUser(inputUser);
                    },
                    child: Center(
                        child: Text(
                      'Delete',
                      style: TextStyle(color: kTextColor),
                    )))
              ],
            ),
          ),
        )
      ],
    );
  }
}
