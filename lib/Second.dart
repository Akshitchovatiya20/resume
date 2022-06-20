import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/Modalclass.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtedu = TextEditingController();
  TextEditingController txtmob = TextEditingController();
  TextEditingController txtskil = TextEditingController();
  TextEditingController txtpskil = TextEditingController();
  TextEditingController txtexp = TextEditingController();
  TextEditingController txtimg = TextEditingController();
  TextEditingController txtlang = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtdet = TextEditingController();
  TextEditingController txtloc = TextEditingController();

  var txtkey = GlobalKey<FormState>();
  File f1 = File("");
  String photo1 = '';
  String photo2 = '';
  String photo3 = '';
  String selectcity = 'Select City';
  String select = 'Male';
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 300,
            centerTitle: true,
            title: Text("Resume"),
            actions: [
             PopupMenuButton(itemBuilder: (context){
               return[
                 PopupMenuItem(child: Text("Help"),onTap: (){},),
                 PopupMenuItem(child: Text("Groups"),onTap: (){},),
                 PopupMenuItem(child: Text("Account"),onTap: (){},),
                 PopupMenuItem(child: Text("Settings"),onTap: (){},),
                 PopupMenuItem(child: Text("Profile"),onTap: (){},),
               ];
             }),
              ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: ()async{
                      ImagePicker img = ImagePicker();
                      XFile? f2  = await img.pickImage(source: ImageSource.gallery);
                      setState((){
                        f1 = File(f2!.path);
                      },);
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundImage: FileImage(f1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: txtname,
                    decoration: InputDecoration(
                      focusColor: Colors.green,
                     fillColor: Colors.red,
                      hoverColor: Colors.orange,
                      prefixIcon: Icon(Icons.person),
                      labelText: "Personal Details",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Details";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: txtedu,
                    maxLines: 3,
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      fillColor: Colors.red,
                      prefixIcon: Icon(Icons.cast_for_education),
                      labelText: "Education",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Education";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtmob,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Mobile Number",
                    ),
                    //obscureText: true,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Mobile Number";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtloc,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on),
                      labelText: "Location",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Location";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtemail,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Gmail",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Gmail";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 3,
                    controller: txtskil,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.stars_outlined),
                      labelText: "Skills",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Skills";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 3,
                    controller: txtpskil,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.stars_outlined),
                      labelText: "Professional Skills",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Professional Skills";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 3,
                    controller: txtexp,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.grain_rounded),
                      labelText: "Experience",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Experience";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtdet,
                    maxLines: 15,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.details),
                      labelText: "Details",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Details";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
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
                  ),
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
                    DropdownMenuItem(child: Text("Delhi"),value: 'Delhi',),
                    DropdownMenuItem(child: Text("Amdavad"),value: 'Amdavad',),
                  ],
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    maxLines: 3,
                    controller: txtlang,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.laptop_windows_sharp),
                      labelText: "Langauge",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Langauges";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(
                      onPressed: () {
                        if (txtkey.currentState!.validate() == true) {
                         Modeldata data = Modeldata(name: txtname.text,
                         edu: txtedu.text,mno: txtmob.text,skil: txtskil.text,pskil: txtpskil.text,exp: txtexp.text,
                           gmail: txtemail.text,det: txtdet.text,lang: txtlang.text,loc: txtloc.text,f1:f1);
                          Navigator.pushNamed(context, 'rd', arguments: data);
                        }
                      },
                      child: Text("Next"),
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          txtkey.currentState!.reset();
                        }, child: Text("Reset"),
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(onPressed: (){
                          txtname.text = "Akshit";
                        }, child: Text("PreFilled"),
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                        ),
                        ElevatedButton(onPressed: (){
                        }, child: Text("Pdf"))
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}