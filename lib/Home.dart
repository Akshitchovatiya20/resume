import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String value = '';
  String selectcity = 'Select City';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Flutter"),
            actions: [
              PopupMenuButton(itemBuilder: (context){
                return[
                PopupMenuItem(child: Text("Settings"),onTap: (){},),
                PopupMenuItem(child: Text("Groups"),onTap: (){},),
                PopupMenuItem(child: Text("Chat"),onTap: (){},),
                PopupMenuItem(child: Text("Profile"),onTap: (){},),
                ];
              }),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
              ),
              ElevatedButton(onPressed: (){
                setState((){
                  Navigator.pushNamed(context, 'my');
                });
              }, child: Text("Next"),),
              SizedBox(height: 20,),
              DropdownButton(
                value: selectcity,
                  onChanged: (value){
                    setState((){
                      selectcity = value as String;
                    });
              },items: [
                DropdownMenuItem(child: Text("Select City"),value: 'Select City',),
                DropdownMenuItem(child: Text("surat"),value: 'surat',),
                DropdownMenuItem(child: Text("Goa"),value: 'Goa',),
                DropdownMenuItem(child: Text("Mumbai"),value: 'Mumbai',),
              ],),
            ],
          ),
        ),
    );
  }
}
