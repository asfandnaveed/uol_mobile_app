import 'package:flutter/material.dart';



class KuchBh extends StatelessWidget {
  const KuchBh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KuchBhSTF(),
    );
  }
}


class KuchBhSTF extends StatefulWidget {
  const KuchBhSTF({Key? key}) : super(key: key);

  @override
  State<KuchBhSTF> createState() => _KuchBhSTFState();
}

class _KuchBhSTFState extends State<KuchBhSTF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      height: height *0.5,
      width: width*0.5,
      margin: EdgeInsets.only(left: width*0.5,top: height*0.245),
      color: Color(0xFF59F3A1),
    );
  }
}


