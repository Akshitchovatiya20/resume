import 'package:flutter/material.dart';
import 'package:resume/utils/constant/componets/size.dart';




class resume_i extends StatefulWidget {
  const resume_i({Key? key}) : super(key: key);

  @override
  State<resume_i> createState() => _resume_iState();
}

class _resume_iState extends State<resume_i> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         body: Column(
           children: [
             Center(
               child: Text("hello"),
             ),
             H(10),
           ],
      ),
    ),
    );
  }
}
