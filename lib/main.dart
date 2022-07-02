import 'package:flutter/material.dart';
import 'package:uol_mobile_app/sampleScreen.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                print('HELLO UOL');
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> UOL() )
                );
              },
              child: Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 300),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 7.0,
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            Container(
              height: 700,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, index){
                  return Stack(
                    children: [
                      /// Card Widget
                      Container(
                        width: 280.0,
                        height: 400.0,
                        margin: EdgeInsets.only(left: 25.0),
                        child: Card(
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(270.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset('assets/images/shoes.png'),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 12.0,right: 12.0,top: 25.0,bottom: 10.0),
                                child: Column(

                                  children: [
                                    Container(
                                      child: Text('Rs. 7000 /-',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Text('4.7',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                color: Colors.yellow.shade800,
                                              ),
                                              Icon(Icons.star,
                                                color: Colors.yellow.shade800,),
                                              Icon(Icons.star,
                                                color: Colors.yellow.shade800,),
                                              Icon(Icons.star,
                                                color: Colors.yellow.shade800,),
                                              Icon(Icons.star_half,
                                                color: Colors.yellow.shade800,),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 2,
                                width: 240.0,
                                color: Colors.brown.withOpacity(0.5),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                width: 220,
                                height: 45,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    shadowColor: Colors.brown.withOpacity(0.8),
                                    elevation: 6.0,
                                    textStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  onPressed: (){},
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///Card Side Bar
                      Container(
                        height: 350.0,
                        width: 40.0,

                        decoration: BoxDecoration(
                          color: Colors.brown.shade400,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                        ),
                        margin: EdgeInsets.only(top: 20.0),
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Center(
                            child: Container(
                              child: Text('LEATHER SHOES',
                                style: TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ) ;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}









