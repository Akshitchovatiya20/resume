import 'package:flutter/material.dart';
import 'package:resume/utils/constant/componets/size.dart';

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

   Color c1 = Colors.orange;
   Color c2 = Colors.orange;
   Color c3 = Colors.orange;
   Color c4 = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
              ),
              ElevatedButton(onPressed: (){
                setState((){
                  Navigator.pop(context);
                });
              }, child: Text("Back")),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState((){
                        Color c1 = Colors.red;
                        Color c2 = Colors.orange;
                        Color c3 = Colors.orange;
                        Color c4 = Colors.orange;
                      });
                    },
                      child: Button("1", Colors.red),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        Color c2 = Colors.red;
                        Color c1 = Colors.orange;
                        Color c3 = Colors.orange;
                        Color c4 = Colors.orange;
                      });
                    },
                      child: Button("2", Colors.orange),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        Color c3 = Colors.red;
                        Color c2 = Colors.orange;
                        Color c1 = Colors.orange;
                        Color c4 = Colors.orange;
                      });
                    },
                      child: Button("3", Colors.orange),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        Color c4 = Colors.red;
                        Color c2 = Colors.orange;
                        Color c3 = Colors.orange;
                        Color c1 = Colors.orange;
                      });
                    },
                      child: Button("4", Colors.orange),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
  Widget Button(String data,Color c1)
  {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          color: c1,
          child: Text("$data"),
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
