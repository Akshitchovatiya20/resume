
import 'package:flutter/material.dart';
import 'package:resume/Modalclass.dart';
import 'package:resume/PdfGen.dart';


class four extends StatefulWidget {
  const four({Key? key}) : super(key: key);

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  @override
  Widget build(BuildContext context) {
    Modeldata m1 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Profile", style: TextStyle(fontSize: 30),),
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {
              setState(() {
                PdfGen(m1);
              });
            }, icon: Icon(Icons.download))
          ],
        ),
        body: Container(
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: double.infinity,
                  color: Colors.black87,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Center(child: Text("${m1.name}", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),)),
                      SizedBox(height: 15,),
                      Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundImage: FileImage(m1.f1),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("${m1.det}", style: TextStyle(color: Colors.white,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(alignment: Alignment.center, child: Text(
                        "Contact", style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),)),
                      SizedBox(height: 15,),
                      Text("${m1.selectcity}", style: TextStyle(color: Colors.white,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Text("${m1.gmail}", style: TextStyle(color: Colors.white,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Text("${m1.mno}", style: TextStyle(color: Colors.white,
                          fontSize: 22),),
                    ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  height: double.infinity,
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Education", style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 15,),
                          Text("${m1.edu}", style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                          Text("${m1.select}",style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                          SizedBox(height: 20,),
                          Text(
                              "Personal Skill", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 15,),
                          Text("${m1.skil}", style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                          SizedBox(height: 15,),
                          Text(
                              "Professional Skill", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 15,),
                          Text("${m1.pskil}", style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                          SizedBox(height: 15,),
                          Text(
                              "Job Experience", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 15,),
                          Text("${m1.exp}", style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                          SizedBox(height: 15,),
                          Text(
                              "Langauge", style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 15,),
                          Text("${m1.lang}", style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                        ],),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void getData()
  {

  }
}
