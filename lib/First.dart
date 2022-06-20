import 'dart:io';

import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  bool ischeck = true;
  bool check = true;
  bool icheck = true;
  bool ischecked = true;
  String select = 'Male';
  RangeValues rangeValues = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){
                Dialog_pop();
              }, icon: Icon(Icons.arrow_back)),
            ],
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Row(
                  children: [
                    Container(
                       padding: EdgeInsets.only(top: 30,left: 30),
                        child: Text("WiFi")),
                    Container(
                      padding: EdgeInsets.only(top: 30,left: 10),
                      child: Switch(value: ischeck, onChanged: (value){
                        setState((){
                          ischeck = value;
                        });
                      }),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
              ),
              RangeSlider(max: 100,values: rangeValues, onChanged: (rv){
                setState((){
                  rangeValues = rv;
                });
              },activeColor: Colors.red),
              ListTile(
                leading: Checkbox(
                  value: ischecked,
                  onChanged: (value){
                    setState((){
                      ischecked = value as bool;
                    });
                  },
                ),
                title: Text("Reading"),
              ),
              ListTile(
                leading: Checkbox(
                  value: check,
                  onChanged: (value){
                    setState((){
                      check = value as bool;
                    });
                  },
                ),
                title: Text("Dance"),
              ),
              ListTile(
                leading: Checkbox(
                  value: icheck,
                  onChanged: (value){
                    setState((){
                      icheck = value as bool;
                    });
                  },
                ),
                title: Text("Music"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("(",style: TextStyle(fontSize: 27),),
                  Icon(Icons.male,size: 30,),
                  Text(")",style: TextStyle(fontSize: 27),),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 70,
                    width: 200,
                    child: RadioListTile(value: 'Male', groupValue: select, onChanged: (value){
                      setState((){
                        select = value as String;
                      });
                    },title: Text("Male"),),
                  ),
                  Container(
                    height: 70,
                    width: 200,
                    child: RadioListTile(value: 'Female', groupValue: select, onChanged: (value){
                      setState((){
                        select = value as String;
                      });
                    },title: Text("Female"),),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
    );
  }
  void Dialog_pop()
  {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Hello"),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Cancel")),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              exit(100);
            }, child: Text("Exit"))
          ],
        ),
      );
    });
  }
}
