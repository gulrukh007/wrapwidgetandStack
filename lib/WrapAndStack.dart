import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap and Stack Widget"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.end,
        spacing: 10,
        runSpacing: 10,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,//property of clumn
            mainAxisSize: MainAxisSize.min,
            children: [
//---------------------STACK//First BOX STACK------------------------
              Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),color: Colors.grey[400]),
                  ),
                 Material(
                    color: Colors.deepOrangeAccent,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(100),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      child: Image.asset("assets/3.png"),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Positioned(
                   top: 200,
                    child: Chip(label: Text('Welcome to Junkyard', style: TextStyle(color: Colors.deepOrangeAccent),)),
                  ),

                ],

              ),
//Second BOX STACK-----------------------
              Stack(
                alignment:AlignmentDirectional.center,
                children: [
                   Container(
                    height: MediaQuery.of(context).size.height - 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(100)),color: Colors.orangeAccent[400]),
                  ),
                  Material(
                    color: Colors.grey,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(100),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      child: Image.asset("assets/2.png"),
                      height: 100,
                      width: 100,
                    ),
                  ),
                    Positioned(
                      top:50,
                    child: ElevatedButton(onPressed: (){},
                        child: Text('LOGIN to JUNKYARD'),
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
