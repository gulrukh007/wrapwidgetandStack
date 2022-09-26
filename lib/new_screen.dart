import 'package:flutter/material.dart';
import 'package:wrapwidget/WrapAndStack.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     top: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            Positioned.fill(
                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9fxVbYRhx3aB3lr0_pZmqS0Oy6wl46C-M1l40FRdm&s",
                  fit: BoxFit.fitHeight,)),
            Positioned(
              top: 0,
              right: 0,
                left: 0,
              bottom: 0,
              child:  Text("Text"),),


          ], ),
        )
    );
  }
}
