import 'package:flutter/material.dart';
import 'package:resume/main.dart';
import 'package:resume/screen/home/view/Modalclass.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  double i = 0;

  @override
  Widget build(BuildContext context) {

    // Timer(Duration(seconds: 3),(){
    //
    // });

    Modeldata m2 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Switch(value: them, onChanged: (value){
              setState((){
                them = value;
              });
              data.add(them);
            })
          ],
        ),
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
              // CircularProgressIndicator(
              //   value: i/500,
              //   color: Colors.blue,
              //   backgroundColor: Colors.blue,
              // ),
              // SizedBox(height: 15,),
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
            ],
          ),
        ),
      ),
    );
  }
}
