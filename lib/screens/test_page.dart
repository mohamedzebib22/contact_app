
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class TestPage extends StatefulWidget {
//   const TestPage({super.key});
//   @override
//   State<TestPage> createState() => _TestPageState();
// }
// class _TestPageState extends State<TestPage> {
//   XFile? image;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//           children: [
//             SizedBox(height: 50,),
//             InkWell(
//               onTap: pikedImage,
//               child: Container(
//                 alignment: Alignment.center,
//                 width: double.infinity,
//                 height: 100,
//                 color: Colors.red,
//                 child: Text('Upload Image' , style: TextStyle(color: Colors.white,fontSize: 24),),
//               ),
//             ),

//             Expanded(child: image == null ? Text('Not Founde') :Image.file(File(image!.path ),fit: BoxFit.fill)),
//           ],
//         )
//     );
//   }
//   void pikedImage() async{
//     var imagePiker =  await ImagePicker().pickImage(source: ImageSource.gallery);
//     if(imagePiker != null){
//       image =imagePiker;
//     }else{}
    
//     setState(() {
//     });
//   }
// }
