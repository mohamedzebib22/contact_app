import 'dart:io';

import 'package:contact/constants/const.dart';
import 'package:contact/widgets/line.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Details extends StatefulWidget {
   Details({super.key ,required this.userName , required this.email , required this.phone });
  String userName;
  String email;
  String phone;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: pikedImage,
            child: Container(
              width: 143,
              height: 146,
              decoration: BoxDecoration(
                 
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3,color: Colors.white),
              ),
              child: image==null ? Text('Not found Iamge') : Image.file(File(image!.path), fit: BoxFit.fill,)
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.userName,
                style: TextStyle(color: kTextColor, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Line(),
              Text(
                widget.email,
                style: TextStyle(color: kTextColor, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Line(),
              Text(
                widget.phone,
                style: TextStyle(color: kTextColor, fontSize: 20),
              ),
              Line(),
            ],
          ),
        ),
      ],
    );
  }

  void pikedImage() async{
    var imagePiker =  await ImagePicker().pickImage(source: ImageSource.gallery);
    if(imagePiker != null){
      image =imagePiker;

      
      
    }else{}
    setState(() {
    });
  }
}
