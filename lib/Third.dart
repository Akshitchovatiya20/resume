import 'package:flutter/material.dart';
import 'package:resume/Modalclass.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    Modeldata m2 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'fr',arguments: m2);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 250,
                  child: Image.asset("assets/image/re2.jpg"),
                  // child: Image.asset(m2.photo2),
                ),
              ),
              GestureDetector(
                onTap: (){
                  //PdfGen(m2);
                  Navigator.pushNamed(context, 'r2',arguments: m2);
                },
                child: Container(
                  alignment: Alignment.center,
                    height: 270,
                    width: 270,
                  color: Colors.grey.shade700,
                  child: Image.asset("assets/image/re1.png"),
                   // child: Image.asset()
                ),
              ),
               GestureDetector(
                 onTap: (){

                 },
                 child: Container(
                   alignment: Alignment.center,
                   height: 300,
                     width: 300,
                   color: Colors.grey.shade700,
                   child: Image.asset("assets/image/re4.jpg"),
                     //child: Image.asset(m2.photo3)
                    ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
