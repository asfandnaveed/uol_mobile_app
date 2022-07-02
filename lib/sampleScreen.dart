import 'package:flutter/material.dart';

class UOL extends StatelessWidget {
  const UOL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: SafeArea(
          child: Container(
            child:Stack(
              children: [
                Image.asset('assets/images/shirt.png'),
                Image.asset('assets/images/perfume.png'),

                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  child: Text('STACK TEXT',
                    style: TextStyle(
                      fontSize: 40.0
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
