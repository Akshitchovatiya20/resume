import 'package:flutter/material.dart';
import 'package:resume/Modalclass.dart';
import 'package:resume/Pdf2.dart';

class resume2 extends StatefulWidget {
  const resume2({Key? key}) : super(key: key);

  @override
  State<resume2> createState() => _resume2State();
}

class _resume2State extends State<resume2> {
  @override
  Widget build(BuildContext context) {
    Modeldata r2 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              setState((){
                Navigator.pop(context);
              });
            }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
            backgroundColor: Colors.white,
            title: Text("Resume",style: TextStyle(fontSize: 30,color: Colors.amber,fontWeight: FontWeight.bold),),
            actions: [
              IconButton(onPressed: (){
              Pdf2(r2);
              }, icon: Icon(Icons.download,color: Colors.black,),),
            ],
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 160,
                      width: 150,
                      child: Image.file(r2.f1,fit: BoxFit.fill,),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                            "Name :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                      SizedBox(width: 20,),
                      Text("${r2.name}", style: TextStyle(color: Colors.black, fontSize: 22),),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                            "Contact :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                      SizedBox(width: 20,),
                      Text("${r2.mno}", style: TextStyle(color: Colors.black, fontSize: 22),),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                            "Location :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                      SizedBox(width: 20,),
                      Text("${r2.selectcity}", style: TextStyle(color: Colors.black, fontSize: 22),),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                         Text(
                            "Email :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.center,child: Text("${r2.gmail}", style: TextStyle(color: Colors.black, fontSize: 22),)),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                       alignment: Alignment.center,
                        child: Text(
                            "Details :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("${r2.det}", style: TextStyle(color: Colors.black, fontSize: 22),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      Text("(",style: TextStyle(fontSize: 27),),
                      Icon(Icons.male,size: 30,),
                      Text(")",style: TextStyle(fontSize: 27),),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 15,),
                  Text("${r2.select}",style: TextStyle(
                      color: Colors.black, fontSize: 18)),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            "Education :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.center,child: Text("${r2.edu}", style: TextStyle(color: Colors.black, fontSize: 22),)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            "Personal Skills :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.center,child: Text("${r2.pskil}", style: TextStyle(color: Colors.black, fontSize: 22),)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            "Langauge :", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.center,child: Text("${r2.lang}", style: TextStyle(color: Colors.black, fontSize: 22),)),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(10),
// child: Column(
// children: [
// Align(
// alignment: Alignment.topRight,
// child: Container(
// height: 140,
// width: 130,
// child:
// ),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Row(
// children: [
// Text("Name : ",style: TextStyle(color: Colors.blue, fontSize: 22,fontWeight: FontWeight.bold),),
//
// ],
// )
// ],
// ),
// ],
// ),
// ),
